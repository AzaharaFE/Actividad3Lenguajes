<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>      
                <title>Edix</title>
                <link rel="stylesheet" type="text/css" href="edix.css" />
            </head>
            <body>
                <h1><xsl:value-of select="ite/@nombre"/></h1>
                <a href="{ite/@web}">Visita nuestra página web</a>
                
                    <h3>Nuestros profesores son:</h3>
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//profesores/profesor">
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                </tr>
                            </xsl:for-each> <!-- Fin de for each de escala-->
                        </tbody>
                    </table>
                    <h3>Área de dirección:</h3>
                        <ul>
                            <xsl:for-each select="//director">
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li>Despacho: <xsl:value-of select="despacho"/></li>
                            </xsl:for-each>
                        </ul>
                    <h3>Área de jefatura de estudios:</h3>
                        <ul>
                            <xsl:for-each select="//jefe_estudios">
                                <li>Nombre: <xsl:value-of select="nombre"/></li>
                                <li>Despacho: <xsl:value-of select="despacho"/></li>
                            </xsl:for-each>
                        </ul>    
                <h2>Nuestros ciclos formativos:</h2>
                <table border="1">
                    <thead>
                        <tr>
                            <th>Ciclo</th>
                            <th>Nombre del ciclo</th>
                            <th>Tipo de grado</th>
                            <th>Año del decreto del título</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="//ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each> <!-- Fin de for each de escala-->
                    </tbody>
                </table>
                <form>
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre"/><br/>
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email"/><br/>
                    <label for="mensaje">Mensaje:</label><br/>
                    <textarea id="mensaje" name="mensaje" rows="4"/><br/>
                    <input type="submit" value="Enviar"/>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>