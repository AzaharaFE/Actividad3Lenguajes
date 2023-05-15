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
                <div id="enlaces">
                <a href="{ite/@web}">Visita nuestra página web</a>
                <br/>
                <a href="https://github.com/AzaharaFE/Actividad3Lenguajes" target="_blank">
                    <img style="width: 150px" src="img/github.png" title="Visita nuestro repositorio en GitHub"/>
                </a>
                </div>
                <br/>              
                    <h3>Nuestros profesores son:</h3>
                        <div id="lista">
                        <ul>
                            <xsl:for-each select="//profesores/profesor">
                                <li><xsl:value-of select="nombre"/></li>
                            </xsl:for-each>
                        </ul>
                        </div>
                    <h3>Dirección y jefatura de estudios:</h3>
                    <table style="text-align: center; display: table; justify-content: center; max-width: 600px; margin: 0 auto;" border="1">
                        <thead>
                            <tr>
                                <th>Área</th>
                                <th>Nombre</th>
                                <th>Despacho</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="//director">
                                <tr>
                                    <td style="padding: 10px">Dirección</td>
                                    <td style="padding: 10px"><xsl:value-of select="nombre"/></td>
                                    <td style="padding: 10px"><xsl:value-of select="despacho"/></td>
                                </tr>
                            </xsl:for-each>
                            <xsl:for-each select="//jefe_estudios">
                                <tr>
                                    <td style="padding: 10px">Jefatura de estudios</td>
                                    <td style="padding: 10px"><xsl:value-of select="nombre"/></td>
                                    <td style="padding: 10px"><xsl:value-of select="despacho"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                    <br/>   
                    <h3>Nuestros ciclos formativos:</h3>
                    <table style="text-align: center; display: table; justify-content: center; max-width: 600px; margin: 0 auto;" border="1">
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
                                    <td style="padding: 10px"><xsl:value-of select="@id"/></td>
                                    <td style="padding: 10px"><xsl:value-of select="nombre"/></td>
                                    <td style="padding: 10px"><xsl:value-of select="grado"/></td>
                                    <td style="padding: 10px"><xsl:value-of select="decretoTitulo/@año"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                    <br/>
                    <h3>Formulario de contacto:</h3>
                    <div id="formulario">
                    <form action="/submit_form" method="post">
                        <label for="nombre">Nombre:</label><br/>
                        <input type="text" id="nombre" name="nombre" required=""/><br/>
                        <label for="email">Correo Electrónico:</label><br/>
                        <input type="email" id="email" name="email" required=""/><br/>
                        <label for="telefono">Número de Teléfono:</label><br/>
                        <input type="tel" id="telefono" name="telefono" required=""/><br/>
                        <label for="mensaje">Mensaje:</label><br/>
                        <textarea id="mensaje" name="mensaje" rows="4" cols="50" required=""/><br/>
                        <input type="submit" value="Enviar"/>
                        <input type="reset" value="Limpiar formulario"/>
                    </form>
                    </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>