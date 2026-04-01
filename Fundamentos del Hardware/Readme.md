
# Memoria de Infraestructura Hardware - Pharma_Reverse

## 📌 Introducción
Este repositorio contiene la planificación y selección de hardware para la empresa **Pharma_Reverse**. El objetivo principal ha sido diseñar una infraestructura **equilibrada, escalable y estandarizada**, evitando gastos innecesarios en puestos secundarios y reforzando los puntos críticos de la red.

---

## 🛠️ Decisiones Técnicas por Departamento

### 🔹 Almacén (Eficiencia y Espacio)
Para el área de logística se han seleccionado los **Blackview MP60 Mini PC**. 
* **Justificación:** Al ser entornos de mucho movimiento y polvo, una torre convencional estorba. Estos Mini PCs permiten montaje **VESA** tras el monitor, optimizando el espacio.
* **Rendimiento:** Suficiente para el ERP y gestión de stock sin disparar el presupuesto.

### 🔹 Desarrollo (Future-Proof e IA)
Los equipos de desarrollo (Gen 6) incorporan procesadores **Intel Core Ultra**.
* **NPU Dedicada:** Se han elegido específicamente por su capacidad de procesar Inteligencia Artificial en local. Esto permite que, si la farmacéutica decide automatizar procesos mediante IA en el futuro, el hardware ya está preparado sin comprometer la privacidad de los datos en la nube.

### 🔹 Sistemas e Infraestructura Crítica
* **Servidor HPE:** Seleccionado por su alta disponibilidad. Soporta expansión de procesadores y discos en caliente (**Hot-Swap**).
* **Protección Eléctrica:** Se ha integrado un **SAI APC** de 1500VA para garantizar que el servidor no sufra daños ante cortes de suministro o picos de tensión.
* **Conectividad:** Implementación de un **Switch Cisco con soporte PoE**, facilitando la instalación de antenas WiFi mediante un solo cable para datos y energía.

---

## 📊 Resumen de Inversión (Hardware y Red)

| Categoría | Descripción | Estado |
| :--- | :--- | :--- |
| **Equipos** | PCs Mini, Estándar y Alto Rendimiento | ✅ Seleccionado |
| **Infraestructura** | Servidor HPE, NAS y SAI | ✅ Seleccionado |
| **Periféricos** | Monitores Samsung, Combos Logitech | ✅ Seleccionado |
| **Redes** | Router, Switch PoE y Antenas Cisco | ✅ Seleccionado |

> **Presupuesto Total Estimado (Periféricos y Red): 7.385 €**

---

## 🚀 Escalabilidad y Mantenimiento
El proyecto ha sido diseñado bajo un criterio de **estandarización**. 
1. **Facilidad de sustitución:** Al usar modelos comunes, el stock de repuestos es mínimo y los drivers son los mismos para todo un departamento.
2. **Crecimiento:** El sistema está listo para escalar. Si la plantilla aumenta, el servidor admite más carga de trabajo simplemente añadiendo módulos de RAM o un segundo procesador.
