
# 🏥 Infraestructura de Red: Pharma_Reverse

Este proyecto detalla el diseño, configuración y validación de una red corporativa segmentada para la industria farmacéutica **Pharma_Reverse**, utilizando el modelo **Router-on-a-Stick** para garantizar la seguridad y el control del tráfico inter-VLAN.

---

## 📊 1. Tabla de Direccionamiento IP y Segmentación (VLANs)

| VLAN | Nombre | Departamento | Red / Máscara | Gateway | Uso de IPs Estáticas |
| :--- | :--- | :--- | :--- | :--- | :--- |
| 10 | ADMIN | Administración | 192.168.10.0/24 | .1 | Impresora Admin (.5) |
| 20 | DIR | Dirección | 192.168.20.0/24 | .1 | Impresora Dirección (.5) |
| 30 | DEV | Desarrollo | 192.168.30.0/24 | .1 |  |
| 40 | SOPORTE | Soporte Técnico | 192.168.40.0/24 | .1 |  |
| 50 | FORMACION | Aula Alumnos | 192.168.50.0/24 | .1 |  |
| 60 | SRV | Servidores | 192.168.60.0/24 | .1 | WEB (.10) / Backup (.11) |
| 70 | ALMACEN-A.POINT | Logística | 192.168.70.0/24 | .1 | Zebras (.5 ) |
| 80 | WIFI-INVITADOS | Invitados | 192.168.80.0/24 | .1 | WiFi Público (Aislado) |
| 99 | MGMT | Gestión Nativa | 192.168.99.0/24 | .1 | Switches / Router |

---

## ⚙️ 2. Configuraciones Relevantes

## 🛡️ Justificación de Diseño: Router-on-a-Stick
Se ha optado por la arquitectura **Router-on-a-Stick** utilizando un router Cisco 2911 y subinterfaces encapsuladas en **802.1Q**.

> **Motivación:** Esta opción permite un control centralizado del tráfico mediante Listas de Control de Acceso (ACLs) extendidas, facilitando la auditoría de seguridad y el aislamiento total de la red de invitados.


## 🔒 Políticas de Seguridad (ACLs Extendidas)
Se han implementado las siguientes restricciones para cumplir con los requisitos del proyecto:

Bloqueo Aula → Dirección: Denegado el tráfico desde VLAN 50 a VLAN 20.

Bloqueo Desarrollo → Administración: Denegado el tráfico desde VLAN 30 a VLAN 10.

Acceso a Servidores: Permitido exclusivamente desde Administración (VLAN 10) a Servidores (VLAN 60).

Aislamiento Guest: La VLAN 80 solo tiene permitido el acceso a Internet, bloqueando cualquier intento de conexión a la red interna corporativa (192.168.0.0/16).

Gestión Segura: Solo la VLAN 99 tiene acceso a las líneas VTY de los dispositivos de red para tareas de administración.

Se ha implementado una arquitectura de red inalámbrica dual para mitigar riesgos de interferencia y acceso no autorizado. La red de Empresa (VLAN 70) da soporte exclusivo a dispositivos críticos como PDAs y terminales de empleados, mientras que la red de Invitados (VLAN 80) queda confinada a un hardware independiente, gestionado por una ACL estricta que impide el salto a cualquier otro segmento de la planta

## 📡 Infraestructura Inalámbrica
SSID_EMPRESA: Mapeado a la VLAN 70 de empleados con seguridad WPA2-PSK.

SSID_INVITADOS: Mapeado a la VLAN 80, configurado con aislamiento de red para tráfico únicamente hacia WAN.

## 🧪 3. Pruebas de Verificación (Checklist)
[x] Asignación DHCP: Los terminales obtienen IP automáticamente en sus rangos correspondientes (ej. .11 en adelante).

[x] Conectividad Interna: Pings exitosos entre dispositivos de la misma VLAN.

[x] Inter-VLAN Routing: Tráfico fluido entre departamentos permitidos.

[x] Bloqueo ACL: Verificación de "Destination host unreachable" al intentar acceder desde los dispositivos bloqueados.


## 🏁 4. Conclusiones
La red de Pharma_Reverse representa una infraestructura robusta y escalable permitiendo ampliar los departamentos en caso de necesidad. La separación de la base de datos de medicamentos en el servidor dedicado (.11) y el uso de impresoras industriales Zebra con direccionamiento estático asegura la continuidad de la cadena de suministro.la implementación de access point para el almacén, facilitan la movilidad y escalabilidad dentro del mismo, permitiendo adaptaciones si fueran necesarias. Las políticas de seguridad mediante ACLs garantizan que la información sensible de Dirección y Desarrollo permanezca íntegra y confidencial.
Se han excluido las primeras 10 direcciones de cada pool DHCP, para evitar que el router asigne por error una IP a un PC que ya está siendo usada de forma estática por un servidor o impresora. Esto evita conflictos de direccionamiento y asegura que las políticas de seguridad aplicadas mediante ACLs mantengan su integridad, garantizando que los recursos de backup y las impresoras sean siempre localizables por los terminales de usuario.
