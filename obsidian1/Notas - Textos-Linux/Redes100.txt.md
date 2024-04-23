### Configuracion de red: linuxs consola:

ifconfig

sudo ifconfig enp0s3 192.168.100.35 netmask 255.255.255.0   [para cambiar la direccion a 192.168.100.35]

sudo route add default gw 192.168.100.1 enp0s3              [para cambiar la direccin de la puerta de enlase]

route -n      [para ver tabla de ruras, revisar si las rutas estan correctas]


----------------------------
pwd     [para ver la rura de la carpeta compartida, (se deve estrar dentro de ella)]

sudo apt install samba

sudo nano /etc/samba/smb.conf 

sudo mousepad /etc/samba/smb.conf    [ir ala seccion Share Definitions, copiamos el sig texto] , sambaShare se refire ala etiqueta que le daremos ala carpeta de red.

[sambaShare]   
	path = /home/ximena/Escritorio/red-compartida
	read only = no
	browseable = yes

sudo smbpasswd -a ximena      [ (ximena se refiere al usuario que tendra la carpeta compartida), 
New SMB password:
Retype new SMB password:      [se perira entrada de contrasena y confirmar]

sudo service smbd restart
sudo ufw allow samba          [confirmara con Reglas actualisadas , v6)

ifconfig    [revisar la ip de la maquina]

[{{{{{cotectarse ala misma red por ejemplo 192.168.100.56 , donde la red que coincida es la 100, y la 56 es la maquina]

ambas maquinas estaran asi:
192.168.100.56  [para la pc 1]
192.168.100.59  [para la pc que brinda la carpeta]

conectamos desde windows una unidad de red con la sig direccion:

\\192.168.100.59\sambaShare

[aceptamos y nos pedira nombre y pass a~nedidos anterrior mente. con el comando {sudo smbpasswd -a ximena].

------------------------------------
Para montar en una carpeta en espesifico:

sudo mount -t cifs //192.168.100.33/POPS-red . -o username=dan_e,password=1209Edessireq,noperm

smb://192.168.100.33/
smb://192.168.100.33/POPS-red         smb://192.168.100.31/sambaPOPS-red

dan_e
HIELOYFUEGO
1209Edessireq

smb://192.168.100.33/POPS-red

dan_e
HIELOYFUEGO
1209Edessireq

smb://192.168.56.1


smb://192.168.100.97/
smb://192.168.100.97/hdd-d

monef
HIELOYFUEGO
15032920eme

 \\192.168.56.107\sambaMintXfce
ximenita
14789

 
### DIRECCIONES RED

##### PC AMD-FX

smb://192.168.100.33/
smb://192.168.100.33/POPS-red

dan_e
HIELOYFUEGO
1209Edessireq

------------------------------
##### Pc Acer

smb://192.168.100.97/
smb://192.168.100.97/hdd-d

monef
HIELOYFUEGO
15032920eme

-----------------------------
##### Lap Acer V5

smb://192.168.100.189/

ximena
14789

#### Red local física (servidor intel xeon)

smb://192.168.100.22/xena
		usuario: xenon
		passw: 14789

smb://192.168.100.22/data-500gb/
smb://192.168.100.22/adata1t/
smb://192.168.100.22/games/
smb://192.168.100.22/xeonhome/
smb://192.168.100.22/wd4t-com/


ssh -p 22 xenon@192.168.100.22       pass:14789

ssh -p 22 xenon@192.168.100.22

pass: 14789


smb://192.168.100.22/xena/
smb://192.168.100.22/

Red Usuario: xenon  Pass:14789

-----------------------------

* servicio ssh con cmd de windows y terminal linux:
ssh -p 22 ximena@192.168.100.189

----------------

revisar puertos abiertos de una direccion:

nmap

sudo apt install nmap

nmap -A 192.168.100.1

revisar la ip
sudo apt install net-tools

-  $ ifconfig
-------
Direccion de rauter Tp-link http://192.168.0.1/      direccion ruter principal http://192.168.100.1/
#### Notas: manual .md
[frrfre]

```bash
sudo
```

# Titulos
* Vi;neta
> comentario
