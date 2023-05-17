<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <instituto>
        <nombre>
            <xsl:value-of select="ite/@nombre"/>
        </nombre>
        <web>
            <xsl:value-of select="ite/@web"/>
        </web>
        <personal>
            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <id>
                            <xsl:value-of select="id"/>
                        </id>
                        <nombre>
                            <xsl:value-of select="nombre"/>
                        </nombre>
                    </profesor>
                </xsl:for-each>
            </profesores> 
            <jefatura>
                <jefe_estudios>
                    <xsl:attribute name="Despacho">
                        <xsl:value-of select="ite//jefe_estudios/despacho"/>
                    </xsl:attribute>
                    <nombre>
                        <xsl:value-of select="ite//jefe_estudios/nombre"/>
                    </nombre>
                </jefe_estudios>

                <director>
                    <xsl:attribute name="Despacho">
                        <xsl:value-of select="ite//director/despacho"/>
                    </xsl:attribute>
                    <nombre>
                        <xsl:value-of select="ite//director/nombre"/>
                    </nombre>
                </director>
            </jefatura>           
        </personal>

        <ciclos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="Grado">
                        <xsl:value-of select="grado"/>
                    </xsl:attribute>
                    <xsl:attribute name="TituloDecretoAnio">
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </xsl:attribute>
                    <id>
                        <xsl:value-of select="@id"/>
                    </id>
                    <nombre>
                        <xsl:value-of select="nombre"/>
                    </nombre>
                 </ciclo>
            </xsl:for-each>

        </ciclos>


    </instituto>


</xsl:template>



</xsl:stylesheet>