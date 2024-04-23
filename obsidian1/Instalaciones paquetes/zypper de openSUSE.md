Para mas comando y mas del instalador de paquetes.
https://es.opensuse.org/Zypper
Para buscar programas en openSUSE desde la terminal, puedes utilizar el gestor de paquetes `zypper`. Aquí te dejo cómo hacerlo:

1. Abre una terminal.
    
2. Para buscar un programa, utiliza el comando `zypper search`. Por ejemplo, para buscar el programa `htop`, puedes usar:
    flameshot

```
   zypper search htop
```

Este comando buscará en los repositorios configurados cualquier paquete que coincida con el término de búsqueda `htop`.

#####  Instalar por terminal .rpm
* wine 8.0

		sudo zypper install wine
		o
		sudo zypper in wine

	* usar el siguiente comando para desinstalar.

			sudo zypper remove wine
			sudo zypper remove --clean-deps wine
		
		* Para borrar **.wine** del la carpeta de usuario **~/**