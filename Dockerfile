# HOW TO USE (no docker-compose here, run these commands manually):
#   Build the image:   docker build -t cheatsheet .
#   Run the container: docker run -d -p 8081:80 --name cheatsheet cheatsheet
#   Stop it:           docker stop cheatsheet
#   Remove it:         docker rm cheatsheet
#   Site runs at:      http://localhost:8081
#
# Note: unlike docker-compose, this COPIES files at build time.
# If you change a file, you need to rebuild: docker build -t cheatsheet .

FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80
