FROM ubuntu:16.04

RUN apt-get update && apt-get install -y nodejs npm
RUN apt-get install -y curl && npm cache clean -f && npm install -g n && n stable
RUN apt-get install -y net-tools git

WORKDIR /explorer
COPY . .

RUN npm install -g bower
# https://github.com/bower/bower/issues/1752#issuecomment-113455403
RUN echo '{ "allow_root": true }' > /root/.bowerrc
RUN bower install

EXPOSE 8000
CMD ["npm","start"]
