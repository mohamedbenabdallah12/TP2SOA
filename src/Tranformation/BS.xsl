<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="somme">
<xsl:value-of select="sum(BS/GetComptes/solde)"></xsl:value-of></xsl:variable>
<xsl:variable name="som">
<xsl:value-of select="sum(BS/GetComptes[(substring(date, 1, 4)) > 2000]/solde)"></xsl:value-of>
</xsl:variable>
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
      <head>
        <title>BS Conversion</title>
      </head>
      <body>
        
        
        <h1>Comptes</h1>
        <table border="1">
          <tr>
            <th>Code</th>
            <th>Solde</th>
            <th>Date</th>
          </tr>
          <xsl:for-each select="BS/GetComptes">
            <tr>
              <td><xsl:value-of select="code"/></td>
              <td><xsl:value-of select="solde"/></td>
              <td><xsl:value-of select="date"/></td>
            </tr>
            </xsl:for-each>
  <tr>
    <td><strong>Total</strong></td>
    <td>
      <xsl:value-of select="$somme"/>
    </td>
    <td></td>
  </tr>
        
        </table>
        <h1>Comptes</h1>
        <table border="1">
          <tr>
            <th>Code</th>
            <th>Solde</th>
            <th>Date</th>
          </tr>
          <xsl:for-each select="BS/GetComptes[(substring(date, 1, 4)) > 2000]">
            <tr>
              <td><xsl:value-of select="code"/></td>
              <td><xsl:value-of select="solde"/></td>
              <td><xsl:value-of select="date"/></td>
            </tr>
          </xsl:for-each>
          <tr>
    <td><strong>Total</strong></td>
    <td>
      <xsl:value-of select="$som"/>
    </td>
    <td></td>
  </tr>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>






