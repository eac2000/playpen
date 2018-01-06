#!/bin/bash

#update CentOS with any patches
yum update -y --exclude=kernel

# tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# php
yum install -y php php-cli php-common php-devel php-mysql

# MySQL
yum install -y mysql mysql-server msql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://raw.githubusercontent.com/eac2000/vagrant/master/files/index.html
sudo -u vagrant wget -q https://raw.githubusercontent.com/eac2000/vagrant/master/files/info.php


service httpd restart
