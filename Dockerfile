# Base Image

FROM node:lts-alpine3.17

# Set the working Directory

WORKDIR /app

# Copy Package.json

COPY package*.json .

# Install Dependencies

RUN npm install

# Copy Source code to the container

COPY . .

# Expose Container port

EXPOSE 3000

#Entry for CMD

CMD [ "node", "server.js" ]
