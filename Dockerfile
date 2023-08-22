FROM node:16.15.1-alpine

WORKDIR /app
ENV NODE_ENV production
COPY package*.json ./
RUN npm ci
COPY . .

CMD ["npm", "start"]
