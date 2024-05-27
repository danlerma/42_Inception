
FROM debian:bullseye

RUN apt-get upgrade && apt-get update
RUN apt install -y php-fpm
RUN apt install -y php-mysqli
RUN apt install -y curl

COPY www.conf /etc/php/7.4/fpm/pool.d/.
RUN mkdir -p /var/run/php-fpm
RUN mkdir -p /run/php

COPY wordpress_install.sh .
RUN chmod +x wordpress_install.sh 
#COPY wp-config.php /var/www/html/.
#ENV PATH="${PATH}:"
# /lib/systemd/system/php7.4-fpm.service
CMD ["./wordpress_install.sh"]
