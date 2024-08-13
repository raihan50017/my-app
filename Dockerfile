FROM node:lts-alpine
WORKDIR /my-app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
RUN chown -R node /my-app
USER node
RUN npm run build
CMD ["npm", "start"]