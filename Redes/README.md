# 🏥 Proyecto de Redes: Infraestructura Pharma_Reverse

Este proyecto detalla la configuración de una red corporativa segmentada para una farmacéutica, garantizando la seguridad entre departamentos y el acceso controlado para invitados.

## 📍 1. Esquema Lógico y Físico
La red utiliza una topología **estrella extendida** con un diseño de **Router-on-a-Stick** para el enrutamiento entre VLANs.

* **Core:** Router central que gestiona el tráfico inter-vlan.
* **Acceso:** Switches por planta (Planta 0, Planta 1) que distribuyen las VLANs a los dispositivos finales.

## 📊 2. Tabla de Direccionamiento IP
| Dispositivo | Interfaz | VLAN | IP Gateway | Rango DHCP |
| :--- | :--- | :--- | :--- | :--- |
| Router | G0/0.10 | 10 (Admin) | 192.168.10.1 | .11 - .254 |
| Router | G0/0.70 | 70 (Almacén) | 192.168.70.1 | .11 - .254 |
| Router | G0/0.80 | 80 (Invitados) | 192.168.80.1 | .10 - .254 |
| Servidor | G0/0.60 | 60 (Server) | 192.168.60.1 | Estática (.10) |

## 🔐 3. Seguridad y ACLs
Se ha implementado una política de **mínimo privilegio**. La red de invitados (VLAN 80) tiene restringido el acceso a toda la red interna (`192.168.0.0/16`), permitiendo únicamente el tráfico hacia su Gateway para salida a internet.

**Configuración de la ACL 120:**
```bash
access-list 120 permit icmp 192.168.80.0 0.0.0.255 host 192.168.80.1
access-list 120 deny ip 192.168.80.0 0.0.0.255 192.168.0.0 0.0.255.255
access-list 120 permit ip any any
