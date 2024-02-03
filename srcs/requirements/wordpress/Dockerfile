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


COPY conf/hosts /etc/
