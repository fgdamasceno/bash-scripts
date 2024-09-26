#!/bin/bash

# =======================================================================================
# DIO - FORMAÇÃO LINUX FUNDAMENTALS
# Desafio de código
#
# - DEFINIÇÕES
# * Excluir diretórios, arquivo, grupos e usuários criados anteriormente; X
# * Todo provisionamento deve ser feito em um arquivo do tipo Bash Script; X
# * O dono de todos os diretórios criados será o usuário root; X
# * Todos os usuários terão permissão total dentro do diretório "publico"; X
# * Os usuários de cada grupo terão permissão totol dentro de seu respectivo diretório; X
# * Os usuários não poderão ter permissão de leitura, escrita e execução 
#   em diretórios de departamentos que eles não pertencem; X
# * Subir arquivo de script criado para sua conta no GitHub;
#
# Author: F. G. Damasceno
# Date: September 25, 2024
# =======================================================================================

# CRIANDO DIRETORIOS /publico /adm /ven /sec
echo "CRIANDO PASTAS /publico /adm, /ven e /sec..."
mkdir /publico /adm /ven /sec

# TORNANDO O DIRETÓRIO '/publico' ACESSIVEL PARA TODOS OS USUARIOS
chown 777 /publico

# CRIANDO GRUPOS (GRP_ADM, GRP_VEN, GRP_SEC)
echo "CRIANDO GRUPOS ADM, VEN E SEC..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# CRIANDO USUARIOS E DEFININDO SEUS GRUPOS E PERMISSÕES
# [ADM: carlos, maria, joao]
# [VEN: debora, sebastiana, roberto]
# [SEC: josefina, amanda, rogerio]

# ADM
adm=("carlos" "maria" "joao")
echo "CRIANDO USUARIOS ADM E DEFININDO SUAS PERMISSÕES..."
for nome in "${adm[@]}"
do
    useradd $nome -c "${nome} Silva" -s /bin/bash -m -p $(openssl passwd crypt ${nome}123) -G GRP_ADM
done
chmod 770 /adm


# VEN
ven=("debora" "sebastiana" "roberto")
echo "CRIANDO USUARIOS VEN E DEFININDO SUAS PERMISSÕES..."
for nome in "${ven[@]}"
do
    useradd $nome -c "${nome} Silva" -s /bin/bash -m -p $(openssl passwd crypt ${nome}123) -G GRP_VEN
done
chmod 770 /ven


# SEC
sec=("josefina" "amanda" "rogerio")
echo "CRIANDO USUARIOS SEC E DEFININDO SUAS PERMISSÕES..."
for nome in "${sec[@]}"
do
    useradd $nome -c "${nome} Silva" -s /bin/bash -m -p $(openssl passwd crypt ${nome}123) -G GRP_SEC
done
chmod 770 /sec

echo "FIM DO PROGRAMA!"
