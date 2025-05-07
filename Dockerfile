FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install nginx

COPY content/index.html /var/www/html/index.html
COPY content/lynis_report.html /var/www/html/lynis_report.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
