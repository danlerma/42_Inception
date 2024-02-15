#!/bin/bash
FROM debian:buster

RUN apt-get -y update; apt-get -y upgrade

# Instalar cosas
RUN apt-get install -y systemd
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN apt-get install -y ufw
RUN apt-get install -y iptables
RUN apt-get install -y mlocate && updatedb
RUN apt-get install -y net-tools
RUN apt-get install -y tcpdump
RUN service ssh start
RUN service ufw start
RUN ufw allow 22; ufw reload
#RUN iptables -A INPUT -p tcp --dport 22 -j ACCEPT

#RUN mkdir /root/.ssh
#RUN useradd dan
#RUN passwd -d dan
COPY conf/ssh/config /root/.ssh
COPY conf/hosts /etc/
