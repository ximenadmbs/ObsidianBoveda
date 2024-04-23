#!/bin/bash
MÉTODO 4: PROGRAMAR EL APAGADO DEL ORDENADOR DE FORMA AUTOMÁTICA MEDIANTE CRON
Finalmente existe una ultima opción para programar el apagado del ordenador. Esta opción es utilizando cron. Posiblemente sea la opción que presente más opciones de configuración, pero con toda seguridad es la opción menos amigable de configurar.

Para programar el apagado de nuestro equipo con cron tenemos que ejecutar el siguiente comando en la terminal:

# sudo crontab -e
Una vez abierto el editor de texto tenemos que editar el contenido del fichero crontab para programar el apagado del ordenador. La estructura a usar para programar el apagado del ordenador es la siguiente:

#m h dom mon dow /sbin/shutdown -h now
Cada una de las partes en color rojo de este comando las tendréis que reemplazar por los siguientes términos:

"m: Reemplazar m por un número entre el 0 y el 59. Este número indica el minuto en el que queremos que se apague nuestro ordenador.

h: Reemplazar h por un número entre el 0 y el 23. Este número indica la hora en la que queremos que se apague nuestro ordenador.

dom: Reemplazar dom por un número entre el 1 y el 31. Este número indica el día del mes en el que queremos que se apague nuestro ordenador. Si queremos que nuestro ordenador se apague todos los días del mes hay que reemplazar m por un *

mon: Reemplazar mon por un número entre el 1 y el 12. Este número indica el número de mes en el que queremos que se apague nuestro ordenador. Si queremos que nuestro ordenador se apague todos los meses hay que reemplazar mon por un *

dow: Reemplazar dow por un número entre el 0 y el 6. Este número indica el día de la semana en el que queremos que se apague nuestro ordenador. Si escribimos un cero se apagará el domingo y si un 6 se apagará el sábado. Si queremos que nuestro ordenador se apague todos los días deberemos reemplazar dow por un *."

/sbin/shutdown -h now: Esta parte del comando no hay que reemplazarla. Esta parte del comando es la que hace que el ordenador se apague una vez transcurrido el tiempo fijado en los parámetros anteriores.

Algunos ejemplos de comandos a introducir en el archivo crontab para programar el apagado de nuestro ordenador son los siguientes:

Apagar el ordenador todos los días a las 23 horas y 30 minutos
Si queremos programar el apagado del ordenador todos los días a las 23:30 horas, tal y como se puede ver en la captura de pantalla, tenemos que introducir el siguiente comando dentro del archivo contrab:

#30 23 * * * /sbin/shutdown -h now
Programar apagado con Cron

Una vez introducido el comando guardamos los cambios y cerramos el fichero.

Para que los cambios surjan efecto tenemos que reiniciar el servicio cron. Para ello ejecutamos el siguiente comando en la terminal:

#sudo service cron restart
Una vez reiniciado el servicio el proceso ha finalizado.




.
