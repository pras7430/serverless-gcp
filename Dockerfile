FROM alpine:latest

RUN apk add --no-cache nodejs npm

COPY keyfile.json root/gcloud/keyfile.json

WORKDIR /app

COPY . /app

RUN npm install

RUN sls -v


EXPOSE 3000


CMD ["npm", "start"]
