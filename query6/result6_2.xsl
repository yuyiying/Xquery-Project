<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">  
       <xsl:template match="/">
            <html>
                <body>
                    <h2>Print the history of employee count for the whole company.
                    </h2>
                        <xsl:for-each select="company">
                            <table border="1">
                                <tr bgcolor="#9acd32">
                                    <th style="text-align:center">Start Time</th>
                                    <th style="text-align:center">End Time</th>
                                    <th style="text-align:center">Count</th>
                                </tr>
                                <xsl:for-each select="count">
                                    <tr>
                                        <td><xsl:value-of select="./@tstart"/></td>
                                        <td><xsl:value-of select="./@tend"/></td>
                                        <td><xsl:value-of select="."/></td>
                                    </tr>
                                </xsl:for-each>

                            </table>
                        </xsl:for-each>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>