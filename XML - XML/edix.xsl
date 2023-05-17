<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <instituto>
            <xsl:attribute name="empresa">
                <xsl:value-of select="/ite/empresa"/>
            </xsl:attribute>
            <xsl:attribute name="telefono_contacto">
                <xsl:value-of select="/ite/telefono"/>
            </xsl:attribute>
            <nombre><xsl:value-of select="/ite/@nombre"/></nombre>
            <pagina_web><xsl:value-of select="/ite/@web"/></pagina_web>
                <personal_docente>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <docente>
                            <xsl:attribute name="identificador">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>
                        </docente>
                    </xsl:for-each>
                </personal_docente>
                <areas>
                    <direccion>
                        <xsl:attribute name="responsable">
                            <xsl:value-of select="/ite/director/nombre"/>
                        </xsl:attribute>
                        <xsl:attribute name="ubicacion">
                            <xsl:value-of select="/ite/director/despacho"/>
                        </xsl:attribute>
                    </direccion>
                    <jefatura_estudios>
                        <xsl:attribute name="responsable">
                            <xsl:value-of select="/ite/jefe_estudios/nombre"/>
                        </xsl:attribute>
                        <xsl:attribute name="ubicacion">
                            <xsl:value-of select="/ite/jefe_estudios/despacho"/>
                        </xsl:attribute>
                    </jefatura_estudios>
                </areas>
                <cursos>
                    <xsl:for-each select="/ite/ciclos/ciclo">
                        <curso>
                            <xsl:attribute name="tipo_grado">
                                <xsl:value-of select="grado"/>
                            </xsl:attribute>
                            <siglas><xsl:value-of select="@id"/></siglas>
                            <denominacion><xsl:value-of select="nombre"/></denominacion>
                            <titulo_decreto><xsl:value-of select="decretoTitulo/@año"/></titulo_decreto>
                        </curso>
                    </xsl:for-each>
                </cursos>
        </instituto>
    </xsl:template>
</xsl:stylesheet>