FROM nginx:alpine'
MAINTAINER justinglock40@gmail.com

RUN apk update && apk upgrade && apk add --no-cache npm

COPY . /usr/share/nginx/html

RUN rm -rf /usr/share/nginx/html/node_modules
RUN cd /usr/share/nginx/html && npm install && npm install ping.js