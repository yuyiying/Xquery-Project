<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">  
       <xsl:template match="/">
            <html>
                <body>
                    <h2>For each employee show title history and  his/her manager history.
                    </h2>
                        <xsl:for-each select="employees/employee">
                                <h3><xsl:value-of select="firstname"/>, <xsl:value-of select="lastname"/>
                                </h3>
                            <table border="1">
                                <tr bgcolor="#9acd32">
                                    <th style="text-align:center">Title</th>
                                </tr>
                                    <tr>
                                        <td><xsl:value-of select="title"/></td>
                                    </tr>
                            </table>

                            <table border="1">
                                <tr bgcolor="#9acd32">
                                    <th style="text-align:center">Manager No</th>
                                </tr>
                                <xsl:for-each select="managers/mgrno">
                                    <tr>
                                        <td><xsl:value-of select="."/></td>
                                    </tr>
                                </xsl:for-each>

                            </table>
                        </xsl:for-each>
                </body>
            </html>
        </xsl:template>
    </xsl:stylesheet>