#!/bin/bash

# ssh-keygen -t rsa -b 4096 -C "me@myemail.com" -f $rsaSourceDir/id_rsa -q -P ""
#	sshKey=`getSshKey`

for user in `ls -1 /home/`; do
  echo `cat /home/$user/.ssh/id_rsa.pub` >> /home/$user/.ssh/authorized_keys
done


