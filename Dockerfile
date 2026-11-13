# Written by blitz.cloud for this project. It is yours now: blitz.cloud
# builds from it as it is, and you can change it like any other file.
FROM node:22-alpine

WORKDIR /app

RUN apk add --no-cache git

COPY package.json ./

RUN npm install --omit=dev

COPY index.js ./

RUN mkdir -p /app/auth_info_baileys && chown -R 1000:1000 /app

USER node

CMD ["node", "index.js"]
