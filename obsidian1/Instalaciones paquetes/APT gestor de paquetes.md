## APT 

**APT** ("Advanced Packaging Tool", Herramienta Avanzada de Paquetes) es un potente sistema de gestión de paquetes en el cual están basados los programas gráficos **Añadir/Eliminar Programas** y **Adept**. **APT** maneja automáticamente las dependencia y realiza otras operaciones en paquetes del sistema para permitir la instalación de los paquetes seleccionados.

### Nota

Ejecutar **APT** requiere privilegios administrativos (véase [“Usuario "root" y sudo”](https://help.ubuntu.com/kubuntu/desktopguide/es/root-and-sudo.html "Usuario "root" y sudo")).

Algunos comandos de uso común con **APT**:

- Instalar paquetes:
    
	    sudo apt-get install _nombre_del_paquete_
    
- Eliminar paquetes:
    
	    sudo apt-get remove _nombre_del_paquete_
    
- Buscar paquetes:
    
	    apt-cache search _palabra_clave_
    
- Obtener listas actualizadas de los paquetes disponibles:
    
	    sudo apt-get update
    
- Modernizar su sistema con las actualizaciones disponibles:
	    
	    sudo apt-get dist-upgrade
    
- Ver más comandos y opciones:
    
	    apt-get help
    

### Sugerencia

Para más información acerca del uso de **APT**, lea el [Manual Completo del Usuario de Debian APT](http://www.debian.org/doc/user-manuals#apt-howto) .