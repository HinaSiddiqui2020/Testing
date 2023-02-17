<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 >
    <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>Employee Detail</title>
      </head>
      <body bgcolor="gray">
        
          <table border="2">
            <tr>
              <td>E id </td>
              <td> E name </td>
              <td> E contact </td>
              <td> E Address </td>
              <td> E AGE </td>
            </tr>

            <xsl:for-each select="emp/E">
              <xsl:sort select="e_name"/>
             
                <tr>
                <td>
                  <xsl:value-of select="e_id"/>
                </td>
                
                <td>
                  <xsl:value-of select="e_name"/>
                </td>

                  <xsl:choose>
                    <xsl:when test="e_ctn &gt; 467">
                      <td bgcolor="yellow">
                        <xsl:value-of select="e_ctn"/>
                      </td>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:value-of select="e_ctn"/>
                    </xsl:otherwise>
                  </xsl:choose>
                
                <td>
                  <xsl:value-of select="e_address"/>
                </td>
                  
                <xsl:choose>
                  <xsl:when test="e_age &gt; 10">
                    <td bgcolor="white">
                      <xsl:value-of select="e_age"/>
                    </td>   
                  </xsl:when>
                  <xsl:otherwise>
                    <td>
                      <xsl:value-of select="e_age"/>
                    </td> 
                  </xsl:otherwise>
                </xsl:choose>
              </tr>
             
            </xsl:for-each>
          </table>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
