
# 💊 Pharma Reverse - Infraestructura Cloud (AWS)

Este repositorio contiene la documentación, el diseño y las evidencias de despliegue de la infraestructura en la nube para **Pharma Reverse**, un sistema de gestión farmacéutica diseñado para garantizar la seguridad, trazabilidad de lotes y cumplimiento normativo.

## 🚀 Resumen del Proyecto
El objetivo principal ha sido migrar la operativa local a un entorno **Cloud en AWS**, proporcionando una solución escalable que protege los datos críticos de los laboratorios y asegura un acceso controlado para los empleados.

## 🏗️ Arquitectura de la Solución
La arquitectura se basa en el principio de **seguridad por aislamiento**:

* **Servidor de Aplicación (Amazon EC2):** Instancia de cómputo (Windows Server) que actúa como nodo central. Configurada con una **IP fija (Elastic IP)** para una conexión estable con la base de datos.
* **Base de Datos Gestionada (Amazon RDS):** Almacén privado para inventarios y fórmulas. Está aislada en una red privada sin acceso directo desde internet.
* **Almacenamiento de Documentos (Amazon S3):** Repositorio de objetos utilizado para el guardado de facturas, albaranes y registros de trazabilidad en formato PDF, garantizando durabilidad y cumplimiento legal.

## 🛡️ Seguridad Implementada
Se ha configurado un **Security Group** (Firewall de red) con reglas estrictas de "mínimo privilegio":
1.  **Acceso RDP (Administración):** Restringido únicamente a la dirección IP del administrador IT.
2.  **Acceso HTTPS/HTTP (Aplicación):** Filtrado por la IP pública de la sede central de Pharma Reverse.
3.  **Segregación de Red:** La base de datos solo acepta tráfico interno proveniente del servidor de aplicaciones.

## 💰 Estimación de Costes Mensuales
La infraestructura está optimizada para el **Nivel Gratuito de AWS (Free Tier)** durante los primeros 12 meses:

| Concepto | Nivel Gratuito (12 meses) | Coste Real Estimado |
| :--- | :--- | :--- |
| **Computación (EC2)** | 0 € (Instancia t2.micro) | 25,00 € |
| **Base de Datos (RDS)** | 0 € (db.t3.micro) | 15,00 € |
| **Almacenamiento (S3)** | 0 € (Hasta 5GB) | 1,20 € |
| **IP Fija / Red** | 0 € | 3,00 € |
| **TOTAL** | **0 €** | **44,20 €** |

## 📸 Evidencias de Despliegue
El proyecto incluye capturas de pantalla reales de la consola de AWS que certifican:
* La creación de instancias con **30 GiB** de almacenamiento SSD.
* La configuración de reglas de entrada en el **Security Group**.
* La creación del bucket de almacenamiento en **S3**.
