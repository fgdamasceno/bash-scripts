#!/bin/bash

#===================================================================================
# DIO - FORMAÇÃO LINUX FUNDAMENTALS
# Desafio de código
#
# - DEFINIÇÕES
# * Atualizar o servidor;
# * Instalar o apache2;
# * Instalar o unzip;
# * Baixar a aplicação disponível no endereço:
#       https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
# * Copiar os arquivos da aplicação no diretório padrão do apache;
#       /var/www/html/
# * Subir arquivo de script para um repositório no GitHub;
#
# Author: F. G. Damasceno
# Date: October 1, 2024
#===================================================================================

echo "ATUALIZANDO O SERVIDOR..."
apt-get update
apt-get upgrade -y

echo "INSTALANDO APLICAÇÕES NECESSÁRIAS (apache2 e unzip)..."
apt-get install apache2 unzip -y

systemctl restart apache2

cd /tmp

echo "BAIXANDO APLICAÇÃO WEB..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

mv -f linux-site-dio-main/* /var/www/html/

echo "PROGRAMA FINALIZADO!"
date
echo ""
