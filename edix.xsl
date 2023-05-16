<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Edix</title>
                <link rel="stylesheet" type="text/css" href="edix.css" />
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="ite/@nombre"/></h1>
                </header>
                <nav>
                    <div id="enlaces">
                        <div class="enlace-item">
                            <a href="{ite/@web}">Visita nuestra página web</a>
                        </div>
                        <div class="enlace-item">
                            <a href="https://github.com/AzaharaFE/Actividad3Lenguajes" target="_blank">
                                <img style="width: 150px" src="img/github.png" title="Visita nuestro repositorio en GitHub"/>
                            </a>
                        </div>
                    </div>
                </nav>
                <section>              
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
                </section>
                    <div id="formulario">
                    <form action="/submit_form" method="post">
                        <br/>
                        <div style="border: ridge; border-color: black; background-color: lightblue; padding-bottom: 10px">
                        <h3>Formulario de contacto:</h3>
                        <fieldset style="background-color: lightyellow; margin-right: 20px; margin-left: 20px">
                            <legend style="border-style: ridge; text-align: left; background-color: aquamarine">Datos personales</legend>
                        <label for="nombre">Nombre:</label><br/>
                        <input type="text" id="nombre" name="nombre" required=""/><br/>
                        <label for="email">Correo Electrónico:</label><br/>
                        <input type="email" id="email" name="email" required=""/><br/>
                        <label for="telefono">Número de Teléfono:</label><br/>
                        <input type="tel" id="telefono" name="telefono" required=""/><br/>
                        <label for="mensaje">Mensaje:</label><br/>
                        <textarea id="mensaje" name="mensaje" rows="4" cols="50" required=""/><br/>
                        </fieldset>
                        <br/>
                        <fieldset style="background-color: lightgreen; margin-right: 20px; margin-left: 20px">
                            <legend style="border-style: ridge; text-align: left; background-color: aquamarine">Terminos de uso y enviar formulario</legend>
                            <label for="terminos">¿Acepta los terminos de uso? </label>
                            <br/>
                            He leido y acepto los terminos de uso <input type="checkbox" name="terminos" value="Y" required=""/>
                            <br/>
                            <br/>
                            <input style="margin: 15px" type="submit" value="Enviar datos" />
                            <input type="reset" value="Limpiar formulario" />
                        </fieldset>
                        </div>
                    </form>
                    </div>
                    <br/>
                <footer>
                    <p><b><xsl:value-of select="ite/empresa"/></b></p>
                    <p><b>Teléfono de contacto: <xsl:value-of select="ite/telefono"/></b></p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>