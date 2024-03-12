<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="casas.css" />
            </head>
            <body>
                <h1>Detalles de la Casa</h1>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>

    <xsl:template match="casa">
        <div>
            <h2>Dirección:</h2>
            <p>
                <xsl:value-of select="direccion" />
            </p>
            <h2>Habitaciones:</h2>
            <xsl:apply-templates select="habitaciones/habitacion" />
            <h2>Jardín:</h2>
            <xsl:apply-templates select="jardin" />
        </div>
    </xsl:template>

    <xsl:template match="habitacion">
        <div class="habitacion">
            <h3>
                <xsl:value-of select="nombre" />
            </h3>
            <p>Dimensiones: <xsl:value-of select="dimensiones/@largo" /> x <xsl:value-of
                    select="dimensiones/@ancho" /> x <xsl:value-of select="dimensiones/@altura" /></p>
            <h4>Muebles:</h4>
            <ul>
                <xsl:apply-templates select="muebles/mueble" />
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="mueble">
        <li><xsl:value-of select="@tipo" /> - Material: <xsl:value-of select="@material" /></li>
    </xsl:template>

    <xsl:template match="jardin">
        <div class="jardin">
            <p>Tipo: <xsl:value-of select="tipo" /></p>
            <p>Dimensiones: <xsl:value-of select="dimensiones/@largo" /> x <xsl:value-of
                    select="dimensiones/@ancho" /></p>
            <h4>Elementos:</h4>
            <ul>
                <xsl:apply-templates select="elementos/elemento" />
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="elemento">
        <li>
            <xsl:value-of select="@tipo" />
        </li>
    </xsl:template>
</xsl:stylesheet>