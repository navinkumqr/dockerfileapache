FROM ubuntu
MAINTAINER navin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y apache2
RUN mkdir /var/run/apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2
EXPOSE 80
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
