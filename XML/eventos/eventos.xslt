<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="eventos.css"/>
            </head>
            <body>
                <h2>Programacion de Eventos Culturales</h2>
                <table>
                    <tr>
                        <th>Nombre Evento</th>
                        <th>Tipo de Evento</th>
                        <th>Ubicacion</th>
                        <th>Fecha y Hora</th>
                        <th>Participantes</th>
                    </tr>
                    <xsl:for-each select="eventos/evento">
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="tipo_evento"/></td>
                            <td><xsl:value-of select="ubicacion"/></td>
                            <td><xsl:value-of select="fecha"/><xsl:value-of select="hora"/></td>
                            <td>
                                <xsl:for-each select="participante">
                                    <xsl:value-of select="."/>
                                    <br/>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
