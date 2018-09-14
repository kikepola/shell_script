#!/bin/bash
main(){
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
    echo "Escolha sua opção :"
    read opcao
    while [ $opcao != 5 ]
    do
        case $opcao in
        "1")
            somar
        ;;
        "2")
            subtrair
        ;;
        "3")
            multiplicar
        ;;
        "4")
            dividir
        ;;
        esac
        echo "Escolha sua opção :"
        read opcao
    done
    }

somar(){
    echo "Digite primeiro numero:"
    read a
    echo "Digite segundo numero:"
    read b
    resp=$(($a + $b))
    echo "======="
    echo "=  $resp  ="
    echo "======="
}

subtrair(){
    echo "Digite primeiro numero:"
    read a
    echo "Digite segundo numero:"
    read b
    resp=$(($a - $b))
    echo "======="
    echo "=  $resp  ="
    echo "======="
}

multiplicar(){
    echo "Digite primeiro numero:"
    read a
    echo "Digite segundo numero:"
    read b
    resp=$(($a * $b))
    echo "======="
    echo "=  $resp  ="
    echo "======="
}

dividir(){
    echo "Digite primeiro numero:"
    read a
    echo "Digite segundo numero:"
    read b
    resp=$(($a / $b))
    echo "======="
    echo "=  $resp  ="
    echo "======="
}


main