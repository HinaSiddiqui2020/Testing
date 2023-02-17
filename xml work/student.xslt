<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <tile> book data</tile>
      </head>
      <body bgcolor="gray">
        <table bgcolor="cyan" border="1" align="center" width="70%">
          <tr>
            <th>author</th>
            <th>title</th>
            <th>price</th>
          </tr>

          <xsl:for-each select="catalog/cd">
            <xsl:sort select="author"/>
            <!--<xsl:if test="price &gt; 45">-->


            <tr align ="center">
              <td>
                <xsl:value-of select="author"/>
              </td>

              <td>
                <xsl:value-of select="title"/>
              </td>

              <xsl:choose>
                <xsl:when test="price &gt; 45">
                  <td bgcolor="red">
                    <xsl:value-of select="price"/>
                  </td>
                </xsl:when>

                <xsl:otherwise>
                  <td>
                    <xsl:value-of select="price"/>
                  </td>
                </xsl:otherwise>     

              </xsl:choose>

            </tr>
            <!--</xsl:if>-->
          </xsl:for-each>

        </table>
      </body>
    </html>



  </xsl:template>
</xsl:stylesheet>



