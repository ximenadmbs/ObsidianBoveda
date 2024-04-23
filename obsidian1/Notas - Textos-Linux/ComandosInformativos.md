
 !/bin/bash

**Comprobamos el estado de networking**

	systemctl status networking

**busqueda de paquetes en apt.**

    apt search suld-driver
    apt search neofetch
    apt search htop

**muestra detalles sobre tu distribución de Linux**

    lsb_release -a

**se muestra uso de la memoria del sistema.**

    free -h
    
**se muestra el uso de los discos en el sistema**

    df -h

**se muestra la ip del equipo**

    ip a
    
**demuestra coneccion a internet**

    ping -c 5 google.com
    
**muestra las versiones de las siguientes aplicaciones de terminal.**

    dpkg --version
    neofetch --version
    htop --version
    nmap --version
    cmatrix --version
    net-tools --version
    samba --version
    bpytop --version
    fish --version
    lm-sensors --version
    sl --version
    figlet --version
    ssh --version
    
**estados de servicios:**

    sudo service smbd status
    sudo service proftpd status
    
**muestra informacion del sistema**

    cat /etc/os-release
    
**revisar si opengl esta activado**

    glxinfo | grep direct
    
**estado de livepatch de ubuntu**

    sudo ua status --wait
    pro security-status
    
**muestra fecha y hora actual del equipo**

	date

**escaladoMonitor**

	xrandr --output DisplayPort-0 --scale 1.3333
xorg

xrandr

	xrandr --output eDP --scale 1.333
	xrandr --output eDP --scale 1.16
	xrandr --output eDP --scale 1.11