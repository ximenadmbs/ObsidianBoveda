#### Instalación de paquetes
Ya lo tenemos instalado y disponible. Lo podemos utilizar para **==instalar y administrar paquetes==** en nuestro sistema. Veamos como funciona.
- Para **==instalar paquetes==** la sintaxis es muy sencilla

		sudo nala install [nombre_del_paquete]

#### Eliminación de paquetes
La sintaxis también es muy sencilla. Como ves el uso es igual a **==«apt»==**.

		sudo nala remove [nombre_del_paquete]

#### Eliminación de paquetes y configuración del software
Para esta acción utilizamos el **==comando «purge»==**, que desinstalará la aplicación y toda la configuración que hayamos hecho.

		sudo nala purge [nombre_del_paquete]

#### Actualización de paquetes
Para **==actualizar la lista de paquetes==** disponibles en los repositorios que tengamos en **==«sources.list»==** ejecutamos

		sudo nala update

#### Lista de paquetes disponibles
Para **==ver la lista de paquetes disponibles==** para instalar ejecuta

		nala list

- Nos da una lista muy larga de paquetes que puedes instalar.
Si añadimos la **==opción «upgradeable»==** nos dirá los paquetes que podemos actualizar.

		nala list --upgradeable

- Otras opciones que podemos utilizar con **==«list»==** son
	- **==–installed (-i)==** muestra solo los paquetes instalados en el sistema.
	- **==–nala-installed (-N)==** muestra los paquetes instalados usando nala.
	- **==–all-versions (-a) [nombre_del_paquete]==** enumera todas las versiones del paquete dado.
#### Actualización de paquetes
Si lo que queremos es actualizar paquetes ya instalados

		sudo nala upgrade

#### Historial de nala
Otra de las características que hemos comentado, es que **==«nala»==**, crea una lista de operaciones realizadas, asignándoles un identificador único **==«ID»==**. Podemos ver el **==historial de operaciones==** realizas con **==«nala»==**. Para ello ejecuta

		nala history
#### Limpiar el repositorio local
Para **==eliminar los ficheros de caché==** locales ejecuta

		sudo nala clean

#### Otros argumentos disponibles
Aún tenemos **==más opciones==**, las vemos

- ==–assume-yes (-y)== proporciona la respuesta afirmativa a todas las solicitudes y permite que el comando se ejecute de forma no interactiva.
- **==–debug y –verbose (-v)==** proporcionan información adicional relacionada con la depuración.
- **==–download-only (-d)==** le dice a «nala» que descargue paquetes pero no que los desempaquete ni instale.
- **==–help (-h)==** muestra la sección de ayuda.
- **==–no-autoremove==** desactiva la eliminación automática de paquetes.
- **==–no-update==** le indica a nala que omita la actualización de los paquetes.
- **==–raw-dpkg==** deshabilita el formateo y muestra la salida de «dpkg» sin procesar.
- **==–remove-essential==** permite eliminar todos los paquetes, incluidos los esenciales.
- **==–update==** le dice a nala que realice la actualización del paquete.
- **==–version==** muestra el número de versión de nala.

sáb 20 abr 2024 15:30:51 CST
