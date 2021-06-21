FROM node:0.10.32

WORKDIR /manage

ADD . /manage

RUN apt-get update \
 && apt install -y vim \
 && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash \
 &&  npm config set strict-ssl false

# RUN apt-get update \
#   && apt-get install -y ruby ruby-dev \
#   && gem install sass \
#   && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# RUN npm install

# EXPOSE 3000

# CMD ["node","/manage/server.js"]
