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
    done
}

runMenu