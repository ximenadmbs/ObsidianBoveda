#!/bin/bash

echo "."
echo "."
echo "Hola se iniciara las actualisaciones"
echo "."
echo "."
sudo apt update
echo "."
echo "Se Actialisaron los repositorios."
echo "."

sudo apt upgrade
echo "."
echo "Se actualisaron los paquetes seleccionados"
echo "."

sudo apt-get autoclean
echo "."
echo "::::::::::Tarea terminada::::::::::"
echo "."
