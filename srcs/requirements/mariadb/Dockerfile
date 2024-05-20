
FROM debian:bullseye

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y mariadb-server

CMD ["mysqld_safe"]