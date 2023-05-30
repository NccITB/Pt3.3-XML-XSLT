<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Truita de Patata</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1><xsl:value-of select="Reseptes/resepta/title"/></h1>
                <h3>Ingredients</h3>
                <ul>
                    <xsl:for-each select="Reseptes/resepta/ingredients/item">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ul>
                <h3>Preparació</h3>
                <ol>
                    <xsl:for-each select="Reseptes/resepta/preparacio/step">
                        <li><xsl:value-of select="."/></li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>