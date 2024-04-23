::::Manejo de paquetes Flatpsk::::

sudo apt install flatpak

sudo flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo

---------------------
{{para buscar aplicaciones en el repositorio de flatpak}}

flatpak search VLC   [para buscar aplicacion]
flatpak install VLC   [para instalar vlc]

---------------------
[para instalar paquete bajado de la pagina]

flatpak install com.discordapp.Discord.flatpakref    

-----
[para enlistar paquetes instalados]

flatpak list

-----
[para desistalar [paquetes]

flatpak uninstall com.discordapp.Discord --delete-data


Alias:

	iflat:  'flatpak install'
	rflat:  'flatpak uninstall'


- Administra las aplicaciones instaladas y ejecutables
     install - Instalar una aplicación o tiempo de ejecución
     update - Actualizar una aplicación o tiempo de ejecución
     uninstall - Desinstalar una aplicación o tiempo de ejecución instalado
     mask - Ocultar las actualizaciones y la instalación automática
     pin - Fijar un ejecutable para evitar la eliminación automática
     list  - Mostrar lista de aplicaciones y/o tiempos de ejecución instalados
     info  - Mostrar información de las aplicaciones o tiempos de ejecución instalados
     history - Mostrar histórico
     config - Configurar flatpak
     repair - Reparar la instalación de flatpak
     create-usb - Colocar aplicaciones o ejecutables en medios extraíbles

;;;;;;;;;;;;;;;;;Links flatpak;;;;;;;;;;;;;;;;;

https://flathub.org/apps/details/org.citra_emu.citra
https://flathub.org/apps/details/net.lutris.Lutris
https://flathub.org/apps/details/com.mattjakeman.ExtensionManager
https://flathub.org/apps/details/com.github.unrud.VideoDownloader
https://flathub.org/apps/details/io.github.hakandundar34coding.system-monitoring-center
https://flathub.org/apps/details/org.gabmus.hydrapaper
https://flathub.org/apps/details/nl.hjdskes.gcolor3