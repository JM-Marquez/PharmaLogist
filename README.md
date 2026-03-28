# Proyecto Intermodular ASIR - PharmaLogist-Reverse

Este proyecto lo he sacado de mis más de 20 años trabajando en logística. La idea es montar toda la parte informática que necesita una planta real de logística inversa de medicamentos, donde la trazabilidad y que no se pierdan los datos de los lotes es lo más importante.

## ¿Qué vamos a montar?
El objetivo es que la planta pueda gestionar bien las devoluciones y las caducidades que llegan de las farmacias. Para eso necesito una red que no falle cuando estamos clasificando mercancía y que los datos estén bien protegidos.

### Los equipos que vamos a usar (Hardware):
* **En la oficina:** 4 PCs para administración y una impresora multifunción para los albaranes.
* **En el almacén (Segregación):** 6 PCs fijos que van por cable para que no pierdan conexión. Estos PCs van conectados a **básculas** y a 2 **impresoras de etiquetas** térmicas para marcar lo que llega.
* **En pista:** 10 PDAs por Wi-Fi para que los operarios escaneen en los muelles y las estanterías.
* **El "cerebro":** Un servidor tipo Rack para las máquinas virtuales, un Switch gestionable para separar las redes y un Firewall para la seguridad.

### Redes y Nube:
* **Separación de redes (VLANs):** Vamos a separar el tráfico de la oficina del de las PDAs del almacén. Así, si una PDA da problemas, no me tumba la facturación ni los servidores.
* **Copia en la Nube:** Usaremos Azure o AWS para tener un backup fuera de la oficina por si pasa algo con el servidor local.

### Seguridad y Control:
* **Permisos:** Control de quién entra a cada carpeta. Un operario de segregación solo mete datos, pero no puede borrar el historial de destrucciones, por ejemplo.
* **Contraseñas:** Políticas para que los datos de los medicamentos cumplan con lo que pide el sector farmacéutico.

### Datos y XML:
* **Base de datos (SQL):** Para saber en todo momento dónde está cada lote y si es apto o va a destrucción.
* **Archivos XML:** Para generar los informes de trazabilidad que hay que enviar a Sanidad.

---
*Estado: Preparando el direccionamiento IP de los PCs y las PDAs.*
