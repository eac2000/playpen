#!/bin/bash

#hostEntries="app01_app02 control db01 lb01"
#app01_app02_ip=192.168.10.5
#control_ip=192.168.10.2
#db01_ip=192.168.10.4
#lb01_ip=192.168.10.3 

#rsaSourceDir="."
#rsaTargetDir="~/.ssh"
#rsaFiles="id_rsa id_rsa.pub"

#sshKey=""

#getSshKey() {
#	return `cat $rsaSourceDir/id_rsa.pub`
#}

#createSshKey() {
#	ssh-keygen -t rsa -b 4096 -C "me@myemail.com" -f $rsaSourceDir/id_rsa -q -P ""
#	sshKey=`getSshKey`
#}

#doHostEntries() {
#	for hostEntry in $hostEntries; do
#		echo "Processing $hostEntry ..."
#		serveripname=${hostEntry}_ip
#		serverip=${!serveripname}
#		echo ${!serveripname}
#      		# add host entries
#		"$serverip $hostEntry" >> /etc/hosts
#	done
#}

#copyKeys() {
#	for hostEntry in $hostEntries; do
#      	# copy ssh keys
#		if [[ ! $hostEntry == "control" ]]; then
#			for file in $rsaFiles; do
#				scp $rsaSourceDir/$file $hostEntry:$rsaTargetDir/$file
#			done
#			echo $key >> $rsaTargetDir/authorized_keys
#		fi
#	done
#}

#createSshKey
#doHostEntries
#copyKeys

# install ansible
apt-get install --assume-yes software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update --assume-yes
apt-get install --assume-yes  ansible

