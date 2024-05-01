---
color: var(--mk-color-orange)
---
jue 25 abr 2024 18:15:19 CST
Inicias la instalacion, lo primero es la versión de Gnome 46, tambien el Explorado de **Archivos** la versión 46 y una apariencia muy paresido al tema que le puse ala versión 24, el icono de aplicaciones cambio al logotipo de ubuntu, la tienda de aplicaciones de #snap es nueva y renivada, nombre en clave ‘Noble Numbat’.
 - la opcion de crear enlaces simbólicos ya no aparese en las opciones, pero se piere usar `shift+ctrl+m
 - Tampoco esra *destacar y  enviar a* ,la primera se van los archivos a favoritos que ora se llama *destacados*, ahora solo hay que jalar y soltar el archivo al menu de la izquierda aparesera un estrella ariba ala derecha.
 - en el menu ya no aperase en propiedades *abrir con*
## Pos-instalación
Te conectas al servidor con usuario y contraseña, [[Redes100.txt]] to ok, funcionando. ✅
Cuenta ubuntu

		dan_epstein@hotmail.com
		ximenadm
		Comtraseña: 147ximena789acer

En una maquina virtual la red debe estar configurada como **adaptador puente**  para ver la red local **server-xeon** mas sobre redes: [[Redes100.txt]]
		
		smb://192.168.100.22/xena
		usuario: xenon
		passw: 14789
### Correr el instalador .sh
#### Instalaciones, una ves instalado el sistema actualizar el sistemas: 

- Ejecutas el instalador **installApps-UbuntuLTS.sh** , correrán la actualizaciones, y la instalación del gestor de paquetes nala. 

		sudo apt update && sudo apt upgrade -y && sudo apt autoclean
		sudo apt install nala -y
#### Poner archivos en carpetas
- Por alguna extraña razón al instalar y desinstalar paquetes **snap**, esta barre con las carpetas de usuario que estén vacías, rompiendo y dejando inservibles como **enlace simbólico rotos**, así que de inicio ve poniendo un archivo oculto en todas las carpetas **.txt** sin contenido, de mayor importancia en la carpeta **Escritorio**.

		cd ~/Escritorio/ ; touch .txt && cd ~/Descargas/ ; touch .txt && cd ~/Documentos/ ; touch .txt && cd ~/Imágenes/ ; touch .txt && cd ~/Música/ ; touch .txt && cd ~/Público/ ; touch .txt && cd ~/Vídeos/ ; touch .txt

#### Ruta de ejecución del instalador
Dentro del instalador se manejan las direcciones internas en la carpeta asignando como **./** ala carpeta "madre" : **Ubuntu22-4-4LTS** , así le decimos ala terminal que ./ "estamos aquí en la carpeta", por ejemplo para que la terminal sepa que estamos dentro de la carpeta **Ubuntu22-4-4LTS**

		~/Descargas/Ubuntu22-4-4LTS/installApps-UbuntuLTS.sh
		./installApps-UbuntuLTS.sh

Así partes siempre desde ./ que es la carpeta del proyecto y apartir de aqui te mueves dentro en las carpetas y los archivos.

		~/Documentos/Git_Proyectos/Ubuntu22-4-4LTS/bashi/
		./bashi/

		~/Documentos/Git_Proyectos/Ubuntu22-4-4LTS/bashi/installMenu.sh
		./bashi/installMenu.sh

---------------------------------------
#### Se instalaran los siguientes apps . 
para el terminal desde el instalador, si usar el instalador *bash* este es el listado de programas que se instalan.

* sudo add-apt-repository universe
* sudo apt install ubuntu-restricted-extras -y [Commonly used media codecs and fonts for Ubuntu] , se esta ejecutando desde el **installDPKG.sh**
* sudo apt install ufw -y [programa para gestionar un cortafuegos Netfilter]
* sudo apt install proftpd -y [Servidor del protocolo de transferencia de archivos (FTP)]
* 
#### Instalacion de repositorios
En el ejecutable, **installRepo.sh** , 
- universe
- ppa:appimagelauncher-team/stable ==no se instalo==
- flathub https://flathub.org/repo/flathub.flatpakrepo
- ppa:helkaluin/webp-pixbuf-loader ==no se instalo==

### Notas de instalacion de ,sh
1. Repositorios
- appimegelauncher parese ==no se instalo== el repositorio
- aun no tiene soporte con #flatpak de inicio
-  `flathub https://flathub.org/repo/flathub.flatpakrepo`
	- repositorios no instalados
	- `ppa:appimagelauncher-team/stable -y`
	- `ppa:helkaluin/webp-pixbuf-loader -y (repositorio para ver archivos WebP)`

2. Aplicaciones cli (nala esta funcionando) , se omitio la seccion de red ,  
	- `ssh` ya esta instalaso de defould 
	- `cmake, alien, net-tools, samba, nmap`no instalado
