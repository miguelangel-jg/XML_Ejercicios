<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!-- Definimos la plantilla raíz-->
  <xsl:template match="/libros">
    <html>
      <head>
        <title>Lista de Libros</title>
      </head>
      <body>
        <h1>Lista de Libros</h1>
        <xsl:apply-templates select="libro" />
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada libro -->
  <xsl:template match="libro">
    <div>
      <h2><xsl:value-of select="titulo" /></h2>
      <p>Autor: <xsl:value-of select="autor" /></p>
      <p>Género: <xsl:value-of select="genero" /></p>
      <p>Precio: $<xsl:value-of select="precio" /></p>
      <hr />
    </div>
  </xsl:template>

</xsl:stylesheet>