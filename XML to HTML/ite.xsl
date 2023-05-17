<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
    <head>
        <title>Instituto Tecnologico Edix</title>
        <link rel="stylesheet" href="estilos.css"/>
    </head>
    <body>
        <header>
            <h1><xsl:value-of select="ite/@nombre"/></h1>
        </header>
        <nav>
            <div class="nav1"></div>
            <div class="nav2"><b>Telefono</b><br/><div class="tel"><xsl:value-of select="ite/telefono"/></div></div>
        </nav>
        <main>
            <div class="section1">
                <h2>Profesores</h2>
                <div>
                    <table  style="margin: 5px;" border="3">
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>ID</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="ite/profesores/profesor">
                                <tr>
                                    <td><xsl:value-of select="nombre"/></td>
                                    <td><xsl:value-of select="id"/></td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>        
                </div>
                <h2>Jefatura</h2>
                <ol>
                    <li><b>Jefe de Estudios</b>:
                        <ul>
                            <li><b>Nombre:</b> <xsl:value-of select="/ite/jefe_estudios/nombre"/></li>
                            <li><b>Despacho:</b>  <xsl:value-of select="/ite/jefe_estudios/despacho"/></li>
                        </ul>
                        
                    </li>
                    <li><b>Director</b>:
                        <ul>
                            <li><b>Nombre:</b> <xsl:value-of select="/ite/director/nombre"/></li>
                            <li><b>Despacho:</b>  <xsl:value-of select="/ite/director/despacho"/></li>
                        </ul>
                    
                    </li>
                </ol>
                <h2>Cursos</h2>
                <table border="2">
                    <thead>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>TituloDecreto</th>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>   
            </div>
            <div class="section2">
                <form action="procesarPeticion.jsp" method="get">
                    <fieldset>
                        <legend>Formulario de Contacto:</legend>
                        <label for="nombre">Nombre</label>
                        <br/>
                        <input id="nombre" type="text" name="edad"/>
                        <br/>
                        <label for="edad">Edad</label>
                        <br/>
                        <input id="edad" type="number" min="18" max="120" name="edad"/>
                        <br/>
                        <label for="email">Correo Electrónico:</label>
                        <br/>
                        <input type="email" id="email" name="email" required=""/>
                        <br/>
                        <label for="tel">Número de Teléfono:</label>
                        <br/>
                        <input type="telefono" id="telefono" name="telefono" required=""/>
                        <br/>
                        <label for="observaciones">Observaciones</label>
                        <br/>
                        <textarea style="resize: none;" rows="5" cols="80" name="observaciones"/>
                        <input type="submit" value="Enviar datos" />
                        <input type="reset" value="Limpiar formulario" />
                    </fieldset>
                </form>
            </div>                   
        </main>
        <footer>
            <div class="divfooter">
            <p><u>Trabajo realizado por:</u></p>
            <ul>
                    <li>Azahara Fonseca Escudero</li>
                    <li>Alfonso Lobato de la Sierra</li>
                    <li>Alejandro Martín Fernández Prieto</li>
            </ul>
            </div>
            <div class="divfooter">
            <p>Derechos de autor © 2023 - Todos los derechos reservados</p>
            <a href="https://www.grupoproeduca.com/">Grupo: Proeduca</a><br/>
            <a href="{ite/@web}">Instituto Edix</a>
            </div>
        </footer>
    </body>
    </html>
    </xsl:template>

</xsl:stylesheet>
