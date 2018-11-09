main(){
    clear
    echo   "8888888888     888888888888      88888888888"
    echo   "88             88        88      88"
    echo   "88             88        88      88"
    echo   "88             888888888888      88888888888"
    echo   "88             88                88"
    echo   "8888888888     88                88"
    echo
    echo
    sleep 2
    clear
    animation
    echo
    ./valida.sh
}

animation(){
    CONTADOR=0
    agu='AGUARDE'
    b='.'
    while [  $CONTADOR -lt 5 ]; do
        agu="$agu$b"
        echo $agu
        let CONTADOR=CONTADOR+1;
        sleep 1 
        clear
    done

}

main