1. paquetes dpkg
	- `webp-pixbuf-loader` ya installed miniaturas de archivos webp
	- libfuse2t64 se instalo en ves de libfuse2
	- appimagelauncher no instalado porque no se instalo el repositorio (instalar manualmente) funciona correctamente `appimagelauncher_2.2.0-travis995.0f91801.bionic_amd64.deb`se instala normalmente #appImage 
	- flatpak indica que lla esta instalado en su version mas reciente (pero al principio no se nota que este instalado)
2. impresoras
	- printer-driver-cups-pdf se instalo en ves de cups-pdf
3. impresora ok
4. temas ok, solo ay que sacar de la carpera .themes ==opcion omitida==
	- en apariencia no funciona *Aplicaciones heredadas*
5. ok temas para la terminal
6. programas, notepadqq se instalo en snap, inkscaoe no instalar el snap, sigue con problemas

### Tipografía
En esta versión la tipografía de ubuntu esta muy delgada para mi gusto, ya me abia acostumbrado al que tenia la versión 22-04, asi que la carpeta la encerré en un zip y copie la tipografía anterior en la carpeta de fonts del sistema `/usr/share/fonts/truetype/ubuntu`  👍

###  😩 Problemas con esta versión 24.04
#### Problemas con WPS
problemas con el lector de pdf no abre (se congela)
- instale la version en #flatpak pero no e logrado traducir los programas al español, solo logre colocarle el diccionario en esta rura la deje `~/Documentos/dicionario`  👍

#### Problema con Notepadqq ❌
primero instale la version snap pero no abria da este error la version 2.0 `Qt: Session management error: None of the authentication protocols specified are supported`
- En al version deb 2.0, la aplicación de cierra sola, o comsume 3gb de memoria y usa exageradamente un procesado llenándolo al 100%
- por el momento instale la version en #snap pero se ve medio feita, el tema que usaba no esta en esta version, una paresida seria `pastel on dark` o `night`
- despues de varios intentos, el deb de cierra, el snap solo sirve la version 1,4, y no tiene el tema, fimalmente la opcion de #flatpak no sirve ningun tema solo esta el blanco.
- fimalmente opte por una opcion mas ligera, usare `gedit` de la tiemda deb, y este lo usare para leer y editar texto plano, y el `editor de texto`de gmome 46 en tema negro mesirbe muy bien para programar los archivos `bash`.

#### Fish configuración no funciona
el comando `fish_config`no habré la configuración, la pagina no se muestra esto es porque trata de abrir en #firefox  como navegador predeterminado, y como en ubuntu es un #snap no puede tener interacción con el sistema y no conecta con el localhost.
```
ximena-dm@amdfxubun ~> fish_config
Web config started at file:///tmp/web_configefkflsat.html
If that doesn't work, try opening http://localhost:8001/9682a786721eaff3351d494960cee79e/
Hit ENTER to stop.
```
- la solución fue descargar otro navegador en formato deb y establecer como *predeterminado.* 👍

encontré varios problemas con el lector de pdf de WPS en deb no abre (se congela), Notepadqq instale la versión snap pero no abra da error la version 2.0, versión deb 2.0, la aplicación de cierra sola, o consume 3gb de memoria, gedit, en snap mata el pc, se come toda la memoria ram y lo congela si abres las propiedades, el comando `fish_config`no habré la configuración, la pagina no se muestra porque firefox es un #snap no puede tener interacción con el sistema y no conecta con el localhost. hasta quí mi reporte, saludos desde mexico. Ha! por cieto olvidaba que no puedes arrastrar y soltar cualquier imagen para incrustarla en inkscape de snap por el tema que no interactúa con el sistema, y es molesto, claro uso el siempre y confiable .deb. saludos.

#### Krita
El sentimiento agridulce mas que nada por los snap es que están rotos los paquetes y que invitan asarlos pero no los hacen con cariño, están mal empacados y como no tienen esa interacción con el sistema les falta dependencias que al final ni siquieran abren ,algo tan sesillo como por ejemplo kita no abre los archivos ni abriendo ni arrastrando, comienza a cargar y se cierra, ni puede crear archivos nuevos. y es un programa conocido, van años que esta así 

### Instalación de paquetes ala carta
Opción 5, del menú del instalador.
En el ejecutable, **pakAlacarta.sh** encuentras toda la paquetera utilizable. 
![[Captura desde 2024-04-15 21-49-33.png]]

### Notas dela instalacion de LTS 22.04.4
1:21pm - 2:13pm
- flatpak esta instalado en su vercion 1.12.7-1
- libfuse2 esta instalado
-  ⚠El en apartado de instalación delos paquetes de **flatpak** dieron error de instalación
- Obsidian en snap no se instalo, incluir **install obsidian --classic**

		sudo snap install obsidian --classic
		
-  🔴Error de instalacion en .deb **, dropbox, peazip, veracrypt** (not found), esto fue porque no hay vercion en deb, dropbox se instalara directo de la tienda, peazip en flatpak, y veracript desde su pagina,

		sudo flatpak install flathub io.github.peazip.PeaZip
	
	https://www.veracrypt.fr/en/Downloads.html
	- Ejecute de nuevo la opción 8 instalación desatendida
	> ya se están instalando los flatpak
