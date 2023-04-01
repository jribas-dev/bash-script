#!/bin/bash

echo "Instalação: Apache 2 httpd..."
apt-get update
apt-get upgrade -y
apt-get install apache2 unzip -y

echo "Baixando e ativando site na pasta /var/www/html..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html