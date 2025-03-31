"""
Ejercicio dirDile
Fecha : 26/03/2025
Autor : Manuel Prieto L.
"""
import os.path
import shutil as s

directorios = []
ficheros = []
rutas = open("rutas.txt", "r")
contenido = rutas.readlines()
rutas.close()

for i in contenido:
    r = i.strip()
    if os.path.isdir(r):
        directorios.append(r)
    elif os.path.isfile(r):
        ficheros.append(r)

print("Ficheros:", ficheros)
print("Directorios:", directorios)

print("A - Nombre fichero para eliminar")
print("B - Nombre directorio y su info")
print("C - Fichero a mover, carpeta destino")
print("D - Fichero a copiar, carpeta destino")
print("E - Salir")

res = input("Escoja una opción: ").upper()

while res != 'E':
    match res:
        case 'A':
            fich = input("Dime un fichero para eliminar: ")
            if os.path.isfile(fich):
                os.remove(fich)
                print("Fichero eliminado exitosamente!")
            else:
                print("El fichero no existe.")

        case 'B':
            fich1 = input("Directorio para mostrar información: ")
            if os.path.isdir(fich1):
                print(os.listdir(fich1))
            else:
                print("El directorio no existe.")

        case 'C':
            fich2 = input("Fichero a mover: ")
            dest = input("Destino: ")
            if os.path.isfile(fich2) and os.path.isdir(dest):
                s.move(fich2, dest)
                print("Fichero movido exitosamente!")
            else:
                print("El fichero o el destino no existen.")

        case 'D':
            copy = input("Dime un fichero a copiar: ")
            move = input(f"Dame un destino para {copy}: ")
            if os.path.isfile(copy) and os.path.isdir(move):
                s.copy(copy, move)
                print("Fichero copiado exitosamente!")
            else:
                print("El fichero o el destino no existen.")

        case 'E':
            print("Saliendo...")
            break

        case _:
            print("Opción incorrecta.")

    res = input("Escoja una opción: ").upper()
