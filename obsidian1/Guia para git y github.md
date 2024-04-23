git y github

Repositorio de codigo de instrucciones tara terminal linux

# Crear carpeta en muestro home, abrimos visual estudio code y lo arrastramos ala ventana, confirmamos que es confiable.

instalamos la app de git con:
sudo apt install git

revisamos la vercion con
git version

# vincular la carpeta con (se una ves si ejecuta)
git init

Registrar nuevo usuario asociado a git:
git config --global user.name "ximenadmbs"

Es recomendable utilizar el correo asociado a Github
git config --global user.email "ximenacbd@yahoo.com"

revisar el estado de seguimientos documentos de git
git status -s

Agregamos a area de segimiento de cambios o de edicion al archivo a modificar.
git add index.html

agregamos Comentarios de modificacion y comentar lo que se trabajo:
git commit -m "Se creo el manual git index.html al repositorio"

Agregamos a todos los archivos al area de segimiento de cambios o de edicion al archivo a modificar.
git add .

regresar el archivo en alguna vercion anterior del tiemo por de los comentarios:
git log --oneline

// Viajamos al commit en específico f52f3da y eliminamos los cambios futuros
git reset --hard f52f3da
----------------------------------------------

Modificaciones posteriores apartir del respaldo en github:
-iniciamos el trabajo de modificacion del archivo con
git add archivo.mod

o todo el repocitorio con 
git add .

revisamos el status de los archivos 
git status -s

una ves acabada la modificacion que realisaremos en el archovo lo comentamos con
git commit -m "Se modifico x archivos"

subir el o los archivos al repositorioo de github
git push
