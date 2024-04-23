#!/bin/bash
clear
echo " *** SCRIPT PARA OPCIONES DE WINE*** "
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
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Configuracion de Wine"
echo " 2.-Agregar .EXE / Quitar Desinstalar Programas .EXE"
echo " 3.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1)winecfg;; 
2)wine uninstaller;;
3) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
