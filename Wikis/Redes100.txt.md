Aqui depositas todo los relacionado con redes, direcciones y algunas configuraciiones y contraseñas de red como se fueron generando.
### Configuración de red: linux consola:
Comando para revirar la informacion del adaptador de red, aqulveras las rutas del pc

		ifconfig

[Cambiar la dirección IP a 192.168.100.35
Desde la consola usa este comando para cambiar la direccion ip

		sudo ifconfig enp0s3 192.168.100.35 netmask 255.255.255.0   

[Cambiar la dirección de la puerta de enlace

		sudo route add default gw 192.168.100.1 enp0s3              

 [Ver tabla de rutas, revisar si las rutas están correctas
 
		 route -n     

----------------------------
### Configuración de carpetas compartidas Samba
[Ver la ruta de la carpeta compartida, (se debe estar dentro de ella)

		pwd     
		
[Instalación de la aplicación #samba

		sudo apt install samba
		
[Abre el archiv smb.conf para poder agregar las carpetas a compartir

		sudo nano /etc/samba/smb.conf 
		o
		sudo mousepad /etc/samba/smb.conf

 - ir ala sección **Share Definitions**, copiamos el sig texto] , 

```
[sambaShare]   
	path = /home/ximena/Escritorio/red-compartida
	read only = no
	browseable = yes
```
> sambaShare se refiere ala etiqueta (nombre) que le daremos ala carpeta de red.

### Configuración del usuario
[ ximena se refiere al usuario que tendrá la carpeta compartida

		sudo smbpasswd -a ximena 
```     
New SMB password:
Retype new SMB password:
```
 > Se pedirá entrada de contraseña y confirmar
 
 - Reestableser el servicio de #samba para que hagan efecto los cambios
```
sudo service smbd restart
sudo ufw allow samba
```
 > Confirmara con Reglas actualisadas , v6)
 > El comando `service smbd restart` en Linux se utiliza para reiniciar el servicio de #samba (SMB) en el sistema. Samba es una implementación del protocolo SMB/CIFS que permite compartir archivos e impresoras entre sistemas Linux y Windows en una red. Al reiniciar el servicio `smbd`, se aplicarán los cambios de configuración y se reiniciará el funcionamiento del servicio.

### Reglas de las direcciones de la red
octectarse ala misma red por ejemplo 192.168.==100==.56 , donde la red que coincida es la ==100==, y la **56** es la maquina]

Ambas maquinas estarán asi:
- 192.168.100.56  [para la pc 1
- 192.168.100.59  [para la pc que brinda la carpeta

conectamos desde Windows una unidad de red con la siguiente dirección:
`\\192.168.100.59\sambaShare`

> Aceptas te pedirá nombre y password añedidos anteriormente en Configuración del usuario, con el comando `sudo smbpasswd -a ximena`

------------------------------------
### Para montar en una carpeta en espesifico:
Desde la consilas copia el siguiente comando , `dan_e` es usuario 

		sudo mount -t cifs //192.168.100.33/POPS-red . -o username=dan_e,password=1209Edessireq,noperm

- Direcciones de red como ejemplo para linux
```
smb://192.168.100.33/
smb://192.168.100.33/POPS-red
smb://192.168.100.31/sambaPOPS-red
```

### Dominios de red de las computadoras

| Usuario    | Trabajo     | Contraseña    | Dirección IP                     | Pc             |
| ---------- | ----------- | ------------- | -------------------------------- | -------------- |
| dan_e      | HIELOYFUEGO | 1209Edessireq | smb://192.168.100.33/POPS-red    | amdfx / win    |
| virtualbox |             |               | smb://192.168.56.1               |                |
| monef      | HIELOYFUEGO | 15032920eme   | smb://192.168.100.97/hdd-d       | acerpc / win   |
| ximena     |             | 14789         | smb://192.168.100.189/           | acerlap / win  |
| xenon      | WORKGROUP   | 14789         | smb://192.168.100.22/xena        | servidor/linux |
|            |             |               | smb://192.168.100.22/data-500gb/ |                |
|            |             |               | smb://192.168.100.22/adata1t/    |                |
|            |             |               | smb://192.168.100.22/games/      |                |
|            |             |               | smb://192.168.100.22/xeonhome/   |                |
|            |             |               | smb://192.168.100.22/wd4t-com/   |                |
 
### Control remoto al servidor
Mediante el protocolo #ssh, te conectas desde la terminal al servidor **xenon** 

		ssh -p 22 xenon@192.168.100.22       
		pass:14789

* servicio #ssh con cmd de windows y terminal linux:

		ssh -p 22 ximena@192.168.100.189

----------------
### Revisar puertos abiertos de una dirección:
#### El comando `nmap` 
en Linux es una herramienta de exploración de red y seguridad. Se utiliza principalmente para descubrimiento de hosts y servicios, lo que significa que puede identificar todos los dispositivos en una red y los servicios que están ejecutando. Aquí hay un ejemplo de cómo usarlo:

```bash
sudo apt install nmap

nmap -sV 192.168.100.1

nmap -A 192.168.100.1
```

Este comando escaneará la dirección IP 192.168.100.1 y también intentará determinar los servicios/versiones que se están ejecutando en los puertos abiertos.

#### El paquete `net-tools` 
en Linux es una colección de utilidades de red. Algunas de las herramientas más comunes incluyen:

- `ifconfig`: para configurar, gestionar y consultar interfaces de red.
- `netstat`: para mostrar estadísticas de red y conexiones.
- `arp`: para manipular la caché ARP.
- `route`: para mostrar y manipular la tabla de enrutamiento IP.

Estas herramientas son esenciales para la administración de redes en un sistema Linux. Sin embargo, en las distribuciones modernas de Linux, `net-tools` ha sido reemplazado en gran medida por el comando `ip` del paquete `iproute2`, que ofrece una funcionalidad similar pero con una sintaxis más coherente y potente.

### Rauter de la red
Direccion de rauter Tp-link, TL-WR840N  http://192.168.0.1/      
Direccion ruter principal Total play, HG8145V5  http://192.168.100.1/ admin, admin o (root, admin)
http://192.168.100.116/
