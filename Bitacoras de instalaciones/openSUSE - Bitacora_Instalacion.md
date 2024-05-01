---
color: var(--mk-color-green)
---
## OpenSUSE 15.5:

### Primeros pasos:
Actualización del sistema #openSUSE, puedes usar **update o up** para actualizar , **refresh o ref** y **dist-upgrade o dup**:

		sudo zypper ref 
		sudo zypper update
		sudo zypper dist-upgrade
		
		sudo zypper ref && sudo zypper up && sudo zypper dup

Para mas comando y mas del instalador de paquetes.
https://es.opensuse.org/Zypper , para saber mas de instalaciones con [[zypper de openSUSE]]
### Activar repositorios
Desde gestión de soft wate Yast:
Ctrl + r >> Anadir repositorios, Repositorios de la comunidad, 

- [ ] Packman Repository
- [ ] libdvdcss repository

		sudo zypper dup --from packman-essentials --allow-vendor-change
		sudo  zypper up && zypper install-new-recommends && zypper dup

### Instalar fuentes desde  Yast 

Busca desde el gestión de soft wate Yast: **afetchmsttfonts**

* *Arial, Arial Black, Andale Mono, Monotype, Courier New, Comic Sans MS, Georgia, Impact, Times New Roman, Trebuchet MS, Verdana, Webdings.*
 
* Carpeta del usuario: cantarell*, open sans*, roboto*, calibri*, bookerly*, dejavu*, gotham*
- Colocar las fuentes del sistema.
- ![[fontsOpensuse.png]]

### Instalar impresora en RED
- Desde el Centro e control Yast, sistema contrafuegos, inicio, poner en modo **(parar)** aceptar
- Después ve a Impresoras y agregar.

### Instalar impresora M2020
Desde el Centro e control Yast, sistema contrafuegos, inicio, poner en modo (parar) aceptar
		https://support.hp.com/mx-es/drivers/samsung-xpress-sl-m2020-laser-printer-series/16462592
1. copiar y descomprimir **uld_V1.00.39_01.17.tar.gz**
2. ejecutar el archivo bash:
3. 
		sudo ./install.sh
		sudo ./install-printer.sh

`Press 'Enter' to continue or 'q' and then 'Enter' to quit. : <da en enter>`
> Lees la licencia y  se preguta:

`Do you agree ? [y/n] : y`
`Are you going to use network devices ? If yes, it is recommended to configure your firewall.`
`If you want to configure firewall automatically, enter 'y' or just press 'Enter'. To skip, enter 'n'. : y`

4. **Enciende la Impresora**
5. Ve a Impresoras y agregar. selecciona el controlador **samsung m2020**

### Instalación de #flatpak:
Instalado por defecto en el sistema.

### Instalación de Exenciones:
todos los de las imágenes excepto:

- Desktop Clock (muestra un relog en el escritorio)
* Dash to Dock (se comenzó a sentir mas lento las animaciones al instalar los complementos, al parecer es el "Dash to Dock" que provoca esto)

### Abrir Ventanas al centro.
En la aplicación de Retoques - ventanas (centrar ventanas nuevas)

### Instalación del tema :
Copia la carpeta temas en la carpeta dows, y dentro ejecuta el indtalador .sh, 
- WhiteSur-gtk-theme.tar.xz
1. Descomprimir y ejecutar: 

		cd WhiteSur-gtk-theme
		sudo ./install.sh -t all -N glassy -s 220
		sudo ./tweaks.sh -g

2. Copiar los iconos dela balla y de las aplicaciones de la carpeta iconos del tema
3. Para una intregracion completa del sistema **no quites los temas de la carpeta de temas del sistema** /usr/share/themes

### Instalación de iconos 

creas la carpeta:

		mkdir ~/.icons
	
y copias el contenido de:
 
		YaruEX Natural2024.zip
	
> Copias los fondos de escritorio.

### Se instalaron los paquetes desde la tienda de software:
##### en #flatpak 
- krita
- dropbox*
- inkscape
- peazip
##### en repo-oss (Centro de Control de YaST)
- notepadqq
- ffmpeg
- caja-dropbox-lang (se instalan mas dependencias *caja-extension-dropbox dropbox-cli, nautilus-extension-dropbox*, se integra con los iconos verdes de la carpeta.)
- flameshot [para abrir desde la terminal, y como atajo de teclas] [[Atajos de Teclado]]
##### en rpm de la pagina del desarrollador
- wps-office
- ms edge
- VeraCrypt (ok) *ignorar la abvertencia, no integra una unidad, ruta dela unidad*:  **/mnt/veracrypt1**
- youtube-to-mp3-3.9.9.81-2.x86_64.rpm (hecho con alien) *instalar complementos* **ffmpeg** *desde yast*
- youtube-downloader-3.9.9.90-2.x86_64-alien.rpm  (hecho con alien) *de pago*
##### por terminal .rpm repositorios [[zypper de openSUSE]]
* wine 8.0

		sudo zypper install wine
