---
color: var(--mk-color-purple)
---
desde la terminal la monta de discos
cuando al querer copiar un archivo no se puede en un disco interno montado como ntfs de windows.
revisamos las letras de los discos:

	sudo fdisk -l
	df -h

nos fijamos en la ruta
```
S.ficheros     Tamaño Usados  Disp Uso% Montado en
tmpfs            1.6G   3.7M  1.6G   1% /run
/dev/sdc3        117G    53G   58G  48% /
tmpfs            7.8G    35M  7.8G   1% /dev/shm
tmpfs            5.0M   4.0K  5.0M   1% /run/lock
/dev/sda1        146G    62G   78G  45% /media/ximena/linuxdata
/dev/sdc2        512M   6.1M  506M   2% /boot/efi
tmpfs            1.6G    20M  1.6G   2% /run/user/1000
onedriver        5.0G   922M  4.1G  19% /home/ximena/Onedriver
/dev/sdd1        932G   392G  540G  43% /mnt/DATA1
```


donde montaremos la particion:  /dev/sdd1 
de la sig forma: 

desmontamos y ejecutamos: 

	sudo umount /dev/sdd1
	
	sudo ntfsfix /dev/sdd1

```
| ximena@ximena-amdfx:~$ sudo ntfsfix /dev/sdd1
| Mounting volume... OK
| Processing of $MFT and $MFTMirr completed successfully.
| Checking the alternate boot sector... OK
| NTFS volume version is 3.1.
| NTFS partition /dev/sdd1 was processed successfully.
```

listo: 

---------montar====

	mkdir /mnt/hddrosa

	sudo mount /dev/sde2 /mnt/hddrosa

	sudo umount /dev/sde2

==========
Cambiar permisos :
	chmod 777 xina/

Propietarios :
	chown root:root ./xina

1
martes, 27 de septiembre de 2022

==================
### Permisos de montaje para discos
Para el disco del pc DATA1 desmontamos la unidad y ejecutamos:
- revisa que `sdd1`corresponde al punto de montaje

		df -h
		/dev/sdb1        932G   432G  500G  47% /mnt/DATA1
		sudo ntfsfix /dev/sdb1 
