#!/bin/bash

echo 'Starting Provision: web'$1
sudo apt update
sudo apt install -y nginx
echo "<h1>Machine: web"$1 "</h1>" > /var/www/html/index.html
sudo service nginx start
echo 'Provision web'$1 'completed'