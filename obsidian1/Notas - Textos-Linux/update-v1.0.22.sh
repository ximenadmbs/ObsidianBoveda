#!/bin/bash

echo "Ximena bash scrip [Versión 1.0.22.10]"
echo "(c) Corporation. Todos los derechos reservados."
echo "[[[[Iniara las actualisaciones"
echo "."
sudo apt update
echo "."
echo "[[[[Se Actialisaron los repositorios."
echo "."
# sudo apt dist-upgrade
sudo apt upgrade
echo "."
echo "[[[[Se actualisaron los paquetes seleccionados"
echo "."

sudo apt-get autoclean
echo "."
echo "::::::::::Tareas terminadas::::::::::"
echo "."

#chmod 777 update-v1.0.22.sh
#Ejecutar con ./update-v1.0.22.sh

#12:52 p. m. 03/09/2022
