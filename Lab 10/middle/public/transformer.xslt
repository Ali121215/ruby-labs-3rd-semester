<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
    <html>
    <head>
    </head>
    <body>
        <table id="input">
            <tbody>
                <tr>
                    <td><xsl:value-of select="params/result"/></td>
                </tr>
            </tbody>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>