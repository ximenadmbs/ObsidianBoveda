### Aplicaciones web para ubuntu
En firefox instala la intencional pwas:  https://addons.mozilla.org/es/firefox/addon/pwas-for-firefox/
- ==No funciona en la vercion de Firefox de **snap** ==,desinstala la vercion snap e instala la vercion deb [[Desistalar Firefox version Snap]], en algun momento se va a volver a reinstalar la vercion snap, pero en cualquier webapp ya creada de podra instalar el plug in.
* Lees las instrucciones de el programa y pegas las siguientes instrucciones. y ejecutar el programa **elegir la instalación para ubuntu**:

```bash
#!/bin/bash
	# Install required packages for third-party repositories
sudo apt update
sudo apt install debian-archive-keyring # Debian-only
sudo apt install curl gpg apt-transport-https

# Import GPG key and enable the repository
curl -fsSL https://packagecloud.io/filips/FirefoxPWA/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/firefoxpwa-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/firefoxpwa-keyring.gpg] https://packagecloud.io/filips/FirefoxPWA/any any main" | sudo tee /etc/apt/sources.list.d/firefoxpwa.list > /dev/null

# Refresh repositories and install the package
sudo apt update
sudo apt install firefoxpwa
```
- Una vez instalado el paquete, debería pasar automáticamente al siguiente paso. Si nada cambia después de unos 30 segundos, reinicie el navegador.
- Pagina del proyecto. https://pwasforfirefox.filips.si/

- la alternativa a **webapp-manager** es msedge, para crear una aplicaciones abres edge y buscas el sitio web por ejemplo https://www.ciciai.com/chat/ , y en los ... de la parte inferior derecha ve a aplicaciones y a **instalar**, te preguntar aceptas y listo.
- Paginas direcciones para la creación de webapps en [[WebsApps]]