# HOW TO USE:
#   Build:  docker build -t cheatsheet .
#   Run:    docker run -d -p 3000:80 --name cheatsheet cheatsheet
#   Stop:   docker stop cheatsheet
#   Remove: docker rm cheatsheet
#   Open:   http://localhost:3000

FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 80
