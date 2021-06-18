FROM node:10

RUN apt-get update \
  && apt-get install -y ruby ruby-dev \
  && gem install sass

ADD . /manage

WORKDIR /manage

# RUN npm install

# EXPOSE 3000

# CMD ["node","/manage/server.js"]
