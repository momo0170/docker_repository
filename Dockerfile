FROM ubuntu:14.04
MAINTAINER "LeechangHan <momo017097@gmail.com>"
LABEL "Purpose"="Webserver1 practice"
RUN apt-get update
RUN apt-get -y install apache2
ADD ./index.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo Hello >> index.html"]
EXPOSE 80
CMD apache -D FOREGROUND
