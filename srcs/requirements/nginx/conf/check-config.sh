#!/bin/bash

echo "------------Lista de servicios activos"

service --status-all

echo "------------iptables"

iptables -L
iptables -L -t nat

echo "------------comprobar archivo ifconfeth0"

cat /etc/sysconfig/network-scripts/ifcfg-eth0
