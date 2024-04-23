#!/bin/bash

echo "."
echo ".-Hola.-"
echo "[[[[Intalador de completentos v1.0.1, se iniciara la instalacion."
echo "."
echo "."
sudo add-apt-repository universe
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
echo "."
echo "[[[[Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."
sudo apt install gnome-tweaks
sudo apt install ubuntu-restricted-extras
sudo apt install gnome-software
echo "."
echo "[[[[Se ha instaladoo la tienda de aplicaciones, y componetes de sistema"
echo "."
echo "[[[[Se instalaran las apps para los archivos .AppImage"
echo "."
sudo apt install libfuse2
sudo apt install appimagelauncher
echo "."
echo "[[[[Se ha instalado la libreria libfuse2 que resuelve la ejecucion de los archivos .AppImage"
echo "."
echo "[[[[Ahora se intalaran los componentes para la terminal"
echo "."
sudo apt install neofetch
sudo apt install htop
sudo apt install nmap
sudo apt-get install cmatrix
sudo apt install net-tools
echo "."
neofetch
echo "."
echo "."
echo "[[[[:::::Se acompleto la tarea de instalacion:::::]]]]"
echo "."
echo "[[Se instalaraon los sig. complementos: extras de ubuntu, tweaks, Ubuntu soft, appigame laucher, neofetch, htop, nmap, cmatrix, net tools."


