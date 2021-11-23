#!/usr/bin/env bash

# update
sudo apt-get update

# upgrade
sudo apt-get upgrade

# Node.js 16 PPA download
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - 

# install nodejs and npm
sudo apt-get install -y nodejs

# install pm2 with npm
sudo npm install -g pm2






################### Production #########################


# set pm2 to start automatically on system startup
sudo pm2 startup systemd

# install nginx
sudo apt-get install -y nginx

# allow ssh connections through firewall
sudo ufw allow OpenSSH

# allow http & https through firewall
sudo ufw allow 'Nginx Full'

# enable firewall
sudo ufw --force enable

