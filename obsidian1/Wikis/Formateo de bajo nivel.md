--formateo de USB
-enlistar las unidades
lsblk

-desmontar unidad
sudo umount /dev/sdb

-aplicar formato
sudo mkfs.vfat -F 32 -n USBking /dev/sdb
i

-------------------------

--Instlalar:

sudo apt-get install pv

--elejir el codigo de la unidad

sudo lsblk -f

--ejecutar el formato (lo **sdb1** son el codigo dela unidad a borar).

sudo dd if=/dev/urandom |pv| sudo dd of=/dev/sdb1 bs=4096

---------------------
Crear Particiones
Nueva tabla de particiones, Ms'Dos
fat32, far formato

11.59

--------------
[Formato rapido]

-elejir el codigo de la unidad-

# ver unidades usadas en sistema

df -h

sudo lsblk -f

sudo umount /dev/sde1    [para desmontar la unidad]

sudo mkfs.vfat -F 32 -n nombre /dev/sd??    [para formato rapido]
sudo mkfs.ext4 -n nombre /dev/sd??    [para formato rapido]

------------------------
[Formato lento o de bajo nivel]

[Instlalar:]

sudo apt-get install pv

[ejecutar el comando ( **** son el codigo dela unidad a borar "sdda").]

sudo dd if=/dev/urandom |pv| sudo dd of=/dev/**** bs=4096

---------------------
Crear Particiones
Nueva tabla de particiones, Ms'Dos
fat32, far formato