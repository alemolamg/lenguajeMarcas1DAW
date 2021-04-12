<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/juegoTanques">
    <html>
      <head>
        <title>Juego de tanques</title>
        <style>
          thead td {
          background: #5077cc;
          color: #FFFFFF;
          }
        </style>
      </head>
      <body>
        <table border="1" width="90%">
          <thead>
            <td>Jugada</td>
            <td>Tanque</td>
            <td>Imagen</td>
            <td>Descripción</td>
          </thead>
          <tbody>
            <xsl:for-each select="jugadasDescritas/jugada">
              <xsl:choose>
                <xsl:when test="position() mod 2 = 1">
                  <xsl:call-template name="pintaFila">
                    <xsl:with-param name="color">#c7d4f0</xsl:with-param>
                    <xsl:with-param name="numeroJugador"><xsl:value-of select="@jugador"/></xsl:with-param>
                  </xsl:call-template>
                </xsl:when>
                <xsl:otherwise>
                  <xsl:call-template name="pintaFila">
                    <xsl:with-param name="color">#ffffff</xsl:with-param>
                    <xsl:with-param name="numeroJugador"><xsl:value-of select="@jugador"/></xsl:with-param>
                  </xsl:call-template>
              </xsl:otherwise>
              </xsl:choose>
              
            
            </xsl:for-each>
          
          </tbody>
        </table>
        
      </body>
      
    </html>
  </xsl:template>
  

  <xsl:template name="pintaFila">
    <xsl:param name="color"/>
    <xsl:param name="numeroJugador"/>

    <tr style="background: {$color}">
      <td>
        <xsl:value-of select="position()"/>
      </td>
      <td>
        <xsl:value-of select="@jugador"/>
      </td>
      <td>
        <img width="50px" src="{/juegoTanques/tanques/imagenTanque[@jugador=$numeroJugador]}"/>
      </td>
      <td>
        <xsl:value-of select="@desc"/>
      </td>
    </tr>

  </xsl:template>
  
</xsl:stylesheet>



