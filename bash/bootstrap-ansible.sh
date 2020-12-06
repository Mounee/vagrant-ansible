#!/usr/bin/env bash

sudo su
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible
mkdir /home/vagrant/server1 /home/vagrant/server2 /home/vagrant/server3
cp /vagrant/.vagrant/machines/server1/virtualbox/private_key /home/vagrant/server1/private_key
cp /vagrant/.vagrant/machines/server2/virtualbox/private_key /home/vagrant/server2/private_key
cp /vagrant/.vagrant/machines/server3/virtualbox/private_key /home/vagrant/server3/private_key
chmod 400 /home/vagrant/server1/private_key /home/vagrant/server2/private_key /home/vagrant/server3/private_key
rm /etc/ansible/hosts
cp /vagrant/bash/hosts /etc/ansible/hosts