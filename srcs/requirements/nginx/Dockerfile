#!/bin/bash
FROM debian:buster

RUN apt-get -y update; apt-get -y upgrade

# Instalar cosas
RUN apt-get install -y systemd
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN apt-get install -y iptables
RUN apt-get install -y sudo
RUN apt-get install -y mlocate && updatedb
RUN service ssh start
RUN service ssh start
