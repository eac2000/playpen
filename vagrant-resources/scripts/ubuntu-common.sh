#!/bin/bash

#update Ubuntu with any patches
apt-get update

# tools
apt-get install -y nano git unzip telnet python


echo "192.168.10.2 app01" >> /etc/hosts
echo "192.168.10.3 app02" >> /etc/hosts
echo "192.168.10.4 db01" >> /etc/hosts
echo "192.168.10.5 lb01" >> /etc/hosts
echo "192.168.10.6 control" >> /etc/hosts



