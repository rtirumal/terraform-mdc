FROM centos:latest
MAINTAINER abc@gmail.com
RUN yum install httpd -y
RUN echo "Hello World">/var/www/html/index.html
COPY systemctl.py /usr/bin/systemctl
CMD systemctl start httpd
EXPOSE 80 
