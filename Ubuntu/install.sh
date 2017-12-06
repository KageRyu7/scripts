#!/bin/bash
sudo chmod -R +777 /usr # This is bad but necessary =/
pkexec chmod go-w /usr/lib/sudo/sudoers.so
sudo apt-get update
sudo apt-get install -y default-jre
sudo apt-get install -y git
sudo apt-get install -y curl

# Get and Update npm/nodejs
sudo apt-get install -y npm
sudo apt-get install -y build-essential checkinstall libssl-dev
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

sudo npm install -g gulp-cli
sudo npm install -g gulp
sudo npm install -g bower
sudo npm install -g polyserve
npm install -g web-component-tester