#### Cambiar permiso edición de una carpeta y su contenido:

		sudo chmod o+w . -R
#### Crear la carpeta:

		mkdir ~/carpeta
#### Crear enlaces simbólicos
Como ejemplo **carpetaLink** sera creado como enlace simbólico:
Desde la teminal escrives *sudo ln -s* espacio la ruta dela carpeta de enlace */var/spool/cups-pdf/ximenam* espacio y la ruta donde se creara el enlace **~/** para guardar en la carpeta raiz del usuario.

		sudo ln -s /carpeta/carpeta ~/carpetaLink
#### Copiar una carpeta a una ubicación del sistema:

		sudo cp -r carpeta/carpeta/ /opt
#### Eliminar una carpeta con todo su contenido:

		sudo rm -r /opt/carpeta/
#### Mover todos los archivos ala carpeta actual.

		mv carpeta1/* .
#### Borrar todo el contenido dentro de la carpeta

		rm carperta1/*

