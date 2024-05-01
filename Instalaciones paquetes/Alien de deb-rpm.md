### Instalacion para openSUSE
#### Para la instalación del paquete alien se consiguió un intalador de yast
* Instalador_opensuse-alien.ymp
(https://software.opensuse.org/download/package?package=alien&project=system%3Apackagemanager)
* O con las siguientes instrucciones de la terminal, se agrega el repositorio:

		zypper addrepo https://download.opensuse.org/repositories/system:packagemanager/15.5/system:packagemanager.repo
		zypper refresh
		zypper install alien
### Instalación en Ubuntu y en derivaras de Debian 
desde la terminal ejecutas el siguiente comando

			sudo apt install alien
			sudo nala install alien
### Como usar Alien
* Como dar uso dela aplicación **alien** convirtiendo un paquete .deb a un paquete .rpm

		sudo alien -r paqueteDEB.deb

* Como dar uso dela aplicación **alien** convirtiendo un paquete .rpn a un paquete .deb

		sudo alien -d paqueteDEB.deb

Para mas comando y mas del instalador de paquetes.
https://es.opensuse.org/Zypper

mié 17 abr 2024 13:34:25 CST