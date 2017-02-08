FROM node:6.9.4-alpine

# If you have native dependencies, you'll need extra tools
RUN apk add --no-cache --virtual --update make \
  gcc g++ python git bash && \
  rm -rf /tmp/* /var/cache/apk/*

# temp for editing purposes
RUN apk add --no-cache --update nano

RUN npm install -g ethereumjs-testrpc
RUN npm install -g embark

ENV NODE_PATH /usr/local/lib/node_modules

WORKDIR /opt/shared
