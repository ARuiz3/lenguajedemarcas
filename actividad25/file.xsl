<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="factura">
    factura:
      nfactura: <xsl:value-of select="@nfactura"/>
      dfacturador:
        nombref: <xsl:value-of select="dfacturador/nombref"/>
        direccionf: <xsl:value-of select="dfacturador/direccionf"/>
        ciudadf: <xsl:value-of select="dfacturador/ciudadf"/>
        cif: <xsl:value-of select="dfacturador/cif"/>
        telf: <xsl:value-of select="dfacturador/telf"/>
        faxf: <xsl:value-of select="dfacturador/faxf"/>
      dpago:
        fechap: <xsl:value-of select="dpago/fechap"/>
        npedido: <xsl:value-of select="dpago/npedido"/>
        fpago: <xsl:value-of select="dpago/fpago"/>
      dcliente:
        ncliente: <xsl:value-of select="dcliente/ncliente"/>
        nombrec: <xsl:value-of select="dcliente/nombrec"/>
        direccionc: <xsl:value-of select="dcliente/direccionc"/>
        poblacion: <xsl:value-of select="dcliente/poblacion"/>
        cp: <xsl:value-of select="dcliente/cp"/>
        provincia: <xsl:value-of select="dcliente/provincia"/>
      dfactura:
      <xsl:for-each select="dfactura">
        - ref: <xsl:value-of select="ref"/>
          descripcion: <xsl:value-of select="descripcion"/>
          cant: <xsl:value-of select="cant"/>
          precio: <xsl:value-of select="precio"/>
          iva: <xsl:value-of select="iva"/>
          importe: <xsl:value-of select="importe"/>
      </xsl:for-each>
      total:  
        tfactura: <xsl:value-of select="total/@tfactura"/>
        base: <xsl:value-of select="total/base"/>
        piva: <xsl:value-of select="total/piva"/>
        cuota: <xsl:value-of select="total/cuota"/>
    </xsl:template>

</xsl:stylesheet>
