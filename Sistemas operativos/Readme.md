
# Pharma_Reverse: Gestión de Sistemas

Este repositorio contiene la documentación y configuración de la infraestructura de sistemas para la empresa **Pharma_Reverse**, basada en un entorno de dominio con Windows Server 2022 y clientes Windows 11 Pro.

## 📋 Resumen del Proyecto
El objetivo principal ha sido la instalacion y puesta en marcha de los equipos y sus sistemas operativos, la centralización de la administración de usuarios y la seguridad de los archivos mediante servicios de directorio y permisos avanzados.

## 🛠️ Implementación Técnica

### 1. Gestión de Identidades (Punto 5)
* **Active Directory:** Despliegue del dominio `pharma.local` en el servidor `SRV-PHARMA-AD`.
* **Estructura Organizativa:** Creación de Unidades Organizativas (OU) por departamentos (Administración, Soporte, Dirección).
* **Seguridad:** Implementación de grupos de seguridad para una gestión de permisos escalable y eficiente.

### 2. Control de Accesos y Permisos (Punto 5.3)
* **Permisos NTFS:** Configuración detallada de privilegios en el sistema de archivos.
* **Control de Herencia:** Bloqueo de herencia en carpetas críticas para asegurar que solo los usuarios autorizados (ej. departamento de Dirección) accedan a su información.

### 3. Servicios del Sistema (Punto 6)
* **File Server:** Compartición de recursos en red mediante protocolo SMB.
* **Monitorización de Servicios:** Verificación del estado de ejecución de servicios críticos mediante la consola `services.msc`:
    * **DNS:** Resolución de nombres interna.
* **Acceso Remoto:** Configurado para la administración a distancia del servidor.

## 📸 Evidencias
El proyecto incluye capturas de pantalla que documentan:
* La jerarquía de Unidades Organizativas.
* Pruebas de acceso denegado por permisos NTFS.

