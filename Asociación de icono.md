## Crear una asociación de icono a extensiones en el que deseamos cambiar el asignado por defecto
Lo primero que hago es abrir el explorador de archivos con permisos de súper usuario,

```
sudo nautilus
```
y navegas hasta la carpeta `/usr/share/mime/packages/` o bien directamente añadimos esta ruta a la orden en la terminal y así directamente se nos abre esta carpeta en el explorador de archivos.

```
sudo nautilus /usr/share/mime/packages/
```
Vemos que en esta carpeta hay una serie de archivos con la extensión .xml y esto es lo que haremos ahora nosotros, crear un archivo .xml para los archivos .hc para veracrypt con el siguiente contenido:

```
<?xml version="1.0" encoding="UTF-8"?>
<mime-info xmlns="http://www.freedesktop.org/standards/shared-mime-info">
  <mime-type type="application/x-veracrypt-volume">
    <comment>veracrypt-file</comment>
    <glob pattern="*.HC"/>
    <glob pattern="*.hc"/>
    <icon name="veracrypt-icon"/>
  </mime-type>
</mime-info>
```

las lineas personalizables son
```
<mime-type type="application/x-veracrypt-volume">
    <comment>veracrypt-file</comment>
    <glob pattern="*.HC"/>
    <glob pattern="*.hc"/>
    <icon name="veracrypt-icon"/>
```

`"application/x-veracrypt-volume"`corresponde de la informacion que arroja la ventana de propiedades del archivo.
![[Captura desde 2024-04-28 17-23-42.png]]
`"*.HC" y "*.hc"`   se refiere ala extencion del archivo
`"veracrypt-icon"`se refiere al nombre de el icono que estará en la carpeta del tema de iconos que estés usando, en mi temas es *Atura2024* que se encuentra en la siguiente ruta:
`~/.icons/Atura2024/mimetypes/scalable/

#### Creas el archivo
una ves que ayas copiado el contenido y personalizado el contenido lo guardas como ejemplo: `veracrypt-icon.xml`y lo copias y pegas en: `/usr/share/mime/packages/` desde el nautilus como super usuario.
![[Captura desde 2024-04-28 18-23-56.png]]
### Actualizar los tipos Mime para que surjan efecto los cambios

Ahora ya solo nos falta actualizar los tipos mime para que los archivos .txt se vean con el icono elegido. Esto lo hacemos con el siguiente comando:

```
sudo update-mime-database /usr/share/mime
```

### mime-type de los archivos conocidos
| Extencion | mime-type                       | icono                        |
| --------- | ------------------------------- | ---------------------------- |
| .tar.xz   | application/x-xz-compressed-tar |                              |
| .rpm      | application/x-rpm               |                              |
| .tar      | application/x-tar               |                              |
| .hc       | application/x-veracrypt-volume  | veracrypt-icon               |
| .ova      | application/ovf                 | application-x-virtualbox-ova |
| .dwg      | image/vnd.dwg                   | image-x-vnd-dxf-dwg          |
| .dxf      | image/vnd.dxf                   | image-x-vnd-dxf-dwg          |

Fuente: https://rafamartorell.wordpress.com/2019/01/07/asignar-un-icono-personalizado-a-una-extension-de-archivo/