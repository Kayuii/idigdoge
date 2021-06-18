FROM node:latest

RUN apt-get update \
  && apt-get install -y ruby ruby-dev \
  && gem install sass \
  && npm install -g npm@7.18.1

ADD . /manage

WORKDIR /manage

# RUN npm install

# EXPOSE 3000

# CMD ["node","/manage/server.js"]
