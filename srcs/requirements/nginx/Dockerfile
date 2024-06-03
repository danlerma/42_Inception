
FROM debian:bullseye

RUN apt update && apt upgrade ; apt install -y nginx
RUN apt install -y openssl

COPY default /etc/nginx/sites-available/.
COPY nginx.conf /etc/nginx/.
COPY openssl.cnf /etc/ssl/.
#RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/ssl/private/server.key -out /etc/ssl/certs/server.crt -subj "/cn=dlerma-c.42.fr" -days 365
RUN openssl req -new -newkey rsa:2048 -x509 -sha256 -days 365 -nodes -out /etc/ssl/certs/server.crt -keyout /etc/ssl/private/server.key -subj "/cn=dlerma-c.42.fr"

CMD ["nginx", "-g", "daemon off;"]
