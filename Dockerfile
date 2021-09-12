FROM nginx:alpine'
MAINTAINER justinglock40@gmail.com

RUN apk update && apk upgrade

COPY . /usr/share/nginx/html