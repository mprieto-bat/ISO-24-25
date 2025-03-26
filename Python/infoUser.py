"""
Ejercicio infoUsers
Fecha : 25/03/2025
Autor : Manuel Prieto Luengo
"""
import os
import cpuinfo as cpu

if os.getuid() != 0:
    print("No eres root!")
    exit()

while True:
    print("1º Muestra la informacion del SSOO e informacio de la CPU.")
    print("2º Pedir un usuario.Si existe, se muestra informacion sobre el,si no, no se crea.")
    print("3º Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea")
    print("4º Salir")
    opt=int(input("Escoja una opcion: "))

    match opt:
        case 1:
            print("Mi SSOO es",os.uname().sysname)
            print(cpu.get_cpu_info()["brand_raw"])
        case 2:
            user=input("Dame un nombre de usuario: ")
            fich=open("/etc/passwd","r")
            contenido=fich.readlines()
            for i in contenido:
                if i.split(":")[0] == user:
                    print(user,i)
                else:
                    print("Usuario no encontrado, creando....")
                    os.system(f"sudo useradd {user}")
        case 3:
            dir=input("Dame nombre de un directorio: ")
            if os.path.exists(dir):
                if os.path.isdir(dir):
                    print("Directorio encontrado!!")
                else:
                    print("No es un directorio")

            else:
                print("No existe, creando directorio...")
                os.mkdir(dir)
        case 4:
            print("Saliendo...")
            break
        case _:
            print("Opcion no valida")
            break

