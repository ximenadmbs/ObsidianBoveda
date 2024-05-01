---
color: var(--mk-color-purple)
---
### Navegación en terminal

| Ctrl + FlechaDerecha | mober por parabra ala Derecha          |
| -------------------- | -------------------------------------- |
| Ctrl + E             | para regresar al final de la linea     |
| Ctrl + A             | para regresar al principio de la linea |

----------------------------
### Comandos para la Terminal

| ls                 | para abrir el contenido de la carpeta                                                                             |
| ------------------ | ----------------------------------------------------------------------------------------------------------------- |
| ls -l              | para abrir el contenido de la carpeta en lista                                                                    |
| ls -lh             | para abrir el contenido de la carpeta en lista Tamano Mb Gb                                                       |
| ls -a              | para abrir el contenido de la carpeta con carpetas y archivos ocultos                                             |
| ls -a -lh          | para abrir el contenido de la carpeta con carpetas y archivos ocultos en lista                                    |
| ls carpeta1/       | para enlistar contenido de la carpeta '**carpera1**' sin entrar a ella                                            |
| cd                 | para regresar al directorio del usuario ~ (/home/usuario/)                                                        |
| cd Documentos/     | para entrar ala carpeta **Documentos**                                                                            |
| cd /etc            | cambiar de directorio, para salir del directorio e ir a uno especifico **/etc** dela raiz                         |
| cd ..              | ir ala carpeta atrás                                                                                              |
| mkdir carpeta/     | crear directorio **carpeta**                                                                                      |
| rmdir carpeta/     | eliminar el directorio **carpeta**                                                                                |
| mv dir/ dir1/      | para renombrar archivos o carpetas **dir/ dir1/** , tambien sirve para mover, **mv archivo.txt /carpeta/destino** |
| mv *.txt carpeta1/ | para mover todos los archivos **txt** a la **carpeta1**                                                           |
| mv carpeta1/* .    | para mover todos los archivos de **carpeta1** ala carpeta actual (puntito) **.**                                  |
| .                  | directorio actual, para copiar ala carpeta de la dirección actual                                                 |
| touch archivo.txt  | para crear archivo nuevo **archivo.txt**                                                                          |
### Para borrar carpetas y archivos

| rm             | borrar archivos, rm archivo.txt                         |
| -------------- | ------------------------------------------------------- |
| rmdir          | borra directorios basios **rmdir carpeta1/**            |
| rm -r carpeta/ | borra carpetas y su contenido                           |
| rm carperta1/* | para borrar todo el contenido dentro de la **carpera1** |
### Para copiar carpetas y archivos

| cp archivo.txt /carpeta/carpeta1 | copiar un archivo.txt auna /carpeta1                  |
| -------------------------------- | ----------------------------------------------------- |
| cp *.txt /carpeta/carpeta1       | copiar todos los archivos **.txt** a una **carpeta1** |
| cp -r /home/carpeta /opt/destino | copiar carpetas con todo su contenico                 |
### Otros comandos usados regularmente 

| ctrl+l        | para limpiarla pantalla, tecla control + l       |
| ------------- | ------------------------------------------------ |
| pwd           | para ver la rura de la carpeta                   |
| ./archivo.sh  | para abrir un ejecutable **archivo.sh**          |
| "carpeta uno" | para abrir una carpeta o un archivo con espacios |
|               |                                                  |

sudo chmod o+w . -R     [cambiarlos permisos de la carpeta a lectura y escritura, -R: aplica el comando chmod recursivamente a todos los ficheros y de los subdirectorios.]
chmod 777 archivo.sh  [para otorgar permisos al archivo.sh]    
sudo ln -s /mnt/4ACC07B2CC0796FB/"Mis documentos"     [para crear un enlace simbólico] para conocer mas [[ComandosCarpeta]]

### Apagado del pc por comandos

| shutdown                    | apagar pc                           |
| --------------------------- | ----------------------------------- |
| shutdown -h now             | apagar pc enseguida                 |
| reboot                      | #reinicia  el pc                    |
| sudo pkill -KILL -u usuario | cerrar la sesion                    |
| sudo shutdown -h 23:50      | apagar a una determinada hora el pc |
| sudo shutdown -h +30        | apagar el pc en 30 minutos          |

Usa la teca **TAB** pata autocompletar nombre del archivo: 
Ejem: [./media {TAB}      =       ./media_center.v45.67.deb]

### Abrir aplicaciones de terminal
fish    [para activar el autocompletado]
date     [muestra la fecha actual]
nano     [Edicion de texto en terminal]
htop  [para mira los recursoso del sistema en terminal]
top   [enlistar mas informacion de recursos e sistema]
free -h  [información resumida de memoria usada]
bpytop     [para mira los recursos del sistema en terminal]
sensors   [para revisar la temperatura del pc]

-----------------
### Escritura y lectura de archivos de texto .txt

| ls -lh ~/IconsL \| tee icons-lh.log    | \| tee sirbe para gragar el resultado del comando en un archivo .log o txt         |
| -------------------------------------- | ---------------------------------------------------------------------------------- |
| cat archivo.txt                        | para visialisar contenidop del archivo de texto                                    |
| head -3 fichero2.txt                   | pra ver solo las primeras 3 lineas del archivo                                     |
| tail -8 fichero2.txt                   | para ver solo las ultimas 8 lineas del archivo                                     |
| cat fichero1.txt \| head -3 \| tail -2 | nombra del fichero las tres primeras lineas y de ellas las dos ultimas lineas      |
| head -4 fichero2.txt > out.txt         | para copiar las primeras 4 lineas del fichero2 > al archivo **out.txt**            |
| head -2 fichero1.txt >> out.txt        | para copiar las primeras 2 lineas del fichero1 siguiente >> al archivo **out.txt** |

-----------------
### Comandos para red
ifconfig   [ver la ip direccion de la pc]
ip a      [ver la ip direccion de la pc]
ip -4 address     [ver la ip direccion de la pc]
route -n      [para ver tabla de ruras, revisar puerta de enlase en pasarela]
ping -c 4 google.com    [para hacer ping con google.com 1 intento]
ping -c 4 google.com -R    [para hacer ping con google.com 1 intento Con traza]

-------
### Cambiar el nombre del hostname (nombre del equipo)

		nano /etc/hostname
		nano /etc/hosts

* #reinicia  el equipo

		sudo reboot

-------
# Administrar disco 
* ver discos en el equipo

		df -h

* listar discos

		sudo fdisk -l
#### Para montar un disco 
con propiedades de escritura, cuando no se puede. [[Montar discos]]

		sudo ntfsfix /dev/sdc1

------------------
mar 27 sep 2022 22:24:57 CDT
dom 14 abr 2024 14:54:59 CST vercion 2 revisada




