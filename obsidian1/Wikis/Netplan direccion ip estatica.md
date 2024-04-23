#### Para cambiar la direccion ip a una direccion estatica, el cervidor es 192.168.100.22/24
Puerta de enlase al router es 192.168.100.1
Son los dos unicos para metros que se alteran

El mobmre del archivo sera 00-installer-config.yaml
La rura en: /etc/netplan

````
network:
  renderer: networkd
  ethernets:
    enp6s0:
      addresses:
        - 192.168.100.22/24
      nameservers:
        addresses: [1.1.1.1, 8.8.8.8]
      routes:
        - to: default
          via: 192.168.100.1
  version: 2
  ````