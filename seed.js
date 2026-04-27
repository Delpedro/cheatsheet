const SUPABASE_URL = 'https://bbkiwzbcxmlorcdhcwcc.supabase.co';
const SUPABASE_KEY = 'sb_publishable_HZp8PpAz8eKlagAmBmV3kQ_SPO6x_KU';
const data = require('./data/commands.json');

const headers = {
  'apikey': SUPABASE_KEY,
  'Authorization': `Bearer ${SUPABASE_KEY}`,
  'Content-Type': 'application/json',
  'Prefer': 'return=minimal',
};

async function post(table, body) {
  const res = await fetch(`${SUPABASE_URL}/rest/v1/${table}`, {
    method: 'POST', headers, body: JSON.stringify(body),
  });
  if (!res.ok) throw new Error(`${table}: ${await res.text()}`);
}

async function seed() {
  for (let i = 0; i < data.sections.length; i++) {
    const sec = data.sections[i];
    await post('sections', {
      id: sec.id, title: sec.title, subtitle: sec.subtitle || '',
      tag: sec.tag, color: sec.color, sort_order: i,
    });
    await post('items', sec.items.map((item, j) => ({
      id: item.id, section_id: sec.id, cmd: item.cmd,
      description: item.desc, type: item.type, sort_order: j,
    })));
    console.log(`✓ ${sec.title}`);
  }
  console.log('Seed complete.');
}

seed().catch(console.error);
