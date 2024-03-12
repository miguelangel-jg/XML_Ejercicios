<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalogo de Animes</title>
            </head>
            <style>
                body{background-color:lightblue;}
                h1{text-align: center;}
                table{width: 80%; margin:0 auto;font-family:Arial;}
                thead td,tr { border: 1px solid black;}
                td{padding: 5px;}
            </style>
            <body>
                <h1>Catalogo de Animes</h1>
                <table>
                    <thead>
                    <td><strong>Titulo:</strong></td> 
                    <td><strong>Estudio de Animacion:</strong></td> 
                    <td><strong>Genero:</strong></td> 
                    <td><strong>Año de estreno:</strong></td> 
                </thead>
                    <xsl:apply-templates select="animes/anime" />
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="anime">
        <tr>
            <td><xsl:value-of select="titulo" /></td>
            <td><xsl:value-of select="estudio" /></td>
            <td><xsl:value-of select="genero" /></td>
            <td><xsl:value-of select="a_estreno"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>