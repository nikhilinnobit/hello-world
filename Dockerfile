FROM node:14
WORKDIR /app
COPY package.* /app
RUN npm install
COPY . .
CMD node app.js
EXPOSE 3001
##sdgitqw