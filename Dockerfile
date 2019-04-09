FROM ubuntu
MAINTAINER Manojkumar Gogineni
RUN apt-get update -y 
RUN apt-get install apache2 -y 
EXPOSE 80
LABEL os=ubuntu
COPY ./index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"] 
