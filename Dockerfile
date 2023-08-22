FROM node:18-alpine

WORKDIR /app
ENV NODE_ENV production
COPY package*.json ./
RUN npm i
COPY . .

CMD ["npm", "start"]
