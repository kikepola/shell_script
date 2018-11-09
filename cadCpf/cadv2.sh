#/bin/bash
#Autor: João Carlos
#26-10-2018
#IMT

main(){
    echo   "8888888888     888888888888      88888888888     88         88   88888"
    echo   "88             88        88      88               88       88   88  88"
    echo   "88             88        88      88                88     88   88   88"
    echo   "88             888888888888      88888888888        88   88         88"
    echo   "88             88                88                  88 88          88"
    echo   "8888888888     88                88            88     888           88"
    echo
    echo "Digite 1 para fazer cadastro"
    echo
    echo "Digite 2 para deletar cadastro"
    echo
    echo "Digite 3 para atualizar cadastro"
    echo
    echo "Digite 4 para buscar cadastro"
    echo
    echo "Digite 5 para sair"
    echo 
    echo
    echo "Digite a opção escolhida"
    read option

    while [ $option -lt 5 ]
    do
        if [ $option = 1 ]
        then
            fazerCad
            echo "Digite 1 para fazer cadastro"
            echo
            echo "Digite 2 para deletar cadastro"
            echo
            echo "Digite 3 para atualizar cadastro"
            echo
            echo "Digite 4 para buscar cadastro"
            echo
            echo "Digite 5 para sair"
            echo 
            echo
            echo "Digite a opção escolhida"
            read option
        elif [ $option = 2 ]
        then
            deletarCad
            echo "Digite 1 para fazer cadastro"
            echo
            echo "Digite 2 para deletar cadastro"
            echo
            echo "Digite 3 para atualizar cadastro"
            echo
            echo "Digite 4 para buscar cadastro"
            echo
            echo "Digite 5 para sair"
            echo 
            echo
            echo "Digite a opção escolhida"
            read option
        elif [ $option = 3 ]
        then
            atualizarCad
            echo "Digite 1 para fazer cadastro"
            echo
            echo "Digite 2 para deletar cadastro"
            echo
            echo "Digite 3 para atualizar cadastro"
            echo
            echo "Digite 4 para buscar cadastro"
            echo
            echo "Digite 5 para sair"
            echo 
            echo
            echo "Digite a opção escolhida"
            read option
        elif [ $option = 4 ]
        then
            buscarCad
            echo "Digite 1 para fazer cadastro"
            echo
            echo "Digite 2 para deletar cadastro"
            echo
            echo "Digite 3 para atualizar cadastro"
            echo
            echo "Digite 4 para buscar cadastro"
            echo
            echo "Digite 5 para sair"
            echo 
            echo
            echo "Digite a opção escolhida"
            read option
        elif [ $option = 5 ]
        then
            echo "Adeus"
            exit
        else
            echo "A opção escolhida não existe"
            clear
            echo "Aguarde"
            clear
            echo "Aguarde ."
            clear
            echo "Aguarde . ."
            clear
            echo "Aguarde . . ."
            clear
            echo "Digite 1 para fazer cadastro"
            echo
            echo "Digite 2 para deletar cadastro"
            echo
            echo "Digite 3 para atualizar cadastro"
            echo
            echo "Digite 4 para buscar cadastro"
            echo
            echo "Digite 5 para sair"
            echo 
            echo
            echo "Digite a opção escolhida"
            read option
        fi
    done
}

deletarCad(){
    #Deletar
    echo "Qual usuario voce deseja deletar?"
    cat arquivo.cad
    echo "Digite a linha que deseja apagar: "
    read apaga
    echo
    sed -i $apaga'd' arquivo.cad
    echo
    echo "Cadastro apagado com sucesso"
    echo
    echo "Nome Sobrenome"
    echo
    cat arquivo.cad
    echo "Pressione <enter> para Continuar"
    read pause
    sleep 2
    clear
}

atualizarCad(){
    #atualizar
    echo "Qual usuario voce deseja atualizar?"
    echo
    read antigo
    echo
    echo "Digite novo nome"
    echo
    read novo
    echo
    sed -i 's/'$antigo'/'$novo'/g' arquivo.cad
    echo
    echo "Cadastro sobrescrito com sucesso"
    echo
    echo "Pressione <enter> para Continuar"
    read pause
    echo "Nome Sobrenome"
    echo
    cat arquivo.cad
    sleep 2
    clear
}

buscarCad(){
    #buscar
    echo "Qual o nome do usuario voce deseja buscar?"
    read usuario
    sed -n "/$usuario/p" arquivo.cad > arquivo.tmp
    echo
    cat arquivo.tmp
    echo
    echo "Pressione <enter> para Continuar"
    read espera
    clear
}

fazerCad(){
    echo "CPF Nome Sobrenome"
    cat arquivo.cad
    echo
    echo "pressione <ENTER>"
    read espera
    echo "entre Nome"
    read nome
    echo "..... Aguarde"
    sleep 2
    echo
    echo "entre o sobrenome"
    read sobrenome
    echo "..... Aguarde"
    sleep 2
    echo
    echo $cpf $nome $sobrenome > arquivo.tmp
    echo $cpf $nome $sobrenome >> arquivo.cad
    sleep 2
    echo
    echo " Cadastro realizado com sucesso "
    echo
    echo "Pressione <enter> para Continuar"
    read pause
    sleep 2
    clear
    echo "Nome Sobrenome"
    echo
    cat arquivo.tmp
    echo
    echo "************************************************"
    echo "*        Usuario Cadastrado com sucesso        *"
    echo "************************************************"
    echo
    echo "Nome Sobrenome"
    echo
    cat arquivo.cad
    echo
    clear
}


main