### Reseteo del pc
Actualizar "soporte de idiomas"

Encender el teclado iluminado 

		xset led 3
		xset led off

Una ves que ayas terminado de instalar con la consola el bash **installApps-UbuntuLTS.sh**, #reinicia  el pc y comienza con la instalaron de las extensiones: [[Exenciones Gnome]]
- Abre en Utilidades, Retoques y en Apariencia, personaliza los Iconos - YaruEX Natural2024, y en GNOME shell - WhiteSur-Dark-purple.

### Personaliza la interface.
Configuración de las Tipografías tamaños , abre "retoques"
![[tipografias.png]]

---------------------------------------
### Paqueteria instalada:

#### Snap #snap
- JDownloader 2  🐿️
- krita*  ❌ no se puedeusar [se rompio despues de querer desistalar el [[ImageMagick]]
- spotify 🐿️
- pdf arrager 🐿️
- obsidian 🐿️
- VLC  🐿️
- Discord 🐿️
- Arianna 🐿️
- k3b 🐿️

#### AppImage #appImage
* kdenlive-22.08.3-x86_x64_8b0f1934c0385c03bf0720861baa215a
* appimagepool-5.0.0-x86_64_57f732b9d7f041f503bd0afa0bdd6cb3
* balenaEtcher-1.18.11-x64_5137b0c85d3b1050aab7591325f008fb
* deemix-linux-x64-latest_bbab66ef19292a883ddb8708e9c2677f

#### Flatpak #flatpak
- Discord inc
- google
- selector de color 🐿️
- Arianna
- VLC 
- ExtensionManager 🐿️
- #flatseal 
- peazip 🐿️
- wps office (s)
- menu principal 🐿️

#### Paquetes .deb de sus paginas
> Estos paquetes tienen copias en el servidor.
- Chrome
- ffconverter
- onedriver [quedo obsoleto
- peazip
- veracrypt 🐿️
	- veracrypt-1.26.7-Ubuntu-23.04-amd64 🐿️
- wps office (no funciona el lector de pdf)
- Visual estidio code [quedo obsoleto
- webapp-manager  [quedo obsoleto
- edge 🐿️

#### De la tienda Gnome formato .deb
- wine 🐿️
- caja dropbox ==no este no es el correcto==
- nautilus-dropbox 🐿️
- krita 🐿️ (en español con `krita-l10n`)
- inkscape 🐿️
- k3b
- notepadqq ❌
- VirtualBox 🐿️
- calibre 🐿️
- gedit (notepad, para la lectura de txt) 🐿️
- tilix 🐿️
- foliate [lector de libros ,epub, pero me guta mas **ariana**]
- kompozer (editor de codigo html y paginas web)
- Gestor de extensiones
- Gestor tipografico 🐿️
- Darktable (fotografia raw)
- HandBrake (convertidor de videos audio)
- pitivi (editor de video tipo sonyvegas)

### Configuraciones para la terminal. [[mapa Ubuntu notas]]
![[Captura de pantalla de 2024-04-13 20-38-55.png]]
#### Configuraciones de la interfaces gráfica [[mapa Ubuntu notas]]
![[Captura de pantalla de 2024-04-13 20-39-25.png]]
#### Tema de Firefox 
> Desinstalar #firefox en formato snap e instalar en formato .deb *si por alguna razón no funcionan las aplicaciones web por ser snap* [[Desistalar Firefox version Snap]]

* Instalar Aplicaciones web en Firefox. [[Firefox Addon Pwas]]*
- Instalar Firefox Color, Link del tema
		https://color.firefox.com/?theme=XQAAAAIZAQAAAAAAAABBqYhm849SCia2CaaEGccwS-xMDPr4zmCk-pWgdupc86JBvd1E8G7op8zBPYc2KKtk7a7XxqoELfAddCy4XHYEexXA7Nc_KrjsFLVi9iT9r_SwduHN10rUP1Aa71jgna09VdriOHjkY1ga1UyF_aUfoHKNa95Qh_O5aGMkZ-an0jq--aNh1FSChVjp3P_89P3uXdrPO9F6HXSCCd73Z6-p9rv2OoX2euibzCsOmsyplRNaeoXK_ffZM-A

#### Krita .deb en espanol
- si instale el krita desde la tienda en formato .deb vendrá en ingles, para ponerlo en español:

		sudo nala install krita-l10n

### Aplicaciones web
En firefox instala la intencional pwas:  https://addons.mozilla.org/es/firefox/addon/pwas-for-firefox/ , Direcciones de algunas paginas web con webapps. [[Webs Apps]]

#### Para cambiar permiso edición de una carpeta y su contenido:
[[ComandosCarpeta]] Ruta temas: 

		/home/ximena/.themes
#### Crear enlaces simbolicos:
[[ComandosCarpeta]]

Eligió la instalación desatendida de paquetes  

### Crear apps web progresivas en Chrome de flatpak 
en el formato de #flatpak [[Webs Apps]]

jue 10 nov 2022 11:07:46 CST
mar 06 dic 2022 13:17:46 CST
lun 15 abr 2024 21:57:07 CST


