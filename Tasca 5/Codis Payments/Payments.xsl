<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <listado_pagos>
            <xsl:for-each select="DATA/ROW">
                <pago>
                    <transaccion>
                        <num_cheque><xsl:value-of select="checkNumber"/></num_cheque>
                        <fecha><xsl:value-of select="paymentDate"/></fecha>
                        <importe><xsl:value-of select="amount"/></importe>
                    </transaccion>
                    <cliente>
                        <id_cliente><xsl:value-of select="customerNumber"/></id_cliente>
                        <nombre_cliente><xsl:value-of select="customerName"/></nombre_cliente>
                        <ciudad><xsl:value-of select="city"/></ciudad>
                    </cliente>
                </pago>
            </xsl:for-each>
        </listado_pagos>
    </xsl:template>
</xsl:stylesheet>