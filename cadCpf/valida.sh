#/bin/bash
#Autor: João Carlos
#26-10-2018
#IMT

clear

echo   "8888888888     888888888888      88888888888  "
echo   "88             88        88      88           "   
echo   "88             88        88      88           "   
echo   "88             888888888888      88888888888  "   
echo   "88             88                88           "
echo   "8888888888     88                88           "
echo
echo
echo
sleep 1
clear
echo   "8888888888     888888888888      88888888888     88         88   88888"
echo   "88             88        88      88               88       88   88  88"
echo   "88             88        88      88                88     88   88   88"
echo   "88             888888888888      88888888888        88   88         88"
echo   "88             88                88                  88 88          88"
echo   "8888888888     88                88            88     888           88"
echo
echo
echo

echo "entre CPF"
read cpf
echo $cpf >> arquivo.cad
./cpf.sh $cpf

