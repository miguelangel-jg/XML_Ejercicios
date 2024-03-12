<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Animales</title>
            </head>
            
            <body>
                <h1>Lista de Animales</h1>
                <ul>
                    <xsl:apply-templates select="animales/animal" />
                </ul>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="animal">
        <li>
            <strong>Nombre:</strong>
            <xsl:value-of select="nombre" />
            <br />
            <strong>Especie:</strong>
            <xsl:value-of select="especie" />
            <br />
            <strong>Habitat:</strong>
            <xsl:value-of select="habitat" />
        </li>
    </xsl:template>
</xsl:stylesheet>