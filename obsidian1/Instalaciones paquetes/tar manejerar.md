.tar.gz		[tar -zxf      tar -zxvf      tar -xvzf
.tgz 		[tar -zxvf
.tar.bz2	[tar -jxf
.tbz 		[tar -jxvf
.tar.xz		[tar -Jxvf	


	tar zxf archivo.tar.gz

Para extraer archivos de almacenamiento a un directorio específico, utilice --directory( -C).

El siguiente ejemplo muestra cómo extraer el contenido del archivo en /home/noviello/files:

	tar -xf archive.tar.xz -C ~/files
	tar -Jxvf archive.tar.xz -C ~/files

$ cd CarpetaArchivo

sudo su

$ make

### Archivo de instalación de paquetes tar.gz 
jue 11 abr 2024 14:16:36 CST
Como correr un paquete que se consigio en formato tar.gz?
* Descomprimes es paquete y copias este scrip a lado de la carpeta del programa
* Cambia el nombre de la carpeta de *"Discord"* por el de el programa a instalar.
* lo ejecutas con ./INSTALL.sh

		sudo cp -r Discord/ /opt

* Para desista lar cambia el nombre de la carpeta *"Discord"* por el de el programa
* des comenta la linea (#) del archivo del scrip.

		sudo rm -r /opt/Discord/