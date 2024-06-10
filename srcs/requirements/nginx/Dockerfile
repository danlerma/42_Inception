
FROM debian:bullseye

RUN apt update && apt upgrade ; apt install -y nginx
RUN apt install -y openssl

COPY ./tools/default /etc/nginx/sites-available/.
#COPY ./conf/nginx.conf /etc/nginx/.
#COPY openssl.cnf /etc/ssl/.
#RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt -subj "/cn=dlerma-c.42.fr" -days 365
RUN openssl req -new -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/server.crt -keyout /etc/ssl/private/server.key -subj "/CN=dlerma-c.42.fr"
#RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt -subj "/C=ES/O=42/OU=dlerma-c/CN=[dlerma-c.42.fr](http://dlerma-c.42.fr/)"
CMD ["nginx", "-g", "daemon off;"]
