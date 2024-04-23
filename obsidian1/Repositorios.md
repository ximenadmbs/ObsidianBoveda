--quitar repositorios con error:

sudo su
cd /etc/apt
ls
cd sources.list.d
ls

*elegir de la lista la direccion que proboca error con terminacion .list

rm -f repositorio.con.error.list  (enter)

------------------

QUITAR REPOSITORIO CON ERRORES:

ENTRAMOS ALA CARPETA CON:
cd /etc/apt
ls

ENTRAMOS ALA SIG CARPETA:
cd sources.list.d/
ls

BORAMOS EL ARCHIVO:
sudo rm -f ffmulticonverter-ubuntu-stable-jammy.list
ls


ACTUALISAMOS:
sudo apt update