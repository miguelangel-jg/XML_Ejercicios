<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Lista de Animales</title>
            </head>
            
            <body>
                <h1>Lista de Animales</h1>
                <table>
                    <thead>
                    <td><strong>Nombre:</strong></td> 
                    <td><strong>Especie:</strong></td> 
                    <td><strong>Habitat:</strong></td> 
                </thead>
                    <xsl:apply-templates select="animales/animal" />
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="animal">
        <tr>
            <td><xsl:value-of select="nombre" /></td>
            <td><xsl:value-of select="especie" /></td>
            <td><xsl:value-of select="habitat" /></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>