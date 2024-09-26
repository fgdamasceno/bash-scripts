#!/bin/bash

#===================================================================================
# DIO - FORMAÇÃO LINUX FUNDAMENTALS
# Desafio de código
#
# DESCRIÇÃO:
# Remove as mudanças realizadas pelo Shell Script 'usersetup.sh'
#
# Author: F. G. Damasceno
# Date: September 26, 2024
#===================================================================================

echo REMOVENDO DIRETORIOS, USUARIOS E GRUPOS

echo REMOVENDO DIRETORIOS /publico /adm /ven /sec
rm -rf /publico /adm /ven /sec

echo REMOVENDO USUARIOS adm
adm=("carlos" "maria" "joao")
for nome in "${adm[@]}"
do
    userdel -rf $nome
done

echo REMOVENDO USUARIOS ven
ven=("debora" "sebastiana" "roberto")
for nome in "${ven[@]}"
do
    userdel -rf $nome
done

echo REMOVENDO USUARIOS sec
sec=("josefina" "amanda" "rogerio")
for nome in "${sec[@]}"
do
    userdel -rf $nome
done

echo REMOVENDO GRUPOS GRP_ADM GRP_VEN GRP_SEC
grupos=("GRP_ADM" "GRP_VEN" "GRP_SEC")
for grupo in "${groupos[@]}"
do
    rmdir $grupo
done

echo REMOÇÃO DE DIRETORIOS, USUARIOS E GRUPOS FINALIZADA COM SUCESSO!
date
echo ""
