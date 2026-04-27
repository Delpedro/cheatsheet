# HOW TO USE:
#   Build the image:   docker build -t cheatsheet .
#   Run the container: docker run -d -p 3000:3000 --name cheatsheet cheatsheet
#   Stop it:           docker stop cheatsheet
#   Remove it:         docker rm cheatsheet
#   Site runs at:      http://localhost:3000
#
# Note: files are COPIED at build time.
# If you change a file, rebuild: docker build -t cheatsheet .

FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["node", "server.js"]
