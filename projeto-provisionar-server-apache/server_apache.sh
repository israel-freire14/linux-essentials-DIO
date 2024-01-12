#!/bin/bash

echo "Atualizando o servidor..."

apt-get  update 
apt-get upgrade -y

echo "Intalando Apache e Unzip."

apt-get install apache2 -y
apt-get install unzip -y

echo "Modificando página padrão do Apache..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip 
unzip main.zip
cd linux-site-dio-main
cp -R *  /var/www/html/