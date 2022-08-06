#!/bin/bash

echo "Instalando servidor web..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y

echo "Instalando descompactador de arquivos..."

apt-get install unzip -y

echo "Criando diretório temporário..."

mkdir -p /disk2/tmp
cd /disk2/tmp

echo "Baixando e copiando os arquivos da pagina..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip -o main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
cd /var/www/html/

echo "Instalação realizada com sucesso!"


