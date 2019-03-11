FROM ubuntu:12.04
MAINTAINER Surya Stefanus

ENV DEBIAN_FRONTEND noninteractive

VOLUME ["/var/www"]

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-get update && \
    apt-get install -y \
      apache2 \
      curl \
      libcurl3 \
      libcurl3-dev \
      php5 \
      php5-cli \
      libapache2-mod-php5 \
      php5-gd \
      php5-json \
      php5-ldap \
      php5-mysql \
      php5-pgsql \
      php5-curl \
      php-pear \
      php5-dev \
      libmysqlclient-dev

COPY run /usr/local/bin/run
RUN chmod +x /usr/local/bin/run
RUN a2enmod rewrite

ENV DEBIAN_FRONTEND teletype

EXPOSE 80
CMD ["/usr/local/bin/run"]
