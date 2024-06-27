FROM node:18-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./
COPY package-lock.json ./


RUN npm install

COPY . .

RUN npx prisma generate


EXPOSE 3001

# CMD ["npm", "run", "start:dev"]