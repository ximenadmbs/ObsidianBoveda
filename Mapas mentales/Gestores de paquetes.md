---

mindmap-plugin: basic

---

# gestores de paquetes

## Alien de deb-rpm
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
    - Instalar paquetes:
               sudo apt install _nombre_del_paquete_
    - Eliminar paquetes:
             sudo apt remove _nombre_del_paquete_
        - sudo apt -f --purge remove _nombre_del_paquete_
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
- Instalar desde la terminal
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
- Instalar paquetes
         sudo nala install _nombre_del_paquete_
- Eliminar paquetes:
         La sintaxis también es muy sencilla. Como ves el uso es igual a **apt**.
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

## Paquetes en TAR