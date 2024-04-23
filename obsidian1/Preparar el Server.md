1024 MB de memoria
1 CPU
16 Mb Video


sudo apt install neofetch
sudo apt install nmap
sudo apt install net-tools
sudo apt-get install samba
sudo apt install bpytop

sudo apt install xrdp
sudo apt install xfce4

ifconfig
ip a
192.168.100.22

mkdir red01
pwd

sudo nano /etc/samba/smb.conf 
```
=====Share Definitions=====

[sambaShare]
	valid users = ximena
	path = /home/ximena/red01
	read only = no
	browseable = yes
```

sudo smbpasswd -a ximena      [ (ximena se refiere al usuario que tendra la carpeta compartida), 
New SMB password:
Retype new SMB password:      [se perira entrada de contrasena y confirmar]

sudo service smbd restart
sudo ufw allow samba          [confirmara con Reglas actualisadas , v6)

------------------
Abrir y cerrar puertos

sudo ufw allow 25/tcp
sudo ufw deny 25/tcp

sudo ufw status

-----------------------

ifconfig    [revisar la ip de la maquina]

RED DISPONIBLE EN :   \\192.168.56.109\sambaShare

---------------

ssh -p 22 xenon@192.168.100.22       pass:14789

------------------------------------------------------

sudo adduser blockout1       [agregar usuario, creera una carperta en Home]
12qw34er5

sudo smbpasswd -a blockout1      [ (blockout1 agregar usuario ala red samba que tendra acceso a la carperata samba), 
New SMB password:
Retype new SMB password:      [se pedira entrada de contrasena y confirmar 'puedeser el mismo del usuario o diferente]

////////////

userdel -r nombreDelUsuario      [para eliminar usuarios se usa:]

su pedrito    [cambiar de usuario, pedira password]

cat /etc/passwd    [para ver los usuarios del servidor]

////////////


addgroup server01          [agregar grupo]

usermod -g server01 blockout1          [agregar al usuario al grupo]

id blockout1     [pararevisar los permisos]

chgrp -R server01 /mnt/WD4T/WD4T-com        [poner la carpeta al grupo]

ls -l

su blockout1     [para cambiar de usuario]

chmod 775 mnt/WD4T/WD4T-com -R    [dar permisoso de escritura ala carpeta]

------------------------------

Plex:

192.168.100.22:32400/web

------------------------------
/mnt/WD4T/WD4T-com
/mnt/DATA-500gb
/mnt/ADATA1T
/home/xenon
/mnt/red-Data

-----------------

smb://192.168.100.22/wd4t-com/
smb://192.168.100.22/data-500gb/
smb://192.168.100.22/adata1t
smb://192.168.100.22/xeonhome
smb://192.168.100.22/games


\\192.168.100.22\data-500gb
\\192.168.100.22\xeonhome
\\192.168.100.22\adata1t
\\192.168.100.22\red-data

sudo service smbd restart
xenon  =  14789