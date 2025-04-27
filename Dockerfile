FROM alpine:latest

RUN apk -y update && apk -y install nginx

COPY content/index.html /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
