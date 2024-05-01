---

mindmap-plugin: basic

---

# gestores de paquetes

## Alien
- #openSUSE
    - zypper install alien
- Debian, #ubuntu
    - sudo nala install alien
- Como usar Alien
    - paquete .deb a un paquete .rpm
        - sudo alien -r paqueteDEB.deb
    - paquete .rpn a un paquete .deb
        - sudo alien -d paqueteDEB.deb

## APT
- Debian
- #ubuntu
- Algunos comandos de uso común
    - Buscar paquetes en los repositorios
         apt search _nombre_del_paquete_
    - Instalar paquetes:
        sudo apt install _nombre_del_paquete_
    - Instalar paquetes .deb
        sudo dpkg -i _nombre_del_paquete_.deb
    - Eliminar paquetes:
                       sudo apt remove _nombre_del_paquete_
        - sudo apt -f --purge remove _nombre_del_paquete_
    - Descargar el paquete
        sudo apt download _nombre_del_paquete_
    - Actualización de paquetes
                       sudo apt update
    - Actualización de paquetes ya instalados
                      sudo apt upgrade
    - Ver más comandos y opciones:
                        apt help
                        ![[Captura desde 2024-04-22 19-29-32.png]]

## PAQUETES #flatpak
- Buscar paquetes en los repositorios
       flatpak search _nombre_del_paquete_
- Instalar paquetes:
      flatpak install _nombre_del_paquete_
- Listar paquetes instalados
                 flatpak list
- Eliminar paquetes:
                   flatpak uninstall _nombre_del_paquete_ --delete-data
- Ver más comandos y opciones:
                  flatpak --help
                  ![[Captura desde 2024-04-22 19-29-10.png]]
- Disponible para instalar el soporte de #flatpak
    - #ubuntu
    - #openSUSE
    - Debian

## NALA
- Buscar paquetes en los repositorios
     nala search _nombre_del_paquete_
- Instalar paquetes
                   sudo nala install _nombre_del_paquete_
- Eliminar paquetes:
     sudo nala remove _nombre_del_paquete_
- Eliminación de paquetes y configuración del software
                   utilizamos el **comando «purge»**
                   sudo nala purge _nombre_del_paquete_
- Actualización de paquetes
                   sudo nala update
- Lista de paquetes disponibles
                   nala list
- Actualización de paquetes ya instalados
                   sudo nala upgrade
- Otras opciones que podemos utilizar con **«list»**:
    - muestra solo los paquetes instalados en el sistema.
                      –installed (-i)
    - muestra los paquetes instalados usando nala.
                      –nala-installed (-N)
    - enumera todas las versiones del paquete dado.
                      –all-versions (-a) _nombre_del_paquete_
- Ver más comandos y opciones:
                  nala --help
                  ![[Captura desde 2024-04-22 19-28-39.png]]
- Disponible para instalar el soporte de #nala
    - Debian
    - #ubuntu
- La sintaxis también es muy sencilla. Como ves el uso es igual a **apt**.

## PAQUETES #snap
- Inatalado por defecto en #ubuntu
    - Buscar paquetes en los repositorios
                   snap search _nombre_del_paquete_
    - Instalar paquetes:
                     sudo snap install _nombre_del_paquete_
    - Eliminar paquetes:
                     sudo snap remove _nombre_del_paquete_
    - Listar paquetes instalados
                     snap list
    - Ver más comandos y opciones:
                    snap --help
                    ![[Captura desde 2024-04-22 19-28-20.png]]
- Disponible para instalar el soporte de #snap
    - Debian
    - #openSUSE

## zypper
- #openSUSE
- Algunos comandos de uso común
            Solo encontraras zypper en la
            distribucion de SUSE y derivadas
    - Buscar paquetes en los repositorios
          zypper search _nombre_del_paquete_
    - Instalar paquetes:
            sudo zypper install _nombre_del_paquete_
    - Instalar paquetes rpm:
       sudo rpm -i _nombre_del_paquete.rpm_
    - Eliminar paquetes:
                sudo zypper remove _nombre_del_paquete_
        - sudo zypper remove --clean-deps _nombre_del_paquete_
    - Descargar el paquete
        sudo zypper download _nombre_del_paquete_
    - Actualización de paquetes
                       sudo apt update
        - sudo zypper up
    - Actualización de paquetes ya instalados
               sudo zypper dist-upgrade
        - sudo zypper dup
    - Ver más comandos y opciones:
               zypper --help

## Paquetes en TAR
- Como correr un paquete que
          se consigio en formato tar.gz?
- [[tar.gz manejerar]]
- Descomprimes es paquete y copias
         este scrip a lado de la carpeta del programa
- lo ejecutas con ./INSTALL.sh
- o con doble clic el nombre de la aplicacion (Discord)

## Appimage
- Instalar paquetes:
        AppImagePool
    - Instala la aplicacion desde la
            tienda de aplicaciones (fatpak)
    - Desde el terminal
            con faltpak
        - debian, #ubuntu
        - #openSUSE
        - flatpak install flathub io.github.prateekmedia.appimagepool
        - https://appimage.github.io/AppImagePool/