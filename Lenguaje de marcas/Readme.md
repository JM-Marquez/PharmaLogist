# Informe Técnico: Sistema de Gestión de Datos - Pharma Reverse

## 1. Integración con el proyecto
En este proyecto, el uso de XML no se limita a un archivo independiente, sino que forma parte del funcionamiento general de la aplicación.
Por un lado, el archivo datos.xml se utiliza como fuente principal de datos. En él se almacena toda la información relacionada con las recogidas farmacéuticas, incluyendo la cabecera, el origen, el destino, las fechas y las unidades recogidas.
Además, se ha empleado una transformación XSLT  para convertir el XML en una página web visual (HTML). Gracias a esto, los datos pueden visualizarse directamente en el navegador de forma estructurada y clara. La interfaz generada permite navegar entre distintas secciones como “Inicio” y “Devolución”, mejorando la experiencia de usuario.
Por otro lado, a partir del XML se ha generado un archivo JSON equivalente. Este formato es especialmente útil para trabajar con aplicaciones web modernas, ya que puede ser fácilmente utilizado en JavaScript , etc. De esta manera, se facilita la interoperabilidad del sistema con otras tecnologías.
En conjunto, el proyecto demuestra cómo XML puede utilizarse como una estructura base de almacenamiento de datos, mientras que XSLT permite su transformación en un formato visual, y JSON posibilita su reutilización en otros entornos. Por tanto, no se trata de un XML aislado, sino de una solución integrada dentro del flujo de la aplicación.



## 2. Validación con DTD
Para garantizar la integridad y calidad de los datos, hemos implementado el archivo de reglas `modelo.dtd`. Este archivo define los elementos obligatorios, sus atributos y la jerarquía de la información.

### Pasos para validar:
1. Asegurarse de que el archivo XML tenga la referencia al DTD: `<!DOCTYPE recogida SYSTEM "modelo.dtd">`.
2. Utilizar un validador:
   * **Opción local (Terminal):** Ejecutar `xmllint --noout --dtdvalid modelo.dtd datos.xml`.
   * **Opción online:** Cargar ambos archivos en un validador estándar (ej. *xmlvalidation.com*).
3. El sistema verifica que todos los campos requeridos estén presentes y que se cumplan las restricciones de tipos de datos.

## 3. Transformación XSLT y Visualización
La visualización se realiza mediante la hoja de estilo `transform.xsl`.
* **Proceso:** Mediante la instrucción `<?xml-stylesheet type="text/xsl" href="transform.xsl"?>`, cualquier navegador moderno procesa el documento y lo renderiza automáticamente como una página web HTML estilizada.
* **Resultado:** El usuario final interactúa con un reporte navegable, limpio y funcional que facilita la gestión logística, ocultando la complejidad del código fuente XML.

## 4. Evidencias del Proyecto
A continuación, se presentan las capturas de pantalla que demuestran la validez y el correcto funcionamiento del sistema:

### Validación Exitosa
> *(Insertar aquí la captura de pantalla del mensaje "No errors were found" del validador)*

### Control de errores (Detección de fallos)
> *(Insertar aquí la captura de pantalla mostrando el error al eliminar un campo obligatorio o duplicar un ID, demostrando que el DTD está activo)*

## 5. Integración con el Proyecto
En este proyecto, el uso de XML no se limita a un archivo independiente, sino que forma parte del funcionamiento general de la aplicación. La integración se articula en tres niveles:

* **Fuente de datos principal:** El archivo `datos.xml` se utiliza como repositorio central de toda la información relacionada con las recogidas farmacéuticas. Esto garantiza que los datos estén estructurados de forma estandarizada y sean consistentes.
* **Visualización mediante XSLT:** Se ha empleado una transformación XSLT para convertir el XML en una página web visual (HTML). Esto permite visualizar los datos directamente en el navegador de forma clara. La interfaz generada mejora la experiencia de usuario al permitir la navegación entre secciones como “Inicio” y “Detalle de Devolución”.
* **Interoperabilidad mediante JSON:** A partir del XML se ha generado un archivo JSON equivalente. Este formato es especialmente útil para trabajar con aplicaciones web modernas, ya que es el estándar para el consumo de datos mediante JavaScript. Esto facilita la integración del sistema con otras tecnologías futuras (como APIs o aplicaciones móviles).

**Conclusión:** En conjunto, el proyecto demuestra que el XML es una estructura base robusta, el XSLT permite su transformación visual inmediata, y el JSON posibilita la reutilización de datos en otros entornos tecnológicos. No se trata de un archivo aislado, sino de una solución integrada en el flujo completo de la aplicación.

---
*Documento técnico preparado para el proyecto Pharma Reverse. Curso 2025-2026.*
