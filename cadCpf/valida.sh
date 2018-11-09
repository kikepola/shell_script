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
echo $cpf > teste.cad


cpfState=`python2 teste.py < teste.cad`

if [ $cpfState = "True" ]
then
    ./cadv2.sh
    rm teste.cad
    clear
else
    ./valida.sh
fi
#./cpf.sh $cpf


