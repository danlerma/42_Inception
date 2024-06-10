
FROM debian:bullseye

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./tools/init.sql /etc/mysql/.

RUN mkdir -p /run/mysqld

COPY ./tools/create_db.sh .
RUN chmod +x create_db.sh

# VOLUME mariadb /var/lib/mysql

CMD ["./create_db.sh"]