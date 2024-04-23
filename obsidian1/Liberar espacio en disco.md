para cualquier distribucion por medio de comandos en laterminal

### Archivos pos-liberación de espacio en disco.
vie 12 abr 2024 14:16:36 CST
Nombras el archivo o los archivos como **.bak** para dejarlos como archivo de respaldos por si su eliminación pueda romper algo al modificar el o los archivos, cuando la modificación del archivo sea correcto se nombra como **.bak~** para una limpieza posterior masiva ejecutando un scrip de limpieza, ejemplos.
* .wine.zip.bak		*-una carpeta comprimida **wine** en formato .zip y en espera su funcionamiento .bak*
* .wine.zip.bak~	         *-si ya la modificación a trascurrido correctamente ya se puede pensar en su eliminación, esto hará que se oculte el archivo, visualiza con las teclas,* **control + h**

#### Para ubuntu comandos
Se esta iniciando la limpieza de archivos en el Cache y se ejutara la instruccion clean y autoremove.
	
	sudo du -sh  /var/cache/apt
Se limpio la Cache

	sudo nala clean ; sudo apt autoclean ; sudo apt autoremove
Se limpio el Sistema, se ejecuto clean y autoremove.

#### Limpieza de la papelera de usuario
para ubuntu y opensuse
Se esta iniciando la limpieza profunda para liberar espacio en disco, se basearala papelera de usuario, se eliminaran miniaturas del imagenes, y respaldos de archivos de imagenes .***~

	sudo du -sh ~/.cache/thumbnails ; rm -rf  ~/.cache/thumbnails/* 
Se limpio Thumbnails (miniaturas).

	ls ~/.local/share/Trash/files ; sudo rm -rf ~/.local/share/Trash/*
Se baseo la paperera de usuario. 