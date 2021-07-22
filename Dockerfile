FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copies
# where available (nmp@5+)
COPY package*.json ./

RUN npm install
# If you are building your code fro productoin
# RUN npm ci --only=production

COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]