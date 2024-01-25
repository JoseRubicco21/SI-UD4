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
    echo "[1] "
    echo "[2] "
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
            echo "1"
            ;;
        2)
            echo "2"
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

runMenu