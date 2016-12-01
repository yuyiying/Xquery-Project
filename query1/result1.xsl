<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">  
       <xsl:template match="/">
            <html>
                <body>
                    <h2>Retrieve the employment history of employee "Anneke Preusig".
                        </h2>
                    <table border="1">
                        <tr bgcolor="#9acd32">
                            <th style="text-align:center">Start Time</th>
                            <th style="text-align:center">End Time</th>
                            <th style="text-align:center">First Name</th>
                            <th style="text-align:center">Last Name</th>
                            <th style="text-align:center">Depart No</th>
                            <th style="text-align:center">Title</th>
                        </tr>
                        <xsl:for-each select="employees/employee">
                            <tr>
                                <td><xsl:value-of select="@tstart"/></td>
                                <td><xsl:value-of select="@tend"/></td>
                                <td><xsl:value-of select="firstname"/></td>
                                <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="deptno"/></td>
                                <td><xsl:value-of select="title"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>