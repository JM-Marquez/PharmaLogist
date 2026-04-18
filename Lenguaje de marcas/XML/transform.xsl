<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Pharma Reverse - Reporte Final</title>
                <link rel="stylesheet" href="../Bootstrap/css/bootstrap.css" />
                <style>
                    /* Colores para background y texto del nav */
                    .bg-pharma { background-color: #75b788; }
                    .text-pharma { color: #6D8C78; }
                    
                    /* Estilo base de botones */
                    .btn-pharma {
                        background-color: #75b788;
                        color: white;
                        border: none;
                        transition: 0.3s;
                    }

                    /* Cambio suave en los enlaces del nav */
                    .nav-link {
                        transition: color 0.3s ease;
                    }

                    /* Cambio de color al pasar el cursor en los enlaces del nav */
                    .nav-link:hover {
                        color: #4d6656 !important;
                    }

                    /* HOVER: Un tono más profundo (#4d6656) */
                    .btn-pharma:hover, .btn-saber-mas:hover {
                        background-color: #4d6656;
                        color: white;
                        border-color: #4d6656;
                    }

                    .form-control:focus { 
                        border-color: #6D8C78; 
                        box-shadow: 0 0 0 0.25rem rgba(109, 140, 120, 0.25); 
                    }
                    
                    #instalaciones, #devolucion { display: none; }
                    /*estilos y espacio para el body*/
                    body {
                        background-color: #f2f9f7 !important;
                        min-height: 100vh;
                        display: flex;
                        flex-direction: column;
                       margin: 0;
                      }

   
                </style>
            </head>

            <body>
                

                <nav class="navbar navbar-expand-lg navbar-dark bg-pharma mb-0 p-2 shadow sticky-top">
                    <div class="container-fluid">
                        <img src="imagenes/logo_fcia2.png" alt="logo" width="110" height="60" class="ms-1"/>
                        <a class="navbar-brand d-flex align-items-center fw-bold me-auto" href="#" onclick="verSeccion('inicio')">
                            PHARMA REVERSE
                        </a>

                        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#menuSimplificado">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="offcanvas offcanvas-end bg-pharma text-white" tabindex="-1" id="menuSimplificado">
                            <div class="offcanvas-header d-lg-none border-bottom border-light border-opacity-25">
                                <h5 class="offcanvas-title fw-bold">MENÚ</h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
                            </div>
                            
                            <div class="offcanvas-body">
                                <ul class="navbar-nav mx-auto mb-2 mb-lg-0 fs-5">
                                    <li class="nav-item px-lg-2">
                                        <a class="nav-link text-white" href="#" onclick="verSeccion('inicio')">Inicio</a>
                                    </li>
                                    <li class="nav-item px-lg-2">
                                        <a class="nav-link text-white" href="#" onclick="verSeccion('instalaciones')">Instalaciones</a>
                                    </li>
                                    <li class="nav-item px-lg-2">
                                        <a class="nav-link text-white" href="#" onclick="verSeccion('devolucion')">Ej. Devolución</a>
                                    </li>
                                    <li class="nav-item px-lg-2">
                                        <a class="nav-link text-white" href="#" data-bs-toggle="modal" data-bs-target="#modalContacto">Contacto</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </nav>

                <section id="inicio" class="py-5 bg-light border-bottom">
                    <div class="container py-5">
                        <div class="row align-items-center">
                            <div class="col-lg-5">
                                <h1 class="display-4 fw-bold text-pharma">
                                    Expertos en Logística<span style="color: #98c6ab;"> Inversa</span>
                                </h1>
                                <p class="lead text-secondary">
                                    En <span class="fw-bold">Pharma Reverse</span>, optimizamos el ciclo de vida de los productos farmacéuticos. Nos encargamos de la recogida, clasificación y tratamiento sostenible.
                                </p>
                                <div class="d-flex gap-2">
                                    <button class="btn btn-pharma px-4 py-3 fw-bold shadow" onclick="verSeccion('instalaciones')">Nuestras Instalaciones</button>
                                    <button class="btn btn-saber-mas px-4 py-3 fw-bold shadow" data-bs-toggle="modal" data-bs-target="#modalContacto">Saber más</button>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-4 mt-lg-0">
                                <img src="imagenes/imagen_hero.png" alt="Centro" class="img-fluid rounded-4 shadow-lg"/>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="instalaciones" class="py-5 bg-light border-bottom">
                    <div class="container py-5">
                        <div class="row align-items-center">
                            <div class="col-lg-5 mb-5 mb-lg-0">
                                <span class="badge rounded-pill bg-pharma mb-3 px-3 py-2 text-uppercase fw-bold shadow-sm">Infraestructura Pharma Reverse</span>
                                <h2 class="display-5 fw-bold text-pharma mb-4">Centro Logístico de Vanguardia</h2>
                                <p class="text-secondary lead mb-4">
                                    Operamos bajo los más estrictos estándares GSP, fusionando tecnología punta con procesos clínicos para la gestión inteligente de retornos farmacéuticos.
                                </p>
                                <div class="d-flex gap-3 mt-3">
                                    <button class="btn btn-pharma px-4 py-3 fw-bold shadow" onclick="verSeccion('devolucion')">Consultar Devolución</button>
                                    <button class="btn btn-saber-mas px-4 py-3 fw-bold shadow" data-bs-toggle="modal" data-bs-target="#modalContacto">Saber más</button>
                                </div>
                            </div>

                            <div class="col-lg-7">
                                <div class="row g-3">
                                    <div class="col-6">
                                        <div class="card h-100 border-0 shadow-sm overflow-hidden rounded-3">
                                            <img src="imagenes/card3.png" class="card-img-top" style="height: 100px; object-fit: cover;" alt="Seguridad GSP" />
                                            <div class="card-body p-3 text-center">
                                                <h6 class="fw-bold text-pharma mb-1">Seguridad GSP</h6>
                                                <p class="card-text small text-muted mb-0">Normativa estricta.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="card h-100 border-0 shadow-sm overflow-hidden rounded-3">
                                            <img src="imagenes/card4.png" class="card-img-top" style="height: 100px; object-fit: cover;" alt="Zona Fría" />
                                            <div class="card-body p-3 text-center">
                                                <h6 class="fw-bold text-pharma mb-1">Zona Fría</h6>
                                                <p class="card-text small text-muted mb-0">Control térmico 24/7.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="card h-100 border-0 shadow-sm overflow-hidden rounded-3">
                                            <img src="imagenes/card1.png" class="card-img-top" style="height: 100px; object-fit: cover;" alt="Clasificación Automatizada" />
                                            <div class="card-body p-3 text-center">
                                                <h6 class="fw-bold text-pharma mb-1">Clasificación</h6>
                                                <p class="card-text small text-muted mb-0">Alta velocidad.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="card h-100 border-0 shadow-sm overflow-hidden rounded-3">
                                            <img src="imagenes/card2.png" class="card-img-top" style="height: 100px; object-fit: cover;" alt="Trazabilidad Digital" />
                                            <div class="card-body p-3 text-center">
                                                <h6 class="fw-bold text-pharma mb-1">Trazabilidad</h6>
                                                <p class="card-text small text-muted mb-0">Seguimiento total.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section id="devolucion" class="py-5">
                    <div class="container-fluid px-5">
                        <div class="bg-light shadow-sm p-4 rounded border">
                            <div class="row mb-4 border-bottom pb-3 align-items-center">
                                <div class="col-lg-3">
                                    <h2 class="text-pharma h4 fw-bold m-0">Listado de devolución</h2>
                                </div>
                                <div class="col-lg-9 d-flex align-items-center flex-wrap gap-3">
                                    <span><strong>ID:</strong> <xsl:value-of select="recogida/@id"/></span>
                                    <span class="text-muted">|</span>
                                    <span><strong>Farmacia:</strong> <xsl:value-of select="recogida/cabecera/origen/farmacia"/></span>
                                    <span class="text-muted">|</span>
                                    <span><strong>Almacén:</strong> <xsl:value-of select="recogida/cabecera/destino"/></span>
                                </div>
                            </div>

                            <div class="row bg-pharma text-white py-2 rounded-top fw-bold">
                                <div class="col-2">ID</div>
                                <div class="col-3">Medicamento</div>
                                <div class="col-2 text-center">Lote</div>
                                <div class="col-2 text-center">Cantidad</div>
                                <div class="col-3 text-center">Tratamiento</div>
                            </div>

                            <xsl:for-each select="recogida/unidades/contenedor">
                                <div class="row py-3 border-bottom align-items-center bg-white">
                                    <div class="col-2 fw-bold text-secondary"><xsl:value-of select="@id"/></div>
                                    <div class="col-3"><xsl:value-of select="contenido/farmaco"/></div>
                                    <div class="col-2 text-center small"><xsl:value-of select="contenido/lote"/></div>
                                    <div class="col-2 text-center"><xsl:value-of select="@cantidad"/></div>
                                    <div class="col-3 text-center">
                                        <xsl:choose>
                                            <xsl:when test="tratamiento='destruccion'">
                                                <strong class="text-danger fw-bold">DESTRUCCIÓN</strong>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <strong class="text-success fw-bold">RECICLAJE</strong>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </div>
                                </div>
                            </xsl:for-each>
                        </div>
                    </div>
                </section>

                <div class="modal fade" id="modalContacto" tabindex="-1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content border-0 shadow">
                            <div class="modal-header bg-pharma text-white">
                                <h5 class="modal-title fw-bold">Formulario de Contacto</h5>
                                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body p-4">
                                <form class="row g-3">
                                    <div class="col-12">
                                        <label class="form-label fw-bold small">NOMBRE COMPLETO</label>
                                        <input type="text" class="form-control bg-light" required="required"/>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label fw-bold small">EMAIL</label>
                                        <input type="email" class="form-control bg-light" required="required"/>
                                    </div>
                                    <div class="col-12">
                                        <label class="form-label fw-bold small">MENSAJE</label>
                                        <textarea class="form-control bg-light" rows="4" required="required"></textarea>
                                    </div>
                                    <div class="col-12 mt-4">
                                        <button class="btn btn-pharma w-100 py-2 fw-bold" type="submit">ENVIAR</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <footer class="py-4 mt-auto border-top bg-light text-center">
    <div class="container">
        <p class="text-secondary small mb-1">2026 Pharma Reverse - Logística Inversa Farmacéutica.</p>
        <p class="text-secondary small">Cumplimiento estricto de normativas GSP y gestión de residuos.</p>
    </div>
</footer>

                <script src="../Bootstrap/js/bootstrap.bundle.js"></script>
                <script>
                    function verSeccion(idSeccion) {
                        document.getElementById('inicio').style.display = 'none';
                        document.getElementById('instalaciones').style.display = 'none';
                        document.getElementById('devolucion').style.display = 'none';
                        document.getElementById(idSeccion).style.display = 'block';
                    }
                </script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>