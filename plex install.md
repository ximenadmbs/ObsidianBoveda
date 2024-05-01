---
color: var(--mk-color-purple)
---
preparar el servicio dse plex

sudo apt update
sudo apt upgrade
sudo apt install apt-transport-https curl wget -y


sudo wget -O- https://downloads.plex.tv/plex-keys/PlexSign.key | gpg --dearmor | sudo tee /usr/share/keyrings/plex.gpg

echo deb [signed-by=/usr/share/keyrings/plex.gpg] https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list

sudo apt update

sudo apt install plexmediaserver -y

systemctl status plexmediaserver.service



sudo apt install ufw
sudo ufw status

sudo ufw allow OpenSSH

sudo ufw allow 32400

sudo ufw enable

sudo ufw status


=-----
xenon@xenon-desktop:~/Descargas$ sudo ufw status
Estado: inactivo
xenon@xenon-desktop:~/Descargas$ sudo ufw allow OpenSSH
Reglas actualizadas
Reglas actualizadas (v6)
xenon@xenon-desktop:~/Descargas$ sudo ufw allow 32400
Reglas actualizadas
Reglas actualizadas (v6)
xenon@xenon-desktop:~/Descargas$ sudo ufw enable
El cortafuegos está activo y habilitado en el arranque del sistema
xenon@xenon-desktop:~/Descargas$ sudo ufw status
Estado: activo

Hasta                      Acción      Desde
-----                      ------      -----
Samba                      ALLOW       Anywhere                  
OpenSSH                    ALLOW       Anywhere                  
32400                      ALLOW       Anywhere                  
Samba (v6)                 ALLOW       Anywhere (v6)             
OpenSSH (v6)               ALLOW       Anywhere (v6)             
32400 (v6)                 ALLOW       Anywhere (v6)    

--------

192.168.100.22:32400/web
