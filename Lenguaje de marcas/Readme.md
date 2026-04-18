# Informe del Proyecto XML

## 1. Datos representados en el XML

El archivo `datos.xml` recoge la información de una recogida de productos farmacéuticos dentro de un sistema de logística inversa.

En él se incluye un identificador único de la recogida y una cabecera con los datos principales: el origen (farmacia y distribuidor), el destino (centro logístico) y las fechas del proceso.

Además, se detallan los contenedores recogidos. Cada uno tiene su propio ID, el tipo (por ejemplo, caducidad o retirada sanitaria), la cantidad de productos, el medicamento con su lote y el tratamiento que se le aplica (reciclaje o destrucción).

En general, la estructura es bastante clara y permite entender rápidamente toda la información sin que resulte confusa.

---

## 2. Validación con DTD

Para asegurar que el XML está bien construido, se utiliza un archivo `modelo.dtd`, que define la estructura que debe seguir el documento.

El XML incluye esta referencia:

```xml
<!DOCTYPE recogida SYSTEM "modelo.dtd">

Esto hace que el archivo pueda validarse automáticamente.

Una forma de comprobarlo es desde editores como Visual Studio Code, que suelen marcar los errores directamente si falta algún elemento obligatorio o si la estructura no es correcta, o mandarlo a un validador online como se muestra en capturas.

Si no aparece ningún error, significa que el XML cumple correctamente con el DTD.

## 3. Transformación XSLT y visualización

Para poder visualizar los datos de forma más cómoda, se ha utilizado un archivo XSLT (transform.xsl) que transforma el XML en HTML.

El XML incluye la siguiente línea:

<?xml-stylesheet type="text/xsl" href="transform.xsl"?>

Gracias a esto, no es necesario ejecutar nada manualmente. Simplemente abriendo el archivo datos.xml en un navegador, se aplica automáticamente la transformación.

El resultado es una página web donde se muestran los datos de forma más visual. En este caso, se ha implementado un pequeño menú que permite cambiar entre distintas secciones, como “Inicio” y “Devolución”, lo que hace la navegación más cómoda.


## 4.Integración con el proyecto 

En este proyecto, el uso de XML no se limita a un archivo independiente, sino que forma parte del funcionamiento general de la aplicación.

Por un lado, el archivo datos.xml se utiliza como fuente principal de datos. En él se almacena toda la información relacionada con las recogidas farmacéuticas, incluyendo la cabecera, el origen, el destino, las fechas y las unidades recogidas.

Además, se ha empleado una transformación XSLT  para convertir el XML en una página web visual (HTML). Gracias a esto, los datos pueden visualizarse directamente en el navegador de forma estructurada y clara. La interfaz generada permite navegar entre distintas secciones como “Inicio” y “Devolución”, mejorando la experiencia de usuario.

Por otro lado, a partir del XML se ha generado un archivo JSON equivalente. Este formato es especialmente útil para trabajar con aplicaciones web modernas, ya que puede ser fácilmente utilizado en JavaScript , etc. De esta manera, se facilita la interoperabilidad del sistema con otras tecnologías.

En conjunto, el proyecto demuestra cómo XML puede utilizarse como una estructura base de almacenamiento de datos, mientras que XSLT permite su transformación en un formato visual, y JSON posibilita su reutilización en otros entornos. Por tanto, no se trata de un XML aislado, sino de una solución integrada dentro del flujo de la aplicación.

