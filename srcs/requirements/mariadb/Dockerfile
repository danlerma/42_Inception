
FROM debian:bullseye

RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y mariadb-server

COPY 50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY init.sql /etc/mysql/.

RUN mkdir -p /run/mysqld

COPY create_db.sh .
RUN chmod +x create_db.sh

CMD ["./create_db.sh"]