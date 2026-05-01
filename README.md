# 🏥 PharmaLogist-Reverse: Gestión de Logística Inversa

Este proyecto nace de **más de 20 años de experiencia en el sector logístico**. Su objetivo es digitalizar y asegurar una planta real de logística inversa de medicamentos, donde la **trazabilidad absoluta de los lotes** es la prioridad crítica.

---

## 🛠️ Infraestructura y Hardware 
Diseño orientado a la alta disponibilidad y la robustez en entornos de trabajo intenso.

*   **🧠 El "Cerebro":** Servidor tipo **Rack** para máquinas virtuales, **Switch gestionable** y **Firewall** perimetral para seguridad.
*   **🏢 Oficina:** 2 PCs de gestión y multifuncionales para emisión de albaranes.
*   **📦 Almacén (Segregación):** 6 PCs fijos conectados por cable para evitar pérdidas de señal, integrados con **básculas** e **impresoras térmicas** de etiquetas.
*   **🚚 Pista:** Dispositivos **PDA vía Wi-Fi** para escaneo en muelles y estanterías en tiempo real.
*   **🌐 Redes y Nube:** 
    *   **VLANs:** Separación de tráfico (Oficina vs. PDAs) para que incidencias en almacén no detengan la facturación.
    *   **AWS:** Backup externo en la nube para garantizar la resiliencia de los datos ante desastres locales.

---

## 🗄️ Diseño de Base de Datos y Lógica (SQL)
Estructura relacional en **3ª Forma Normal** para gestionar el ciclo de vida completo del residuo farmacéutico.

*   **📊 Estructura Principal:** Registro detallado de usuarios/roles, farmacias, catálogo de medicamentos y trazabilidad por lotes/caducidad.
*   **🔄 Operaciones:** Control total desde la creación del envío hasta la decisión final de **Reciclaje o Destrucción**.
*   **🕵️ Consultas de Control de Calidad:** 
    *   **Trazabilidad Total:** Sistema de `JOINs` para vincular cada fármaco con su farmacia de origen y estado de envío.
    *   **Gestión de Almacén:** Consultas específicas para detectar envíos recibidos pero no procesados, evitando cuellos de botella.

---

## 🛡️ Seguridad y Cumplimiento (Compliance)
*   **🔐 Control de Acceso:** Gestión de permisos granulares; un operario puede registrar datos pero no borrar historiales de destrucción.
*   **💊 Estándar Farmacéutico:** Políticas de contraseñas y tratamiento de datos alineados con la normativa sanitaria vigente (Datamatrix).
*   **📄 Intercambio de Información:** Implementación de **XML/DTD/XSL** para generar informes técnicos de trazabilidad requeridos por las autoridades sanitarias.

---

## 🚀 Perfil y Objetivos
*   **Enfoque:** Convergencia entre **DevOps y Ciberseguridad (DevSecOps)**.
*   **Visión:** Integrar la automatización de infraestructuras con la seguridad para optimizar la eficiencia de los sistemas críticos.
*   **Formación:** 1º ASIR + Máster especializado en Ciberseguridad Avanzada y Frontend.

---
*Este proyecto forma parte del módulo Intermodular - 2025/2026*
