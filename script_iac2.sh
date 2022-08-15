#!/bin/bash

echo "Atualizando e instalando Apache2 e Unzip no servidor..."

apt-get update
apt-get upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Baixando e copiando os aruivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /tmp/linux-site-dio-main
cp -R  *  /var/www/html/

echo "Todas operações foram realizadas"