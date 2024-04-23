Personalizar el pront de fish, pata que quede como la siguiente muestra
```
[13:23:15] ximenam@localhost /home/ximenam  
> 
```
- estando dentro de fish ejecuta el comando, y te habrira una pagina en firefox de configuracion

		fish_config
		
- ve  ala pestaña **prompt** , eliges *Informative* y boton set promt.
- cierras y #reinicia la terminal
#### Personaliza el pront de usuario de la terminal, ruta del archivo a editar

		user: /home/ximena/.bashrc

> usa el comando para actualizar

		source .bashrc

> muestra del pront
```
[05:55:04](ximena@amdfxlinux):[~]
🦄 $ 
```

copiar y pegas las siguientes lineas en la zona donde encuestes **PS1=**
```
PS1='\[\e[0m\][\[\e[0;38;5;245m\]\T\[\e[0m\]]\[\e[0m\](\[\e[0;1;38;5;171m\]\u\[\e[0m\]@\[\e[0;38;5;147m\]\H\[\e[0m\])\[\e[0m\]:\[\e[0;38;5;38m\][\[\e[0;38;5;38m\]\w\[\e[0;38;5;38m\]]\n\[\e[0m\]🦄 \[\e[0m\]\$ \[\e[0m\]'
```
----------------------------------------------------

#### Para el usuario root
root: sudo nano /root/.bashrc

> muestra del pront
```
[12:23:38](username@192.168.1.100):[~/bin]
💀 > 
```

 > quitar la #
 
		force_color_prompt=yes  

copiar y pegas las siguientes lineas en la zona donde encuestes **PS1=**
```
PS1='\[\e[0m\][\[\e[0;38;5;245m\]\T\[\e[0m\]]\[\e[0m\](\[\e[0;1;91m\]\u\[\e[0m\]@\[\e[0;38;5;124m\]$(ip route get 1.1.1.1 | awk -F"src " '"'"'NR==1{split($2,a," ");print a[1]}'"'"')\[\e[0m\])\[\e[0m\]:\[\e[0;38;5;38m\][\[\e[0;38;5;38m\]\w\[\e[0;38;5;38m\]]\n\[\e[0m\]💀 \[\e[0m\]> \[\e[0m\]'
```

source .bashrc     [actuasisar]