* tilix

		sudo zypper install tilix

### Soporte con aplicaciones #appImage 
 * nativa--
	 * Permitir Ejecución en propiedades dela AppImage, y ejecutar con doble clic.
 
 * Aplicacion para integrar las **.Appimage** a los lanzadores del menu de aplicaciones com: (Menu principal o main menu). lo instalas con #flatpak.
 
 		flatpak install flathub page.codeberg.libre_menu_editor.LibreMenuEditor
 		
### Atajos de teclado
Abre la aplicacion Configuracion, ve al apartado teclado, combinaciones de teclas, combinación personalizada. [[Atajos de Teclado]]
* Abrir la terminal ctrl + alt + t

		gnome-terminal
		
* Luces del teclado shift + ctrl + l

		xset led 3

### Para la instalación del paquete alien se consiguió un intalador de yast
* Instalador_opensuse-alien.ymp [[Alien de deb-rpm]]
### Programa .sh de Instalación 

	installApps-OpSUSE.sh

Actualizador e instalador de complementos para openSUSE 15.5. (OK)
* listo y probado. mar 26 mar 2024 18:36:39 CST (todos los programas para terminal y utilidades necesarios.)
	
### Instalar WPS office
Vas ala pagina oficial de wps office en el siguiente enlace https://www.wps.com/download/

		wps-office-11.1.0.11719.XA-1.x86_64.rpm

* Instalas como cualquier paquete rpm con yast, ahora vas a copiar la carpeta del servidor para cambiar el idioma al español.
* Ejecutas desde la ubucacion  **~/Descargas/wps**
	- Instalar el idioma español ejecutas:
	
			Install-wpsEsp.sh

### Para cambiar permiso edición de una carpeta y su contenido:

		sudo chmod o+w . -R

>Para mas comando de carpetas mas recuentes: [[ComandosCarpeta]]

### Administra los paquetes #flatpak
En lista los paquetes instalados, *list* ,usa el comando *remove* para desista las el paquete *remove --unused* úsalo para des instalar todo el paquete por completo.

		flatpak list
		flatpak remove <paquete>
		flatpak remove --unused

Abrir una aplicación #flatpak  desde la terminal: por ejemplo VLC, ejercitas el comando *list* para ver como se llama en el formato de flatpak.

		flatpak run <paquete>
		flatpak run org.videolan.VLC
		
### Iniciar un comando al entrar al sistema:
Se le llama demonio a este tipo de comando que se ejecutan al inicio del arranque del sistema. se usa un programa pre instalado en el sistema llamado *cron*, y lo manejas de la siguiente forma.

Para iniciar el archivo y escribir la siguiente linea para iniciar por ejemplo Dropbox.

		crontab -e 

* Se abrirá un editor de texto en linea de comando como *vim*, y pegas el siguiente linea.

		@reboot flatpak run com.dropbox.Client
		
* Para editar en Vim con las siguientes teclas, **esc** para salir, **:w** para grabaar, **:q** para salir y #reinicia  el pc.

La siguiente instrucción es para que encienda la luz del teclado.

		sudo ln -s /etc/init.d/luzTeclado.sh /sbin/rcluzTeclado.sh
		
### Aplicaciones web
En firefox instala la intencional pwas:  https://addons.mozilla.org/es/firefox/addon/pwas-for-firefox/
* Lees las instrucciones de el programa y pegas las siguientes instrucciones. y ejecutar el programa:

```bash
#!/bin/bash
	# Enable the repository
		echo -e "[firefoxpwa]\nname=FirefoxPWA\nbaseurl=https://packagecloud.io/filips/FirefoxPWA/rpm_any/rpm_any/\$basearch\ngpgkey=https://packagecloud.io/filips/FirefoxPWA/gpgkey\nrepo_gpgcheck=1\npkg_gpgcheck=0\nenabled=1\nautorefresh=1\ntype=rpm-md" | sudo tee /etc/zypp/repos.d/firefoxpwa.repo

	# Import GPG key and update Zypper cache
		sudo zypper --gpg-auto-import-keys refresh firefoxpwa

	# Install the package
		sudo zypper install firefoxpwa
```

- la alternativa a **webapp-manager** es msedge, para crear una aplicaciones abres edge y buscas el sitio web por ejemplo https://www.ciciai.com/chat/ , y en los ... de la parte inferior derecha ve a aplicaciones y a **instalar**, te preguntar aceptas y listo.

Direcciones de algunas paginas web con [[Webs Apps]]

