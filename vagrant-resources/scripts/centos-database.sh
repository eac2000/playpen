#!/bin/bash


# MySQL
yum install -y mysql mysql-server msql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";


