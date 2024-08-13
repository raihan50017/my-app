FROM node:lts-alpine
WORKDIR /khokon-portfolio
COPY package*.json ./
RUN npm install 
COPY . .
EXPOSE 3000
RUN chown -R node /khokon-portfolio
USER node
RUN npm run build
CMD ["npm", "start"]
