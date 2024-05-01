> Rutas de Carpetas Usuario
#### Poner archivos en carpetas
- Por alguna extraña razón al instalar y desinstalar paquetes **snap**, esta barre con las carpetas de usuario que estén vacías, rompiendo y dejando inservibles como **enlace simbólico rotos**, así que de inicio ve poniendo un archivo oculto en todas las carpetas **.txt** sin contenido, de mayor importancia en la carpeta **Escritorio**.

		cd ~/Escritorio/ ; touch .txt && cd ~/Descargas/ ; touch .txt && cd ~/Documentos/ ; touch .txt && cd ~/Imágenes/ ; touch .txt && cd ~/Música/ ; touch .txt && cd ~/Público/ ; touch .txt && cd ~/Vídeos/ ; touch .txt

Edita las rutas que fueron perdidas delas carpetas home, para abrir el archivo **user-dirs.dirs** :

	cd ~/.config/user-dirs.dirs

Abrir el archivo y modificar las direcciones en comillas "$HOME/Escritorio" y cerrar sesion y entrer de nuvo.


Editas:

	sudo gedit ~/.config/user-dirs.dirs

> Este es el contenido por default
```
XDG_DESKTOP_DIR="$HOME/Escritorio"
XDG_DOWNLOAD_DIR="$HOME/Descargas"
XDG_TEMPLATES_DIR="$HOME/Plantillas"
XDG_PUBLICSHARE_DIR="$HOME/Público"
XDG_DOCUMENTS_DIR="$HOME/Documentos"
XDG_MUSIC_DIR="$HOME/Música"
XDG_PICTURES_DIR="$HOME/Imágenes"
XDG_VIDEOS_DIR="$HOME/Vídeos"
```