#!/bin/bash
sudo apt-get -y install mcedit
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull nginx
sudo docker run --name docker-nginx -p 80:80 nginx
sudo docker rm docker-nginx
sudo docker run --name docker-nginx -p 80:80 -d nginx
sudo docker stop docker-nginx
sudo docker rm docker-nginx
mkdir -p ~/docker-nginx/html
sudo docker run --name docker-nginx -p 80:80 -d -v ~/docker-nginx/html:/usr/share/nginx/html nginx


