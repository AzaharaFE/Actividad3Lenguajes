<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>      
                <title>Edix</title>
            </head>
            <body>
            <h1><xsl:value-of select="ite/@nombre"/></h1>
            <h3>Accede a nuestra web a través del siguiente enlace: <xsl:value-of select="ite/@web"/></h3>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>