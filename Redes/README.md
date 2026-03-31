
🏥 Infraestructura de Red: Pharma_Reverse
Este proyecto detalla el diseño, configuración y validación de una red corporativa segmentada para la industria farmacéutica Pharma_Reverse, utilizando el modelo Router-on-a-Stick para garantizar la seguridad y el control del tráfico inter-VLAN.

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
