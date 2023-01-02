FROM node:alpine
WORKDIR /node-app
ADD package.json /node-app/
RUN npm install & npm cache clean --force
COPY . /node-app/
EXPOSE 8081
CMD node index.js
