
Microsoft DiskPart versión 10.0.19041.964

Copyright (C) Microsoft Corporation.
En el equipo: PCAMDFX

DISKPART> LIST DISK

  Núm Disco  Estado      Tamaño   Disp     Din  Gpt
  ---------- ----------  -------  -------  ---  ---
  Disco 0    En línea        111 GB  1024 KB
  Disco 1    En línea        931 GB      0 B
  Disco 2    En línea        149 GB      0 B
  Disco 3    En línea        931 GB      0 B
  Disco 4    En línea        111 GB   111 GB        *

DISKPART> SELECT DISK 4

El disco 4 es ahora el disco seleccionado.

DISKPART> LIST PARTITION

  Núm Partición  Tipo              Tamaño   Desplazamiento
  -------------  ----------------  -------  ---------------
  Partición 1    Sistema            497 MB  2048 KB

DISKPART> SELECT PARTITION 1

La partición 1 es ahora la partición seleccionada.

DISKPART> DELETE PARTITION OVERRIDE

DiskPart eliminó correctamente la partición seleccionada.

DISKPART>