🏥 Infraestructura de Red: Pharma_ReverseEste proyecto detalla el diseño, configuración y validación de una red corporativa segmentada para una industria farmacéutica, utilizando el modelo Router-on-a-Stick para garantizar la seguridad y el control del tráfico inter-VLAN.📊 1. Tabla de Direccionamiento IP y Segmentación (VLANs)Se ha implementado un esquema de direccionamiento privado clase C, reservando las primeras 10 direcciones de cada subred para dispositivos de infraestructura (Static IPs).VLANNombreDepartamentoRed / MáscaraGatewayUso de IPs Estáticas10ADMINAdministración192.168.10.0/24.1Impresora Admin (.5)20DIRDirección192.168.20.0/24.1Impresora Dirección (.5)30DEVDesarrollo192.168.30.0/24.1Estaciones de Trabajo40SOPORTESoporte Técnico192.168.40.0/24.1Servidores IT50FORMACIONAula Alumnos192.168.50.0/24.1Equipos Formación60SRVServidores192.168.60.0/24.1WEB (.10) / Backup (.11)70ALMACENLogística192.168.70.0/24.1Zebras (.5 y .6)80GUESTInvitados192.168.80.0/24.1WiFi Público (Aislado)99MGMTGestión Nativa192.168.99.0/24

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
