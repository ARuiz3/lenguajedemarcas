<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head><title>Tabla</title></head>
        </html>
        <body>
            <table border="1px">
                <tr>
                    <th colspan="6">CD's en oferta</th>
                </tr>
                <tr>
                    <th>Título</th>
                    <th>Artista</th>
                    <th>pais</th>
                    <th>Compañia</th>
                    <th>Precio</th>
                    <th>Año</th>
                </tr>
                <xsl:for-each select="discos/cds">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="artista"/></td>
                        <td><xsl:value-of select="pais"/></td>
                        <td><xsl:value-of select="compañia"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="año"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
    </xsl:template>
</xsl:stylesheet>