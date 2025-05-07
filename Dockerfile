FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install nginx

COPY content/*.html /var/www/html/*.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
