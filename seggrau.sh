#!/bin/bash
delta=0
main(){
    echo “Digite um número a:”
    read a;
    echo “Digite um número b:”
    read b;
    echo “Digite um número c:”
    read c;

    calcula_delta
    echo "-----------------------------------------"
    verifica_segundo
}



calcula_delta(){
    delta=$((b * b -4 * a * c))
}

verifica_segundo(){
    if [ "$delta" -lt 0 ];
    then
        echo "======================="
        echo "        ERRO           "
        echo "======================="
    exit
    fi
    if [ "$delta" -ge 0 ];
    then
        echo "======================="
        echo "        RESPOSTA"
        echo "======================="
        s1=$(echo "(-($b) + sqrt($delta) )/($a * 2)" | bc)
        echo "$s1"
        echo "======================="
        s2=$(echo "(-($b) - sqrt($delta) )/($a * 2)" | bc)
        echo "$s2"
        echo "======================="
    fi
}

main

