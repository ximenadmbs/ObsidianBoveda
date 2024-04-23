#!/bin/bash
clear
echo " *** SCRIPT PARA EL APAGADO DEL EQUIPO *** "
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
echo " 1.-Apagar equipo ahora"
echo " 2.-Reiniciar equipo ahora"
echo " 3.-Asignar hora de apagado del equipo"
echo " 4.-Apagar equipo a los xx minutos"
echo " 5.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1)sudo shutdown -h now;; 
#sudo halt;;
2) sudo reboot;;
3) echo -n " ¿ A qué hora ?: "
read hora
sudo shutdown -h $hora;;
4)echo -n " ¿ En cuántos minutos se apagará el equipo?: "
read minutos
sudo shutdown -h $minutos;;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
