FROM node:22

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose Port 
EXPOSE  3000

# Start the app
CMD [ "npm", "start" ]
 