#!/bin/bash

#Listar usuarios
echo "Usuarios creados:"
cut -d: -f1 /etc/passwd

#Solicitar nombre de usuario a eliminar
read -p "Ingrese el nombre de usuario a eliminar: " username

#Confirmar si desea eliminar al usuario
read -p "¿Está seguro de que desea eliminar al usuario $username? [s/N] " confirm

if [ "$confirm" == "s" ] || [ "$confirm" == "S" ]; then
    userdel $username
    echo "Usuario $username eliminado"
else
    echo "Operación cancelada"
fi
