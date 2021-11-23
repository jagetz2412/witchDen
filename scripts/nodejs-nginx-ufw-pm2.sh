#!/usr/bin/env bash

echo "
----------------------
  UPDATE/UPGRADE 
----------------------
"

# update
sudo apt-get update

# upgrade
sudo apt-get upgrade


echo "
----------------------
  NODE & NPM
----------------------
"

# Nodejs 16 PPA download
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash - 

# install nodejs and npm
sudo apt-get install -y nodejs


echo "
----------------------
  PM2
----------------------
"

# install pm2 with npm
sudo npm install -g pm2

# set pm2 to start automatically on system startup
sudo pm2 startup systemd


echo "
----------------------
  NGINX
----------------------
"

# install nginx
sudo apt-get install -y nginx


echo "
----------------------
  UFW (FIREWALL)
----------------------
"

# allow ssh connections through firewall
sudo ufw allow OpenSSH

# allow http & https through firewall
sudo ufw allow 'Nginx Full'

# enable firewall
sudo ufw --force enable

