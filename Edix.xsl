<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>      
        <title>BIENVENIDOS A EDIX</title>
        <link rel="stylesheet" type="text/css" href="css/elementos.css"/>
      </head>
        <body>
        <h1><xsl:value-of select="ite/@nombre"/></h1>              
          <br/>
            <h2>PROFESORADO</h2>
              <table border="1">
                <thead>
                    <tr>
                      <caption>PROFESORES</caption>
                        <th>NOMBRE</th>  
                        <th>ID</th> 
                    </tr>
                </thead>
                <tbody>
                  <xsl:for-each select="//profesores/profesor">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="id"/></td>  
                    </tr>
                  </xsl:for-each>
                </tbody>
              </table>
              <br/>
              <br/>
              <h2>DIRECTOR</h2>
              <div class="listas">
                <ul>
                  <xsl:for-each select="//director">
                    <li>Nombre: <xsl:value-of select="nombre"/></li>
                    <li>Despacho: <xsl:value-of select="despacho"/></li>
                  </xsl:for-each>
                </ul> 
                <h2>JEFE DE ESTUDIOS</h2>
                <ul>
                  <xsl:for-each select="//jefe_estudios">
                      <li> Nombre: <xsl:value-of select="nombre"/></li>
                      <li>Despacho: <xsl:value-of select="despacho"/></li>
                    </xsl:for-each>
                </ul> 
              </div>   
              <br/>
              <h2>CICLOS FORMATIVOS</h2>
                <table border="1">
                  <thead>
                    <tr>
                      <caption>CICLOS</caption>
                        <th>ID</th>  
                        <th>NOMBRE</th>
                        <th>TIPO_GRADO</th> 
                        <th>AÑO_DECRETO</th> 
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
                    </xsl:for-each>
                  </tbody>
                </table> 
                <br/>
                <h2>FORMULARIO DE CONSULTA</h2>  
                <div id="formulario">       
                <form action="procesarPeticion.jsp" method="post">
                        <label for="Nombre:"> Nombre: </label>
                        <input type="text" name="Nombre:" required=""/>
                        <label for="Apellidos:">  Apellidos: </label>
                        <input type="text" name="Apellidos:" required=""/><br/><br/>
                        <label for="email"> Email:</label>
                        <input type="text" name="Email:" required=""/>
                        <label for="Móvil:">  Teléfono Móvil: </label>
                        <input type="tel" name="Teléfono Móvil:" required=""/><br/><br/>
                        <label for="mensaje">Escriba el motivo de su consulta:</label><br/>
                        <textarea name="mensaje" rows="5" cols="80" required=""/><br/>
                        <input type="submit" value="Enviar"/>
                        <input type="reset" value="Limpiar formulario"/>
                  </form>
                </div> 
                <br/>
              <h2><a href="{ite/@web}">Visita nuestra web</a></h2>  
              <h3><a href="https:www.grupoproeduca.com">GRUPO PROEDUCA</a></h3>
              <h3>TELEFONO:+34 91 787 39 91</h3>
        </body> 
    </html>   
  </xsl:template>
</xsl:stylesheet>
