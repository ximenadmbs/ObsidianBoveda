#!/bin/bash

echo "."
echo "Ximena bash scrip [Versión 1.0.23.10] 03/09/22"
echo "(c) Corporation. Todos los derechos reservados."
echo "[[[[Desintalador de programas para Parrot, v1.0.3, se iniciara la Desinstalacion."
echo "."
sudo apt-get -f --purge remove libreoffice*
sudo apt-get -f --purge remove thunderbird*
sudo apt-get -f --purge remove gimp*
sudo apt-get -f --purge remove imagemagick*
sudo apt-get -f --purge remove xboard*
sudo apt-get -f --purge remove cheese*
sudo apt-get -f --purge remove mpv*
sudo apt-get -f --purge remove brasero*
sudo apt autoremove
echo "."
echo "[[[[:::::Se acompleto la tarea de desinstalacion:::::]]]]"
echo "."
echo "[[Se desinstalaraon los sig. Apps: libreoffice, gimp, imagemagick, xboard, cheese, mpv, brasero"

#chmod 777 installApps.sh
#Ejecutar con ./installApps.sh

# python3-uno

#sáb 03 sep 2022 19:46:52 

