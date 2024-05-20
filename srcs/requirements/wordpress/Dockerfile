
FROM debian:bullseye

RUN apt-get upgrade && apt-get update
RUN apt install -y php-fpm

COPY www.conf /etc/php/7.4/fpm/pool.d/.
RUN mkdir -p /var/run/php-fpm
RUN mkdir -p /run/php

#ENV PATH="${PATH}:"
# /lib/systemd/system/php7.4-fpm.service
CMD ["php-fpm7.4", "-F"]
#CMD ["tail", "-f"]