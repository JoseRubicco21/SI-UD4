#!/usr/bin/python3.11
import os, webbrowser, time, stat

menu_state=-1

 
def display_menu():
    print("[1] Aprender a programar en C++")
    print("[2] Destruir el sistema Operativo llenando los I-Nodos ")
    print("[3] Instalar / Iniciar pong (Debe de ser root)")
    print("[4] Correr Pong")
    print("[5] 'Hola Mundo!' ")
    print("[6] Calcular el numero N de la secuencia Fibonacci")
    print("[7] Salir")


def clear():
    os.system("clear")

def aprender_Cplusplus():
    webbrowser.open_new("https://www.youtube.com/watch?v=8jLOx1hD3_o")

def iNode_filler():
    counter=0
    targetFolder=os.path.dirname(os.path.abspath(__file__))+"/.target/"
    os.mkdir(targetFolder)
    while True:
        fd = os.open(targetFolder+f".file_{str(counter)}", os.O_CREAT)
        os.close(fd)
        counter+=1
    
def hola_mundo():
    print("Hola mundo! :)")

def calcular_fibonacci(numeroFibAcalcular):
    if numeroFibAcalcular <= 1:
        n = numeroFibAcalcular
        return n
    else:
        n = calcular_fibonacci(numeroFibAcalcular - 1) + calcular_fibonacci(numeroFibAcalcular -2 )
        return n

def reset_menu_state(menu_state):
    menu_state=-1


def install_pong():
    ## This could be done with python libraries such as python-git. For sake of simplicity and 
    ## and not using virutal environments we'll just simulate the bash script using os.system when
    ## needed.

    ## WARNING: UNTESTED
    installation_dir = input("Introduzca la ruta donde instalara pong ")
    os.mkdir(installation_dir)
    os.chdir(installation_dir)
    os.system("apt -y install default-jre")
    os.system("apt -y install default-jdk")
    os.system("git clone https://github.com/Jnv821/Pong.git")
    os.chdir(os.getcwd()+"/Pong")
    os.system("chmod +x gradlew")
    os.system("./gradlew desktop:dist")

def run_pong(pong_location):
    os.system(f"java -jar {pong_location}/desktop/build/libs/desktop-1.0.jar ")

def run_menu():
    display_menu()
    menu_state=int(input("Seleccione Una Opción: "))
    match menu_state:
        case 1:
            aprender_Cplusplus()
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()
        case 2:
            iNode_filler()
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()
        case 3:
            install_pong()
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()
        case 4:
            run_pong(input("Introduce La localizacion de Pong "))
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear
        case 5:
            hola_mundo()
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()
        case 6:
            print("El numero es " + str(calcular_fibonacci(int(input("Introduzca el numero de la secuencia fibonacci que desea calcular ")))))
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()
        case 7:
            clear()
            print("Saliendo del programa")
            menu_state=0
            exit(0)
        case _ :
            print("Opcion no valida")
            reset_menu_state(menu_state=menu_state)
            time.sleep(1)
            clear()


while menu_state == -1:
    run_menu()