---
color: var(--mk-color-purple)
---
Snap fue desarrollado por Canonical, la empresa detrás de Ubuntu. El proyecto Snap se inició en el año 2014 y fue lanzado oficialmente con Ubuntu 16.04 LTS en el año 2016. Canonical desarrolló Snap con el objetivo de proporcionar una forma fácil y segura de distribuir aplicaciones en diferentes distribuciones de Linux.

El comando snap permite instalar, configurar, actualizar y eliminar snaps.
Los snaps son paquetes que funcionan sobre muchas distribuciones Linux
diferentes, permitiendo la entrega y funcionamiento seguro de las
últimas aplicaciones y utilidades.

Uso: snap orden opciones

Las órdenes utilizadas habitualmente pueden clasificarse así:

              Básicos: find, info, install, remove, list
               ...más: refresh, revert, switch, disable, enable, create-cohort
            Historial: changes, tasks, abort, watch
             Demonios: services, start, stop, restart, logs
             Permisos: connections, interface, connect, disconnect
        Configuración: get, set, unset, wait
  Alias de aplicación: alias, aliases, unalias, prefer
               Cuenta: login, logout, whoami
         Instantáneas: saved, save, check-snapshot, restore, forget
          Dispositivo: model, remodel, reboot, recovery
           Desarrollo: download, pack, run, try
         Quota Groups: set-quota, remove-quota, quotas, quota
      Validation Sets: validate
            ... Other: warnings, okay, known, ack, version

Para obtener más información sobre alguna orden, ejecute «snap help orden
Para un breviario de todas las órdenes, ejecute «snap help --all».

---
snap list

#### Actualizar los paquetes snap 
`snap refresh`

-------

[instalar un paquete snap]

sudo snap install programma345t

-------
[desistalar paquetes snaps]

sudo snap remove paquete0001

****la desistalacion se puede acer desde la tienda de apps

snap --help