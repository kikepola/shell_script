#!/bin/bash
#nome: Henrique Ladeira Rosa Poladian
#ra: 16.00026-9
main(){
    #menu da calculadora
    echo "==============="
    echo "| calculadora  |"
    echo "==============="
    echo "|== + = - = /==|"
    echo "|== * = sqrt ==|"
    echo "==============="

    echo "+ = 1"
    echo "- = 2"
    echo "* = 3"
    echo "/ = 4"
    echo "sair = 5"
    echo "==============="
    #escolher opção desejada
    echo "Escolha sua opção :"
    read opcao
    #manter a calculadora em loop até opcao ser sair
    while [ $opcao != 5 ]
    do
        case $opcao in
        "1")
        #chama função de soma
            somar
        ;;
        "2")
        #chama função de subtração
            subtrair
        ;;
        "3")
        #chama função de multiplicação
            multiplicar
        ;;
        "4")
        #chama função de dividir
            dividir
        ;;
        esac
        #pedir novamente a opção desejada pelo usuario
        echo "Escolha sua opção :"
        read opcao
    done
    }
#função de soma
somar(){
    #numero de numeros a serem manipulados
    echo "Digite o numero de valores a serem somados: "
    read num
    num=$((  num+1 ))
    i=1
    resp=0
    #estrutura de loop para somar os valores
    while [ $i != $num ]
    do
        echo "Digite "$i" numero:"
        read a
        resp=$(( resp+$a ))
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "=  $resp  ="
    echo "======="
}
#função de subtração
subtrair(){
   #numero de numeros a serem manipulados
    echo "Digite o numero de valores a serem subtraidos: "
    read num
    num=$((  num+1 ))
    i=1
    resp=0
    #estrutura de loop para subtrair os valores
    echo "Digite "$i" numero:"
    read a
    resp=$a
    i=$(( i+1))
    while [ $i != $num ]
    do
        echo "Digite "$i" numero:"
        read a
        resp=$(( resp-$a ))
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "=  $resp  ="
    echo "======="
}
#função de multiplicação
multiplicar(){
    #numero de numeros a serem manipulados
    echo "Digite o numero de valores a serem multiplicados: "
    read num
    num=$((  num+1 ))
    i=1
    echo "Digite "$i" numero:"
    read a
    resp=$a
    i=$(( i+1))
    #estrutura de loop para multiplicar os valores
    while [ $i != $num ]
    do
        echo "Digite "$i" numero:"
        read a
        resp=$(( resp*$a ))
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "=  $resp  ="
    echo "======="
}
#função de divisão
dividir(){
    #numero de numeros a serem manipulados
    echo "Digite o numero de valores a serem divididos: "
    read num
    num=$((  num+1 ))
    i=1
    echo "Digite "$i" numero:"
    read a
    resp=$a
    i=$(( i+1))
    #estrutura de loop para dividir os valores
    while [ $i != $num ]
    do
        echo "Digite "$i" numero:"
        read a
        resp=$(( resp/$a ))
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "=  $resp  ="
    echo "======="
}

#rodar função main
main