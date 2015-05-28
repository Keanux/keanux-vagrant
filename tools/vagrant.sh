#!/bin/bash

sudo su

curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -

apt-get install -y build-essential libssl-dev python-software-properties
apt-get install -y vim git curl g++

MYSQL_PASSWORD="password"
echo "mysql-server mysql-server/root_password password $MYSQL_PASSWORD" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password $MYSQL_PASSWORD" | debconf-set-selections
apt-get -y install mysql-server

sudo apt-get install -y nodejs

npm install -g supervisor

cd /home/vagrant/keanux
npm install