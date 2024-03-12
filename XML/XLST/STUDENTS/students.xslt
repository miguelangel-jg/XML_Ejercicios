<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="students">
        <classs>
            <xsl:apply-templates select="@*|node()"/>
        </classs>
    </xsl:template>
    <xsl:template match="student">
        <meember>
            <xsl:apply-templates select="@*|node()"/>
        </meember>
    </xsl:template>
    <xsl:template match="name">
        <fullname>
            <xsl:apply-templates select="@*|node()"/>
        </fullname>
    </xsl:template>
    <xsl:template match="grade">
        <grade>
            <xsl:apply-templates select="@*|node()"/>
            <status>PASS</status>
        </grade>
    </xsl:template>
    <xsl:template match="student[edad > 18]"/>

    <xsl:key name="notas" match="student" use="grade"/>
    <xsl:key name="notas" match="student" use="grade"/>
    <xsl:template match="student[generate-id() =
            generate-id(key('notas', grade)[1])]">
        <notas grade="{genero}">
            <xsl:apply-templates select="key('notas', 
                    grade)"/>
        </notas>
    </xsl:template>
    <xsl:template match="/">
        <xsl:comment>Comentario Final</xsl:comment>
        <xsl:apply-templates/>
    </xsl:template>

</xsl:stylesheet>