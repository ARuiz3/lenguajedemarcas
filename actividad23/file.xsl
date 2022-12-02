<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="factura">
        <html>
            <head><title>Tabla Factura</title></head>
        </html>
        <body>
            <table border="1px">
                
                <tr >
                    <th colspan="6">factura nº <xsl:value-of select="@nfactura"/></th>
                </tr>
                <tr>
                    <td colspan="3">
                        <xsl:value-of select="dfacturador/nombref"/><br></br>
                        <xsl:value-of select="dfacturador/direccionf"/><br></br>
                        <xsl:value-of select="dfacturador/ciudadf"/><br></br>
                        C.I.F: <xsl:value-of select="dfacturador/cif"/><br></br>
                        teléfono: <xsl:value-of select="dfacturador/telf"/><br></br>
                        fax:  <xsl:value-of select="dfacturador/faxf"/><br></br>
                    </td>
                    <td colspan="3">
                        <br></br>
                        <br></br>
                        Fecha: <xsl:value-of select="dpago/fechap"/><br></br>
                        Pedido numº<xsl:value-of select="dpago/npedido"/><br></br>
                        Forma de pago: <xsl:value-of select="dpago/fpago"/><br></br>
                    </td>
                </tr>
                <tr><th colspan="6" text-align="left!">Datos CLIENTE</th></tr>
                <tr>
                    <td colspan="6">
                        nºcliente: <xsl:value-of select="dcliente/ncliente"/><br></br>
                        Nombre: <xsl:value-of select="dcliente/nombrec"/><br></br>
                        Dirección de envio: <xsl:value-of select="dcliente/direccionc"/><br></br>
                        Población: <xsl:value-of select="dcliente/poblacion"/><br></br>
                        cod. postal: <xsl:value-of select="dcliente/cp"/><br></br>
                        Provincia: <xsl:value-of select="dcliente/provincia"/><br></br>
                    </td>
                </tr>
                <tr><th colspan="6" text-align="left">Datos FACTURA</th></tr>
                <tr text-align="right">
                    <th>REF.</th>
                    <th>DESCRIPCIÓN</th>
                    <th>CANT.</th>
                    <th>PRECIO.</th>
                    <th>I.V.A.</th>
                    <th>IMPORTE</th>
                </tr>
                <xsl:for-each select="dfactura">
                    <tr>
                        <td><xsl:value-of select="ref"/></td>
                        <td><xsl:value-of select="descripcion"/></td>
                        <td><xsl:value-of select="cant"/></td>
                        <td><xsl:value-of select="precio"/></td>
                        <td><xsl:value-of select="iva"/></td>
                        <td><xsl:value-of select="importe"/></td>
                    </tr>
                </xsl:for-each>
                
                <tr>
                    <th colspan="2">Base imponible</th>
                    <th colspan="2">% I.V.A</th>
                    <th colspan="2">Cuota I.V.A</th>
                </tr>
                <tr border="0px"> <td colspan="6"></td></tr>
                <tr>
                    <td colspan="2"><xsl:value-of select="total/base"/></td>
                    <td colspan="2"><xsl:value-of select="total/piva"/></td>
                    <td colspan="2"><xsl:value-of select="total/cuota"/></td>
                </tr>
                <tr>
                    <th colspan="6">TOTAL FACTURA: <xsl:value-of select="total/@tfactura"/></th>
                </tr>
            </table>
        </body>
    </xsl:template>

</xsl:stylesheet>
