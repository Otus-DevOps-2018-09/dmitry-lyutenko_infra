#!/bin/sh

# add key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

# add sources
sudo echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list

# get updates
sudo apt-get update

# install rudy and etc
sudo apt-get install -y ruby-full ruby-bundler build-essential mongodb-org

# enable autostart and starting MongoDB service
systemctl enable mongod.service 
systemctl start mongod.service 

# download app source
git clone -b monolith https://github.com/express42/reddit.git

# install dependies
cd reddit && bundle install

# run app in daemon mode
puma -d