### Crear enlaces simbolicos:
Desde la teminal escrives *sudo ln -s* espacio la ruta dela carpeta de enlace */var/spool/cups-pdf/ximenam* espacio y la ruta donde se creara el enlace **~/** para guardar en la carpeta raiz del usuario.

		sudo ln -s /var/spool/cups-pdf/ximenam ~/PDFs

>Para mas comando de carpetas mas recuentes: [[ComandosCarpeta]]
---------------------------------------
### Jugar a MSDos en Wine con DOSBox
Una vez dentro, montas la unidad **C:** con la siguiente instrucción.

		mount c ~/games

* Donde **games** sera donde estarán los juegos *Dos* en la carpeta local de usuario **~/**
* Dentro de *DOSBox* el teclado es español así que la **~** esta en **atl + ;**  
* Una ves montada teclea **c:** para entrar en la unidad **dir** para ver el directorio, **cd** para entrar al directorio, **programa.exe** para ejecurar, **cd ..** para regresar al directorio.
### Instalacion del programa 4k video downloader plus
mie 10 abr 2024 14:16:36 CST
* Este programa fue generado a partir de **4kvideodownloaderplus-1.5-2.x86_64.deb** trasformado con **alien** , por alguna razón se instala sin ningún problema, pero no funciona el lanzador, utilice la aplicación** **Menu principal** para localizar el lanzador y se encontraba allí sin problemas, solo que el comando no lanzaba nada. Busque la aplicación *"4kvideodownloaderplus.sh"* y se encuentra en esta siguiente ruta:

		/usr/lib/4kvideodownloaderplus/4kvideodownloaderplus.sh

* Actualizas la linea del comando ejecutando lo siguiente con "bash"

		bash /usr/lib/4kvideodownloaderplus/4kvideodownloaderplus.sh

* Sin ningún problema de ejecutara y ya aparece el icono de las aplicaciones.
### Archivo de instalación de paquetes tar.gz 
jue 11 abr 2024 14:16:36 CST
Como correr un paquete que se consigio en formato tar.gz [[tar.gz manejerar]]?
* Descomprimes es paquete y copias este scrip a lado de la carpeta del programa
* Cambia el nombre de la carpeta de *"Discord"* por el de el programa a instalar.
* lo ejecutas con ./INSTALL.sh

		sudo cp -r Discord/ /opt

* Para desista lar cambia el nombre de la carpeta *"Discord"* por el de el programa
* des comenta la linea (#) del archivo del scrip.

		sudo rm -r /opt/Discord/
### Nuevas exenciones instaladas.
vie 12 abr 2024 14:16:36 CST
[[Exenciones Gnome]]

#### Liberar espacio en el disco
[[Liberar espacio en disco]]

### Abrir el Nautilus Archivos como su
> jue 18 abr 2024 16:00:19 CST

En lugar de usar `sudo`, te recomendaría utilizar el comando `pkexec` en openSUSE para ejecutar Nautilus como superusuario. Aquí tienes cómo hacerlo: De esta manera abres el explorador de archivos **Nautilus** desde la terminal instalas:

		sudo zypper install pkexec

- una ves instalado ejecutas la siguiente linea de comando

		pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY nautilus
		
- Este comando utiliza `pkexec` para ejecutar Nautilus como superusuario, pero también establece las variables de entorno `DISPLAY` y `XAUTHORITY` para permitir que la interfaz gráfica se muestre correctamente.
- Se te pedirá que ingreses tu contraseña de superusuario. Escribe tu contraseña y presiona Enter.

> En #ubuntu no necesitas instalar nada adicional, solo ejecutas:
> 		`sudo nautilus`

### Flameshot desde la terminal

Para abrir #flameshot desde la terminal, simplemente debes escribir `flameshot` seguido del comando que deseas utilizar. Por ejemplo, para abrir la interfaz de Flameshot, puedes usar:

```
flameshot gui
```

Este comando abrirá la interfaz de usuario de Flameshot, permitiéndote seleccionar un área de la pantalla para capturar.

Si quieres que Flameshot se ejecute en segundo plano y esperar a que presiones la tecla de acceso rápido para tomar una captura de pantalla, puedes usar:

```
flameshot &
```

El signo `&` al final del comando hace que Flameshot se ejecute en segundo plano.

Por favor, ten en cuenta que debes tener Flameshot instalado en tu sistema para poder utilizar estos comandos. Si no lo tienes instalado, puedes instalarlo con el gestor de paquetes de tu sistema. Por ejemplo, en Ubuntu, puedes usar `sudo apt install flameshot` para instalar Flameshot.


mar 26 mar 2024 18:36:39 CST
vie 12 abr 2024 14:16:36 CST
