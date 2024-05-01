Para mas comando y mas del instalador de paquetes.
https://es.opensuse.org/Zypper

### Para buscar programas en #openSUSE  
desde la terminal, puedes utilizar el gestor de paquetes `zypper`. Aquí te dejo cómo hacerlo:

1. Abre una terminal.
    
2. Para buscar un programa, utiliza el comando `zypper search`. Por ejemplo, para buscar el programa `htop`, puedes usar:

```
   zypper search htop
```

Este comando buscará en los repositorios configurados cualquier paquete que coincida con el término de búsqueda `htop`.

###  Instalar por terminal .rpm
* wine 8.0
```
sudo zypper install wine
o
sudo zypper in wine
```

- Usar el siguiente comando para desinstalar.
```
sudo zypper remove wine
sudo zypper remove --clean-deps wine
```
- Para borrar **.wine** del la carpeta de usuario **~/**

### Actualización del sistema, 
puedes usar **update o up** para actualizar , **refresh o ref** y **dist-upgrade o dup**:
```
sudo zypper refresh
sudo zypper update
sudo zypper dist-upgrade

sudo zypper ref && sudo zypper up && sudo zypper dup
```
### El comando de ayuda de zypper en la consola es:

```
zypper --help
```

Al ejecutar este comando, se mostrará en la consola una lista de opciones y comandos disponibles para utilizar con zypper. También se proporcionará una breve descripción de cada opción y comando.

Además, si deseas obtener ayuda específica sobre un comando en particular, puedes utilizar el siguiente formato:

```
zypper <comando> --help
```

Reemplaza `<comando>` por el nombre del comando sobre el cual deseas obtener más información.

Por ejemplo, si deseas obtener ayuda sobre el comando de instalación, puedes ejecutar:

```
zypper install --help
```

Esto mostrará información detallada sobre cómo utilizar el comando de instalación de zypper.

### Descargar el paquete
En #openSUSE, puedes utilizar el comando `zypper` para descargar un paquete desde los repositorios. Aquí tienes cómo hacerlo:

```
sudo zypper download nombre_del_paquete
```

Reemplaza "nombre_del_paquete" por el nombre real del paquete que deseas descargar. Este comando descargará el paquete .rpm del repositorio y lo guardará en el directorio actual.

Esto descargará el archivo .rpm del paquete `nombre_del_paquete` en el directorio actual. Luego puedes instalarlo con `rpm -i`:

```
sudo rpm -i nombre_del_paquete.rpm
```

### Para aceptar una instalación en Zypper, 
puedes utilizar la opción "--non-interactive" o "-y". Estas opciones permiten que la instalación se realice sin necesidad de interacción manual.

Puedes utilizar el siguiente comando para aceptar una instalación en Zypper:

```
sudo zypper install --non-interactive <nombre_del_paquete>
```

O también puedes usar la opción abreviada "-y":

```
sudo zypper install -y <nombre_del_paquete>
```

Reemplaza "<nombre_del_paquete>" con el nombre del paquete que deseas instalar. Al utilizar la opción "--non-interactive" o "-y", Zypper instalará automáticamente el paquete sin solicitar confirmación adicional.

###  Dialogo de la terminal al instalar
¿Desea rechazar la clave, confiar en ella temporalmente o confiar en ella siempre?
En el diálogo de la terminal que mencionas, las opciones para aceptar la clave son las siguientes:

- "r": Rechazar la clave. Esto significa que no se confiará en la clave y no se establecerá una conexión segura.
- "t": Confiar en la clave temporalmente. Esto permitirá establecer una conexión segura solo para la sesión actual, pero en futuras conexiones se volverá a solicitar la confirmación de la clave.
- "a": Confiar en la clave siempre. Esto permitirá establecer una conexión segura y confiar en la clave de forma permanente, sin solicitar confirmación en futuras conexiones.

Si no estás seguro de qué opción elegir, la opción predeterminada es "r" (rechazar la clave). En la mayoría de los casos, es recomendable revisar cuidadosamente la clave y asegurarse de que sea legítima antes de confiar en ella temporal o permanentemente.

mar 23 abr 2024 13:04:45 CST
