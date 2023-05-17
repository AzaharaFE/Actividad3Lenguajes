<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <CentroEducativo>
            <xsl:for-each select="//ite/empresa/telefono">
                    <xsl:attribute name="grupo">
                        <xsl:value-of select="empresa"/>
                    </xsl:attribute>
                    <xsl:attribute name="contacto">
                        <xsl:value-of select="telefono"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="@nombre"/></nombre>
                    <pagina><xsl:value-of select="@web"/></pagina>
            </xsl:for-each> 
            <br/>        
                <xsl:for-each select="//ite/profesores/profesor">
                    <profesorado>                      
                        <xsl:attribute name="codigo">
                            <xsl:value-of select="id"/>
                        </xsl:attribute>
                        <xsl:attribute name="usuario">
                            <xsl:value-of select="nombre"/>
                        </xsl:attribute>            
                    </profesorado> 
            </xsl:for-each> 
            </br
            <xsl:for-each select="//ite/director">       
                    <direccion>   
                        <xsl:attribute name="oficina">
                            <xsl:value-of select="despacho"/>
                        </xsl:attribute>
                    <responsable><xsl:value-of select="nombre"/></responsable>   
                    </direccion>
            </xsl:for-each> 
            <xsl:for-each select="//ite/jefe_estudios">        
                    <jefatura_estudios>
                        <xsl:attribute name="oficina">
                            <xsl:value-of select="despacho"/>
                        </xsl:attribute>
                            <responsable><xsl:value-of select="nombre"/></responsable>
                    </jefatura_estudios>              
            </xsl:for-each>
            <xsl:for-each select="//ite/ciclos/ciclo">                 
                <ciclosFormativos>
                    <xsl:attribute name="nombreCiclo">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                        <xsl:attribute name="tipoGrado">
                            <xsl:value-of select="grado"/>
                        </xsl:attribute>
                    <codigo><xsl:value-of select="@id"/></codigo>
                    <añoDecreto><xsl:value-of select="decretoTitulo/@año"/></añoDecreto>
                </ciclosFormativos>
            </xsl:for-each>                   
        </CentroEducativo>                                      
    </xsl:template>
</xsl:stylesheet>