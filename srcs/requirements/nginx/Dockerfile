#!/bin/bash
FROM debian:buster

RUN apt-get -y update; apt-get -y upgrade

# Instalar cosas
RUN apt-get install -y systemd
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN apt-get install -y iptables
RUN apt-get install -y mlocate && updatedb
RUN apt-get install -y net-tools
RUN service ssh start
RUN service ssh enable
#Creamos archivo de network
#RUN cd /etc/sysconfig && mkdir network-scripts

#Metemos archivos
COPY conf/check-config.sh /root
COPY conf/iptables /etc/sysconfig/
COPY conf/hosts /etc/
#COPY conf/ifcfg-eth0 /etc/sysconfig/network-scripts/

RUN apt-get install -y ufw
RUN apt-get install -y tcpdump
RUN service ufw start
#RUN ufw enable
#RUN ufw start
RUN ufw allow 22; ufw reload
#RUN iptables -t nat -A INPUT -p tcp --dport 22 -j ACCEPT

#RUN mkdir .ssh
#RUN useradd dan
#RUN passwd -d dan
