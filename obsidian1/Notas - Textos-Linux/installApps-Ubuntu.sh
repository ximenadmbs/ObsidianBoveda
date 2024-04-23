#!/bin/bash

echo "."
echo "Ximena bash scrip [Versión 1.0.23.10]"
echo "(c) Corporation. Todos los derechos reservados."
echo "[ ██ Intalador de completentos v1.0.5, se iniciara la instalacion."
echo "."
echo "                    l.                     _    _ _  "
echo "                    llb                   \ \  / (_) "
echo "             ..:''  lllb l:                \ \/ / _ ____   ____ ____   ____  "
echo "  '::.     .:'      llllb  ':.              )  ( | |    \ / _  )  _ \ / _  | "
echo "      ''l::         llllb   'l.            / /\ \| | | | ( (/ /| | | ( ( | | "
echo "         ;'lllb:.    llllP     l          /_/  \_\_|_|_|_|\____)_| |_|\_||_| "
echo "        :    'lllllb lllli      l     "
echo "        l       'QllllllllL.    l          _                _                         _"
echo "        l          :llllllPl.   l         | |              | |                       (_) "
echo "         l       .:llllP'      l'         | | _   ____  ___| | _      ___  ____  ____ _ ____"
echo "          l    .;llP'        .l'          | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \ "
echo "           'l.' .'         .lP'           | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | "
echo "         .-' ':+..     ..+l'              |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  "
echo "       '     '    '''''                                                                |_|    "
echo "."
sudo add-apt-repository universe
sudo add-apt-repository ppa:appimagelauncher-team/stable -y
sudo apt update
echo "."
echo "1/4[ ██ Se instalaron nuevos repositorios y se actualiso la base de datos"
echo "."
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-restricted-extras -y
sudo apt install gnome-software -y
echo "."
echo "2/4[ ██ Se ha instaladoo la tienda de aplicaciones, y componetes de sistema"
echo "."
sudo apt install libfuse2 -y
sudo apt install appimagelauncher -y
# sudo apt-get install qshutdown
echo "."
echo "3/4[ ██ Se ha instalado la libreria libfuse2 que resuelve la ejecucion de los archivos .AppImage"
echo "."
sudo apt install neofetch -y
sudo apt install htop -y
sudo apt install nmap -y
sudo apt-get install cmatrix -y
sudo apt install net-tools -y
sudo apt-get install samba -y
sudo apt install bpytop -y
sudo apt install fish -y
sudo apt install lm-sensors -y
sudo apt install sl -y
sudo apt install figlet -y
sudo apt install ssh -y
#sudo apt install cmake -y
#sudo apt install alien
sudo apt-get install cups-pdf
echo "."
neofetch
echo "."
echo "                    l.                     _    _ _  "
echo "                    llb                   \ \  / (_) "
echo "             ..:''  lllb l:                \ \/ / _ ____   ____ ____   ____  "
echo "  '::.     .:'      llllb  ':.              )  ( | |    \ / _  )  _ \ / _  | "
echo "      ''l::         llllb   'l.            / /\ \| | | | ( (/ /| | | ( ( | | "
echo "         ;'lllb:.    llllP     l          /_/  \_\_|_|_|_|\____)_| |_|\_||_| "
echo "        :    'lllllb lllli      l     "
echo "        l       'QllllllllL.    l          _                _                         _"
echo "        l          :llllllPl.   l         | |              | |                       (_) "
echo "         l       .:llllP'      l'         | | _   ____  ___| | _      ___  ____  ____ _ ____"
echo "          l    .;llP'        .l'          | || \ / _  |/___) || \    /___)/ ___)/ ___) |  _ \ "
echo "           'l.' .'         .lP'           | |_) | ( | |___ | | | |  |___ ( (___| |   | | | | | "
echo "         .-' ':+..     ..+l'              |____/ \_||_(___/|_| |_|  (___/ \____)_|   |_| ||_/  "
echo "       '     '    '''''                                                                |_|    "
echo "."
echo "4/4[ ██ :::::Se acompleto la tarea de instalacion:::::]]]]"
echo "."
echo "[ ██ Se instalaraon los sig. complementos: extras de ubuntu, appigame laucher, neofetch, htop, nmap, cmatrix, net tools, bpytop."

#chmod 777 installApps.sh
#Ejecutar con ./installApps.sh

# mié 28 sep 2022 21:06:45 CDT


