### Como Instalar .deb desde la terminal
#### Manejo de paquetes .deb

Para **buscar** el "programa" por nombre en terminal:

		apt search <nombreapp>

Para **enlistar** y buscar el programa en formato dpkg "programas que se instalan en la tienda como deb, o instalados directamente de un paquete deb"

		dpkg-query -l

**Instalar** un archivo **.deb** abriendo una terminal y escribiendo por ejemplo **package_file.deb**:

		sudo dpkg -i package_file.deb

> si da error la instalación ejecutar el siguiente comando.

		sudo apt -f install

----------------------

#### Para desinstalar un archivo .deb dpkg, elimínelo con apt, escriba:

		sudo apt -f --purge remove  <nombre_del_paquete>
		sudo apt autoremove

> Si ya cuentas con nala instalado cambias **apt** por **nala**

		sudo nala remove <nombre_del_paquete>
		sudo nala purge <nombre_del_paquete>
		sudo nala autoremove
#### Conversión de archivos .rpm a formato .deb
Usaras Alien el conbertidor de paquetes, [[Alien de deb-rpm]]

-----------------------
#### Alias opcionales:
Dentro del archivo de configuración de fish en: **~/.bashrc** escribes asta la parte de abajo.

	ideb='sudo dpkg -i '
	
	rdeb='sudo apt-get remove'

Para mas comando del gestor [[APT gestor de paquetes]] y para [[Nala gestor de paquetes]]

------------------------
### Programas desintalados anteriormente

##### Desistalar Visual Estudio Code:

	sudo nala remove code
	sudo nala purge code
	rm -rf ~/.vscode ~/.config/Code
	sudo apt autoremove
##### Desistalar onedriver

	sudo nala remove onedriver
	sudo nala purge onedriver
	sudo rm -r ~/.cache/onedriver/*
	sudo rm -r ~/.local/share/onedriver/*
##### Desistalar Virtualbox

	sudo nala purge virtualbox* 
	sudo rm -r /usr/lib/virtualbox/
	sudo apt remove --purge *virtualbox*
	sudo rm -rf ~/"VirtualBox VMs"
	sudo rm -rf ~/.config/VirtualBox/
	sudo rm -rf /usr/lib/"virtualbox"
	sudo rm -rf 
	sudo apt autoremove

mié 17 abr 2024 13:34:25 CST
