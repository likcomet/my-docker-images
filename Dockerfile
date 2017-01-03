FROM busybox:latest
MAINTAINER seed <seed@neople.co.kr>
RUN mkdir -p /var/lib/mysql / && mkdir -p /var/www/html
VOLUME ["/var/lib/mysql","/var/www/html"]
