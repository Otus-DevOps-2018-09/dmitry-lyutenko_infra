#!/bin/sh
# add key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

# add sources
sudo echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list

# update
sudo apt-get update

# install MongoDB
sudo apt-get install -y mongodb-org

# enable autostart and starting MongoDB service
sudo systemctl enable mongod.service 
sudo systemctl start mongod.service 
