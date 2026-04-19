# Docker — Cheatsheet Site

Run this site locally using Docker.

---

## First time (already done)

docker build -t cheatsheet-site .
docker run -d -p 8081:80 --name cheatsheet-container cheatsheet-site

---

## Start the site

docker start cheatsheet-container

Open: http://localhost:8081

---

## Stop the site

docker stop cheatsheet-container

---

## After making changes (rebuild)

docker build -t cheatsheet-site .
docker rm -f cheatsheet-container
docker run -d -p 8081:80 --name cheatsheet-container cheatsheet-site

---

## Quick mental model

Image = saved version of your app  
Container = running version  
Build = update the image  
Run = start it  
Stop = turn it off