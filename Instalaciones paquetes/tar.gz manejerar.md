---
color: var(--mk-color-purple)
---
como se intala un paquete en formato .tar.gz y tar.bz2?

Un archivo `.tar.gz` es un archivo comprimido que generalmente contiene el código fuente de un programa. Para instalar un programa a partir de un archivo `.tar.gz`, debes descomprimirlo y luego compilar e instalar el código fuente. Aquí te dejo cómo hacerlo:

1. Primero, debes descomprimir el archivo con el comando `tar`. Supongamos que el archivo se llama `programa.tar.gz`:

```
   tar -xzf programa.tar.gz
```

Esto creará un directorio con el mismo nombre del archivo (sin la extensión `.tar.gz`), que contiene los archivos del código fuente.

2. Navega al directorio descomprimido:

```
   cd programa
```

3. Generalmente, el código fuente viene con un archivo de configuración que puedes ejecutar para preparar el código para la compilación. Ejecuta el siguiente comando:


```
   ./configure
```

4. Una vez que la configuración se haya completado correctamente, puedes compilar el código con el comando `make`:

```
   make
```

5. Después de que la compilación se haya completado correctamente, puedes instalar el programa con el comando `make install`. Generalmente, necesitarás permisos de superusuario para hacer esto, por lo que deberías usar `sudo`:

```
   sudo make install
```

Por favor, ten en cuenta que este es un procedimiento general y puede variar dependiendo del programa que estés instalando. Siempre es una buena idea leer el archivo `README` o `INSTALL` que generalmente se incluye con el código fuente para obtener instrucciones específicas de instalación.


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

		cd CarpetaArchivo

		sudo su

		make

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

### Firefox en tar.bz2
Si consigues el navegador directamente de la pagina de https://www.mozilla.org/es-MX/firefox/new/, te bajara este formato, esto sera bastante útil para #ubuntu ya que usa un #snap de firefox. y no es compatible asta donde se con los [[Webs Apps]] instalando la extencion [[Firefox Addon Pwas]] y al intentar este método, me resulto que se volvió a re-instalar el formato de #snap , y la versión que habia instalado en formato .deb lo oculto, así que optamos por esta alternativa.

Una vez lo descomprimes, abres el nautilis como super usuario, `sudo nautilus` , copias y pegar la carpeta en esta ubicación:

		/opt/firefox120
		
> 120 porque usaras la version 120

ahora solo das clic en el ejecutable con el nombre de `firefox` a secas.
para colocar su acceso directo usaras ==menu principal o (alacarte)
