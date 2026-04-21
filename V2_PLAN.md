# 🧾 Cheatsheet Project — Current State & V2 Plan

## 📌 What this is

Simple static HTML cheat sheet site.

**Purpose:**

* Fast command lookup (Git, Docker, npm, terminal, setup flows)
* Zero friction, instant reference

**Target feel:**

* Slick
* Minimal
* Fast
* No fluff

---

## ⚙️ Current Setup

* Single `index.html`
* Runs via Docker (nginx)

  * `http://localhost:8081`
* No npm required

**Repo:**

* `.gitignore` excludes `node_modules`
* Clean and lightweight

---

## ❌ Current Problems

### UI / Design

* Feels cluttered
* Looks like a template, not a product
* Not “premium” or slick

### Header

* Bad copy ("what the fuck do I run now")
* Useless badges (visual noise)

### Layout

* Poor hierarchy
* Everything has equal weight
* Hard to scan quickly

### Colour

* Too much neon green
* Not controlled or intentional

### Overall

* Feels like a **data dump**, not a tool

---

## 🎯 Goal for V2

### Design Direction

* Minimal
* Clean
* Premium dev-tool aesthetic

**Inspiration:**

* Linear
* Vercel
* Raycast

---

## 🧠 Core Principles

* Remove > Add
* No filler UI
* No gimmicks
* No cringe copy
* Every element must justify its existence
* Spacing > decoration
* Clear hierarchy > visual noise

---

## 🏗️ What Needs to Change

### Structure

* Strong visual hierarchy
* Better grouping of content
* Easier scanning

### Layout

* More spacing
* Less density
* Clear sections

### Typography

* Cleaner
* More readable
* Better contrast between levels

### Colour

* Reduce green usage
* Use it only as an accent
* More neutral base (dark + subtle tones)

---

## 🚫 What NOT to Do

* No unnecessary npm setup
* No dependency bloat
* No redesign while tired
* No patching the current UI
* No adding features to fix design problems

---

## ✅ Current Status

* Works ✅
* Runs in Docker ✅
* Repo is clean ✅
* UI is NOT acceptable ❌

---

## 🔜 Next Step (Future Chat Prompt)

> Help me redesign this cheat sheet UI from scratch — minimal, premium, dev-tool style.
> Start with layout and hierarchy first, not code.

---

## ⚠️ Reminder

Do not iterate on current UI.

Rebuild properly when fresh.
