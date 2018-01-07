#!/bin/bash

# fix VMs so that they use private ip via hosts file
vagrant halt
for vm in `VBoxManage list vms|grep ansible_env|sed -e 's/\"\(.*\)\".*/\1/'`; do echo $vm; VBoxManage modifyvm "$vm" --natdnshostresolver1 on; done
vagrant up
