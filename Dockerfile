FROM node:10.20

WORKDIR /manage

RUN apt-get update \
  && apt-get install -y ruby ruby-dev \
  && gem install sass \
  && npm install

ADD . /manage

# RUN npm install

# EXPOSE 3000

# CMD ["node","/manage/server.js"]
