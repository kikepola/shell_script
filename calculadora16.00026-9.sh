#!/bin/bash
#nome: Henrique Ladeira Rosa Poladian
#ra: 16.00026-9
main(){
    #menu da calculadora
    echo "================"
    echo "| calculadora  |"
    echo "================"
    echo "| + |  - |  /  |"
    echo "________________"
    echo "| * |sqrt| exit|"
    echo "================"

    echo "+ = 1"
    echo "- = 2"
    echo "* = 3"
    echo "/ = 4"
    echo "sqrt = 5"
    echo "x² = 6"
    echo "sair = 7"
    echo "==============="
    #escolher opção desejada
    echo "Escolha sua opção :"
    read opcao
    #manter a calculadora em loop até opcao ser sair
    while [ $opcao != 7 ]
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
        "5")
        #chama função de raiz
            raiz
        ;;
        "6")
        #chama função de quadrado
            quadrado
        ;;
        esac

        #Verificar se opção é valida
        if [ "$opcao" -gt "7" ]
        then 
        #exit se a opcao for invalida
            echo "Opção não valida!"
            exit
        else
            #pedir novamente a opção desejada pelo usuario
            echo "Escolha sua opção :"
            read opcao
        fi
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
        resp=$( echo "scale=2 ;$resp+$a" | bc )
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "scale=2 ;$resp" | bc
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
        resp=$( echo "scale=2 ;$resp-$a" | bc )
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "scale=2 ;$resp" | bc
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
        resp=$( echo "scale=2 ;$resp*$a" | bc )
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "scale=2 ;$resp" | bc
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
        resp=$( echo "scale=2 ;$resp/$a" | bc )
        i=$(( i+1))
    done
    #exibir para o usuario
    echo "======="
    echo "scale=2 ;$resp" | bc
    echo "======="
}
#função de raiz
raiz(){
    #numero de numeros a serem manipulados
    echo "Digite um valor para tirar raiz: "
    read val
    echo "======="
    echo "scale=2 ;sqrt ($val)" | bc
    echo "======="
}
#função de quadrado
quadrado(){
    echo "Digite um valor para tirar quadrado: "
    read val
    val=$(( $val*$val ))
    echo "======="
    echo "scale=2 ;$val" | bc
    echo "======="
}
#rodar função main
main
