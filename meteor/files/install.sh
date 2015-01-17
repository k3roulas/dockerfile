#!/bin/bash

# Install script for Meteor on Ubuntu 14

printf "\n [*] Installing Mongodb packages\n"
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
apt-get update
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
apt-get update
apt-get install -y mongodb-org

mkdir -p /data/db/
sudo chown `id -u` /data/db

echo "export LC_ALL=C" >> /root/.bashrc

curl https://install.meteor.com/ | sh

printf "\n [*] Install complete!\n"
