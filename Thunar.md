## Gestor de Arhivos Thunar
instalacion de thunar en ubuntu 24.04con gnome, dede la tienda de aplicaciones o dede la terminal:
```
sudo nala install thunar
```

### Acciones personalizadas en thunar. 
Primeramente veremos los pasos detallados para definir una acción y a posteriori citaremos la serie de comandos a introducir para ir crear distintas acciones personalizas.
	PASO 1. Abrir el gestor de Arhivos Thunar
	PASO 2. Ir al menu Editar y elegir Configurar acciones personalizadas
	PASO 3. Le damos al símbolo + que podéis ver en la imagen inferior:
	PASO 4. Introducir los datos pertinentes en la pestaña básico:
	[![acciones personalizadas thunar 5](https://geekland.eu/wp-content/uploads/2012/12/4-300x294.png "acciones personalizadas thunar 5")](https://geekland.eu/wp-content/uploads/2012/12/4.png)

### Abrir una terminal aqui

En el caso que estamos navegando con thunar y deseemos abrir una terminal en modo root en la ruta que estamos en este momento:
**Campo Nombre y Descripción:** `Abrir un terminal aquí
**Campo Comando:** `tilix -w %f
En la pestaña **condiciones de apariencia** marcar las siguientes opciones: ==Directorios==

### Crear Un enlace simbólico o acceso directo

El ejemplo que acabamos de ver es el siguiente:
**Campo Nombre** y Descripción: `Crear enlace simbólico
**Campo Comando:** `ln -s %f '%n (enlace)'
En la pestaña **condiciones de apariencia** marcar las siguientes opciones: ==Directorios, Archivos de texto==

### Abrir una determinada carpeta con Nautilus

Por lo tanto si estoy en Thunar y quiero abrir la misma ubicación de Thunar en Nautilus utilizo esta acción personalizada:
**Campo Nombre y Descripción:** `Abrir con nautilus
**Campo Comando:** `nautilus --no-desktop
En la pestaña **condiciones de apariencia** marcar las siguientes opciones: ==Directorios==

### Abrir un directorio como root

En el caso que deseemos abrir una carpeta en modo root:
**Campo Nombre:** y Descripción `Abrir directorio como root
**Campo Comando:** `pkexec thunar %F
En la pestaña **condiciones de apariencia** marcar las siguientes opciones: ==Directorios==

Fuente : https://geekland.eu/acciones-personalizadas-en-thunar/

 