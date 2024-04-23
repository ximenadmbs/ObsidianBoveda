---
mindmap-plugin: basic
---

# Ubuntu

## 1. instalación de .sh
- Actualizar con app #reinicia
- Ejecutar:   update-v1.0.26.sh
- Ejecutar:  installApps-Ubuntu.sh
- Instalar impresora:   M2020Install.sh
- Instalar Wine:   installWine-Ubuntu.sh
- Instalas Apps .deb
    - Chrome
    - ffconverter
    - onedriver
    - peazip
    - veracrypt
    - wps office
    - Visual estidio code
    - webapp-manager
- Instalar Apps: Tienda
    - Spotify
    - Krita
    - Inkscape
    - kdenlive
    - vlc
    - foliate
    - kompozer
    - Gestor de extensiones
    - Gestor tipografico
    - JDownloader 2
    - Darktable (fotografia)
    - HandBrake (videos audio)
    - flat peazip
    - Extension Manager
        - Clipboard indicator
        - Blur my Shell
        - Dash to Dock
        - User Themes
        - Show Desktop Button
        - compiz alike magic
        - Emoji selector
        - Aylu'r Widgets
            - %I:%M %p
        - Desktop Clock
            - Deshabilitar "Desktop Icons NG" para
                poder mover el reloj a una posición
- Wine Portables
    - MobaXterm-Eject.sh
    - WineOption.sh
    - WOWTurtle.sh
    - h2testw.exe (test USB)
- Bauh
    - BauhApicaciones.sh  (Ejecutar)
    - mindmeister.com/
    - tradingview.com/
    - viewer.autodesk.com/

## 2. Led Teclado
- Cambiar Escritorio, engrane derecha
    abajo, para que funcione el teclado 
    iluminado y ejecutar el .sh luz
- Serrar secion --->  cambiar a Xorg
- luzTeclado.sh
    - xset led 3

## 3. Retoques
- Tipografias
    - 9.6, 10, 11.6, 10,
    - ![[fontsOpensuse.png]]
- Factor escalado
    - 0.97 -
- Hinting media, Alisado Estandar

## 4. Terminal
- Colores de Letra
    - `#23000F  Fondo
    - `#BBA8B0  Letra
    - `#CE2B6F  majenta
    - `#308DFF  azul claro
    - `#1ECF4F  verde fuerte
    - `#521B0F  cafe
    - `#7FB32A  verde olivo
- Tamaño de la ventana
    - 110 - 40
- .bashrc
    - personalizar alias: alias lh='ls -lh'
- fish
    - fish_config
        - colors: Dracula
              prompt: informative
        - alias comandos
            - alh = ls -a -l -h
            - iapt = sudo apt-get install
            - ideb = sudo dpkg -i
            - lh = ls -lh
            - upd = sudo apt update
            - upg = sudo apt update && sudo apt upgrade
            - ideb = instalar paquetes deb
                - sudo dpkg -i
            - rdeb = desistarla paquetes deb
                - sudo apt-get remove
            - iflat = instala paquetes flatpak
                - flatpak install
            - rflat = desistala paquete flatpak
                - flatpak uninstall

## 5. Configuración
- Dock, tamaño de iconos = 32
- color = rojo
- Multitarea
    - Esquina activa = on
    - multi-pantalla = area de trabajo en
        todas las pantallas
- Energía
    - Apagar la pantalla = nunca
- Monitores
    - Luz nocturna = on color menos 6:pm
- Ratón y panel táctil
    - Ratón / Velocidad "iniciando el punto de arriba
- Fecha y hora
    - Formato de fecha = am/pm
- Explorador de archivos
    - Preferencias 'colocar las carpetas
         antes que los archivos' (on)
    - Miniaturas Vídeos (MinuaturasVideos.txt)
        en textos linux

## 6. Desinstalar Programas
- sudo apt-get -f --purge remove
    programa
- sudo apt autoremove
- No funciona (freecad - freecad-python3)

## 7. Montar Discos Con Permiso
- sudo fdisk -l
- sudo ntfsfix /dev/sdd2
- Montaje a una Carpeta
    - mkdir /mnt/hddrosa
    - sudo mount /dev/sde2 /mnt/hddrosa
    - sudo umount /dev/sde2

## Fuentes
- Notas de instalacion y configuraciones
- video instructivo como usar mindmap =
   https://youtu.be/IrEaA8nNnnE?si=RRTxxyu2jcrbXenr