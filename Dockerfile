FROM node:alpine

WORKDIR /app/medusa

COPY package.json .

RUN npm  install

COPY . .

EXPOSE 9000

EXPOSE 7001

CMD ["npx", "medusa", "develop"]
