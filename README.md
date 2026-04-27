# cheatsheet

Pedro's dev cheatsheet — dynamic, editable, runs locally.

## Run

```
npm install
npm start
```

Opens at **http://localhost:3000**

## Features

- Search any command (press `/` to focus)
- Add / edit / delete commands and sections in the browser
- All data stored in `data/commands.json` — editable by hand too
- Sidebar navigation with tag filtering

## Docker

```
docker build -t cheatsheet .
docker run -d -p 3000:3000 --name cheatsheet cheatsheet
```
