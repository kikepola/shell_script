#!/bin/bash

clear

declare -r recordFile="registros.txt"

createRecordFile(){
	if [[ ! -f "$recordFile" ]] ; then
		touch registros.txt
	fi
}

getDigitsWeightedSum(){
	numbers=$1
	length=${#1}
	i=$((length+1))	
	sum=0
	while ((i >= 2)) ; do
		index=$(( length - (i-1) ))
		currentDigit=${numbers:$index:1}
		sum=$((sum + i*currentDigit))
		i=$((i-1))
	done

	echo $sum
		
}

checkCpfDigits(){
	cpf=$1
	digit10=${cpf:9:1}
	digit11=${cpf:10:1}

	sumDigit10=$(getDigitsWeightedSum ${cpf:0:9})
	leftOverDigit10=$((sumDigit10%11))
	
	if (( $leftOverDigit10 <= 1 && ! $digit10 == 0 )) ; then
		return 255
	elif (( ! ($digit10 == 11-$leftOverDigit10 ) )) ; then
		return 255
	fi

		
	sumDigit11=$(getDigitsWeightedSum ${cpf:0:10})
	leftOverDigit11=$((sumDigit11%11))
	
	if (( $leftOverDigit11 <= 1 && ! $digit11 == 0 )) ; then
		return 255
	elif (( ! ($digit11 == 11-$leftOverDigit11 ) )) ; then
		return 255
	fi

	return 0
	
}

checkCpf(){
	cpf=$1
	
	if [[ ! $cpf =~ ^[0-9]{11}$ ]] ; then
		return 255
	else
		checkCpfDigits $cpf
		return $?
	fi
}

addNewRecord(){
	echo $1 $2 $3 $4 >> "$recordFile"
}

main(){
	createRecordFile
	
}

checkCpf $1
if (($? == 0)) ; then
	echo "CPF válido"
	echo "Pressione <enter>"
	read pause		
        ./cadv2.sh
else
	echo "CPF inválido"
        echo "Pressione <enter>"
	read pause		
        ./valida.sh
fi
