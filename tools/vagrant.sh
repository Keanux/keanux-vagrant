#!/bin/bash

sudo su

# Add MongoDB to apt
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

apt-get install -y build-essential libssl-dev python-software-properties
apt-get install -y vim git curl g++
apt-get install -y nodejs
apt-get install -y mongodb-org

cd /home/vagrant/keanux-personal

# update commit
git pull origin master

npm install -g supervisor
npm install