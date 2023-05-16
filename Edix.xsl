<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>      
        <title>BIENVENIDOS A EDIX</title>
        <link rel="stylesheet" type="text/css" href="css/elementos.css"></link>
      </head>
        <body>
          <h1><xsl:value-of select="ite/@nombre"/></h1>
          <profesores>     
            <xsl:for-each select="profesores/profesor">
              <p>id: <xsl:value-of select="profesor/id"/></p>
              <p>nombre: <xsl:value-of select="profesor/nombre"/></p>
            </xsl:for-each>
          </profesores> 
          <director>
            <xsl:for-each select="director">
              <p>nombre: <xsl:value-of select="director/nombre"/></p>
              <p>despacho: <xsl:value-of select="director/despacho"/></p>
            </xsl:for-each>
          </director>
          <jefe_estudios>
            <xsl:for-each select="jefe_estudios">
              <p>nombre: <xsl:value-of select="jefe:estudios/nombre"/></p>
              <p>despacho: <xsl:value-of select="jefe_estudios/despacho"/></p>
            </xsl:for-each>
          </jefe_estudios>
          <ciclos>
            <xsl:for-each select="ciclos/ciclo">
              <p>nombre: <xsl:value-of select="ciclo/nombre"/></p>
              <p>grado: <xsl:value-of select="ciclo/grado"/></p>
              <p>decretoTitulo: <xsl:value-of select="ciclo/decretoTitulo"/></p>
            </xsl:for-each>
            </ciclos>
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
                    <tr>
                        <td>Félix</td>
                        <td>1</td>  
                    </tr>
                    <tr>
                        <td>Raúl</td>
                        <td>2</td>  
                    </tr>
                    <tr>
                        <td>Raquel</td>
                        <td>3</td>    
                    </tr>
                    <tr>
                      <td>Tomás</td>
                      <td>4</td>    
                  </tr>
                </tbody>
              </table>
              <br/>
              <br/>
              <table border="1">
                <thead>
                  <tr>
                    <caption>DIRECTOR</caption>
                      <th>NOMBRE</th>  
                      <th>DESPACHO</th>
                      <th>PLANTA</th>
                      <th>ESCALERA</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Chon</td>
                    <td>31</td>
                    <td>3ª</td>
                    <td>A</td> 
                  </tr> 
                </tbody>
              </table>
              <br/>
              <br/>
              <table border="1">
                <thead>
                    <tr>
                      <caption>JEFE DE ESTUDIOS</caption>
                        <th>NOMBRE</th>  
                        <th>DESPACHO</th>
                        <th>PLANTA</th>
                        <th>ESCALERA</th>
                    </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Dani</td>
                    <td>27</td>
                    <td>2ª</td>
                    <td>B</td> 
                  </tr> 
                </tbody>
              </table>
              <br/>
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
                  <br/>
                  <tbody>
                    <tr>
                      <td>ASIR</td>
                      <td>Administración de Sistemas Informaticos en Red</td> 
                      <td>Superior</td>
                      <td>2009</td> 
                    </tr>
                    <tr>
                      <td>DAW</td>
                      <td>Desarrollo de Aplicaciones Web</td> 
                      <td>Superior</td>
                      <td>2010</td> 
                    </tr>
                    <tr>
                      <td>DAM</td>
                      <td>Desarrollo de Aplicaciones Multiplataforma</td> 
                      <td>Superior</td>
                      <td>2010</td>    
                    </tr>
                  </tbody>
                </table> 
                <br/>
                <h2>FORMULARIO DE CONSULTA</h2>  
                <div id="formulario">       
                <form action="procesarPeticion.jsp" method="post">
                        <label for="Nombre:">Nombre: </label>
                        <input type="text" name="Nombre:" required=""/>
                        <label for="Apellidos:">Apellidos: </label>
                        <input type="text" name="Apellidos:" required=""/><br/><br/>
                        <label for="email">Email</label>
                        <input type="text" name="Email:" required=""/>
                        <label for="Móvil:">Teléfono Móvil: </label>
                        <input type="tel" name="Teléfono Móvil:" required=""/><br/><br/>
                        <label for="mensaje">Escriba el motivo de su consulta:</label><br/>
                        <textarea name="mensaje" rows="5" cols="80" required=""/><br/>
                        <input type="submit" value="Enviar"/>
                        <input type="reset" value="Limpiar formulario"/>
                  </form>
                </div>     
        </body> 
    </html>   
  </xsl:template>
</xsl:stylesheet>
