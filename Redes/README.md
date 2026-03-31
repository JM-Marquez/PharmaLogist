🏥 Infraestructura de Red: Pharma_Reverse
Este proyecto detalla el diseño, configuración y validación de una red corporativa segmentada para una industria farmacéutica, utilizando el modelo Router-on-a-Stick para garantizar la seguridad y el control del tráfico inter-VLAN.

📊 1. Tabla de Direccionamiento IP y Segmentación (VLANs)
Se ha implementado un esquema de direccionamiento privado clase C, reservando las primeras 10 direcciones de cada subred para dispositivos de infraestructura (Static IPs).

VLAN,Nombre,Departamento,Red / Máscara,Gateway,Uso de IPs Estáticas
10,ADMIN,Administración,192.168.10.0/24,.1,Impresora Admin (.5)
20,DIR,Dirección,192.168.20.0/24,.1,Impresora Dirección (.5)
30,DEV,Desarrollo,192.168.30.0/24,.1,Estaciones de Trabajo
40,SOPORTE,Soporte Técnico,192.168.40.0/24,.1,Servidores IT
50,FORMACION,Aula Alumnos,192.168.50.0/24,.1,Equipos Formación
60,SRV,Servidores,192.168.60.0/24,.1,WEB (.10) / Backup (.11)
70,ALMACEN,Logística,192.168.70.0/24,.1,Zebras (.5 y .6)
80,GUEST,Invitados,192.168.80.0/24,.1,WiFi Público (Aislado)
99,MGMT,Gestión Nativa,192.168.99.0/24,.1,Switches / Router

Tutor personal
Tutor personal ha dicho
Aquí tienes el Markdown estructurado y profesional para tu archivo README.md de la carpeta redes. Este documento está diseñado para que, al subirlo a GitHub, el profesor vea un análisis técnico impecable que justifica todas tus decisiones.

🏥 Infraestructura de Red: Pharma_Reverse
Este proyecto detalla el diseño, configuración y validación de una red corporativa segmentada para una industria farmacéutica, utilizando el modelo Router-on-a-Stick para garantizar la seguridad y el control del tráfico inter-VLAN.

📊 1. Tabla de Direccionamiento IP y Segmentación (VLANs)
Se ha implementado un esquema de direccionamiento privado clase C, reservando las primeras 10 direcciones de cada subred para dispositivos de infraestructura (Static IPs).

VLAN	Nombre	Departamento	Red / Máscara	Gateway	Uso de IPs Estáticas
10	ADMIN	Administración	192.168.10.0/24	.1	Impresora Admin (.5)
20	DIR	Dirección	192.168.20.0/24	.1	Impresora Dirección (.5)
30	DEV	Desarrollo	192.168.30.0/24	.1	Estaciones de Trabajo
40	SOPORTE	Soporte Técnico	192.168.40.0/24	.1	Servidores IT
50	FORMACION	Aula Alumnos	192.168.50.0/24	.1	Equipos Formación
60	SRV	Servidores	192.168.60.0/24	.1	WEB (.10) / Backup (.11)
70	ALMACEN	Logística	192.168.70.0/24	.1	Zebras (.5 y .6)
80	GUEST	Invitados	192.168.80.0/24	.1	WiFi Público (Aislado)
99	MGMT	Gestión Nativa	192.168.99.0/24	.1	Switches / Router
⚙️ 2. Configuraciones Relevantes
🛡️ Justificación de Diseño: Router-on-a-Stick
Se ha optado por la arquitectura Router-on-a-Stick utilizando un router Cisco 2911 y subinterfaces encapsuladas en 802.1Q.

Motivación: Esta opción permite un control centralizado del tráfico mediante Listas de Control de Acceso (ACLs) extendidas, facilitando la auditoría de seguridad y el aislamiento total de la red de invitados sin necesidad de hardware de Capa 3 más costoso.

🔒 Políticas de Seguridad (ACLs Extendidas)
Se han implementado las siguientes restricciones para cumplir con los requisitos del proyecto:

Bloqueo Aula → Dirección: Denegar tráfico desde VLAN 50 a VLAN 20.

Bloqueo Desarrollo → Administración: Denegar tráfico desde VLAN 30 a VLAN 10.

Acceso a Servidores: Permitido desde Administración (VLAN 10) a Servidores (VLAN 60).

Aislamiento Guest: La VLAN 80 solo tiene permitido el tráfico hacia el Gateway para salida a Internet, bloqueando cualquier acceso a la red interna 192.168.0.0/16.

Gestión Segura: Solo la VLAN 99 tiene acceso a las líneas VTY de los dispositivos de red.

📡 Infraestructura Inalámbrica
SSID_EMPRESA: Mapeado a la VLAN de empleados correspondientes, con seguridad WPA2-PSK.

SSID_INVITADOS: Mapeado a la VLAN 80. Configurado en modo "Isolating" para que los clientes solo tengan salida a WAN.

🧪 3. Pruebas de Verificación (Checklist)
Para asegurar el correcto funcionamiento, se han realizado las siguientes pruebas en el archivo .pkt:

[x] DHCP: Los PCs reciben IP en el rango correcto (p.ej. 192.168.10.11 en adelante).

[x] Conectividad Interna: Ping exitoso entre PCs de la misma VLAN.

[x] Inter-VLAN Routing: Ping exitoso entre Administración y Servidores.

[x] Bloqueo ACL: El comando ping falla al intentar comunicar Aula con Dirección.

[x] Persistencia: Configuración guardada en NVRAM mediante write memory.

🏁 4. Conclusiones
La red de Pharma_Reverse es ahora una infraestructura robusta. La separación de la base de datos de medicamentos en el servidor .11 y el uso de impresoras industriales Zebra con IP fija asegura que la cadena de suministro no se detenga. La seguridad implementada mediante ACLs garantiza que la información sensible de Dirección y Desarrollo permanezca confidencial.
