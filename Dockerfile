FROM debian:wheezy

COPY config/php /etc/apt/preferences.d/php
COPY config/sources.list /etc/apt/

RUN apt-get update && \
    apt-get install -y libapache2-mod-php5 php-apc php-pear php5 php5-cli php5-common php5-curl php5-gd php5-mcrypt php5-mysql && \
    apt-get autoremove -y

EXPOSE 80
