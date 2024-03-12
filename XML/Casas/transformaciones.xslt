<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- 1. Mostrar sólo la dirección de la casa: -->
    <xsl:template match="/">
        <direccion>
            <xsl:value-of select="direccion"/>
        </direccion>
    </xsl:template>

    <!-- 2. Listar sólo los tipos de habitaciones disponibles: -->

    <!-- 3. Mostrar sólo las dimensiones de la habitación principal:-->
    <xsl:template match="habitacion[nombre='principal']">
        <div>
        <p>
            <xsl:value-of select="dimensiones/@largo"/><xsl:value-of select="dimensiones/@ancho"/><xsl:value-of select="dimensiones/@altura"/>
        </p>
        </div>
    </xsl:template>

        <!-- 4. Contar el número total de habitaciones: -->
    <xsl:template match="casa" >
        <div>
        <p>
            <xsl:value-of select="count(habitaciones/habitacion)"/>
        </p>
        </div>
    </xsl:template>

    <!-- 5. Mostrar solo los muebles de la sala de estar: -->
       <xsl:template match="habitacion[nombre='sala_de_estar']">
        <div>
        <ul>
            <xsl:apply-templates select='muebles/mueble'/>
        </ul>
        </div>
    </xsl:template>

    <!-- 6. Mostrar sólo el tipo de jardín: -->
    <xsl:template match="jardin">
        <div class='jardin'>
            <p>
                <xsl:value-of select="tipo"/>
            </p>
        </div>
    </xsl:template>

    <!--7. Mostrar sólo la longitud del jardín: -->
     <xsl:template match="jardin">
        <div class='jardin'>
            <p>
                <xsl:value-of select="dimensiones/@largo"/>
            </p>
        </div>
    </xsl:template>

    <!-- 8. Mostrar sólo los elementos del jardín: -->
    <xsl:template match="jardin">
        <div>
        <h2>Elementos del Jardin</h2>
        <ul>
            <xsl:apply-templates select='elementos/elemento'/>
        </ul>
        </div>
    </xsl:template>

    <!-- 9. Concatenar la dirección completa (calle, ciudad y país): -->
    

    <!-- 10. Transformar las dimensiones de metros a pies: (1m = 3,28ft)  -->
    

</xsl:stylesheet>