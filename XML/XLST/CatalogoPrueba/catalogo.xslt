<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Cambiar el nombre a una etiqueta con XSLT -->
    <xsl:template match="book">
        <libro>
            <xsl:apply-templates select="@*|node()"/>
        </libro>
    </xsl:template>
    <!-- Aplicar una descricion a todas las etiquetas libro -->
    <xsl:template match="book">
        <book>
            <xsl:apply-templates select="@*|node()"/>
            <description>Fernando Alonso nunca ganara la 33 es puro humo</description>
        </book>
    </xsl:template>
    <!-- Eliminar un atributo id de todos los elementos -->
    <xsl:template match="@id" >
    </xsl:template>
    <!-- Convertir un elemento "genero" en mayusculas -->
    <xsl:template match="genero" >
        <genero><xsl:value-of select="translate(.,'abcdefghijklmnopqrstuvwxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/></genero>
    </xsl:template>
    <!-- Agregar un nuevo atributo 'disponible' con valor 'true' -->
    <xsl:template match="libro">
        <libro disponible="true">
            <xsl:apply-templates select="@*|node()"/>
        </libro>
    </xsl:template>
    <!-- Ordenar los elementos 'libro' por título -->
    <xsl:template match="catalogo">
        <xsl:copy>
            <xsl:apply-templates select="libro">
                <xsl:sort select="titulo"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    <!-- Filtrar los libros que tienen un precio mayor a $50 -->
    <xsl:template match="libro[precio > 50]"/>
    <!-- Agrupar los libros por género -->
    <xsl:key name="grupo-genero" match="libro" use="genero"/>
    <xsl:template match="libro[generate-id() =
            generate-id(key('grupo-genero', genero)[1])]">
        <grupo-genero genero="{genero}">
            <xsl:apply-templates select="key('grupo-genero',
                    
                    genero)"/>
        </grupo-genero>
    </xsl:template>
    <!-- Concatenar el nombre y apellido del autor -->
    <xsl:template match="autor">
        
        <autor><xsl:value-of select="concat(nombre, ' ',
                    apellido)"/></autor>
    </xsl:template>
    <!-- Agregar un comentario al inicio del documento -->
    <xsl:template match="/">
        <xsl:comment>Ejemplo de transformación XSLT</xsl:comment>
        <xsl:apply-templates/>
    </xsl:template>
</xsl:stylesheet>