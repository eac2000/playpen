#!/bin/bash

# fix VMs so that they use private ip via hosts file
vagrant halt
for vm in `VBoxManage list vms|grep ansible_env|sed -e 's/\"\(.*\)\".*/\1/'`; do echo "processing $vm ..."; VBoxManage modifyvm "$vm" --natdnshostresolver1 on; done
vagrant up

# sort ssh keys
vms=`VBoxManage list vms|grep ansible_env|sed -e 's/.*env_\(.*\)_[0-9]*_.*/\1/'`
for vm in $vms; do
        echo "processing box $vm ..."
	vagrant ssh $vm -c "chmod +x ~/.ssh/sort-ssh-keys; ~/.ssh/sort-ssh-keys;"
done
