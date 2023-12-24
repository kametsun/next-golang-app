# base image
FROM node:20.10.0-alpine3.19
# working directoy
WORKDIR /app

COPY . .

RUN npm i

RUN npm run build

EXPOSE 3000

CMD [ "npm", "run", "dev" ]