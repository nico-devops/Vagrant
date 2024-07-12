#!/bin/bash

echo 'Starting Provision: lb'
sudo apt update
sudo apt install -y nginx
sudo service nginx stop
sudo rm -rf /etc/nginx/sites-enabled/default
sudo touch -rf /etc/nginx/sites-enabled/default
echo "upstream testapp {
    server 10.0.0.11;
    server 10.0.0.12;
}

server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /usr/share/nginx/html;
    index index.html index.htm;

    server_name localhost;

    location / {
        proxy_pass http://testapp;
    }
}" >> /etc/nginx/sites-enabled/default
sudo service nginx start
echo "Machine: LB" > /var/www/html/index.html
echo 'provision lb complete'