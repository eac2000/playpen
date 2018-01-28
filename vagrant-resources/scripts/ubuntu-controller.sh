#!/bin/bash


# install ansible
apt-get install --assume-yes software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update --assume-yes
apt-get install --assume-yes  ansible

