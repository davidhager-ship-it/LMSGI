<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <listado_clientes>
            <xsl:for-each select="DATA/ROW">
                <cliente>
                    <id><xsl:value-of select="customerNumber"/></id>
                    <empresa><xsl:value-of select="customerName"/></empresa>
                    <contacto>
                        <nombre><xsl:value-of select="contactFirstName"/></nombre>
                        <apellido><xsl:value-of select="contactLastName"/></apellido>
                        <telefono><xsl:value-of select="phone"/></telefono>
                    </contacto>
                    <direccion>
                        <calle><xsl:value-of select="addressLine1"/></calle>
                        <ciudad><xsl:value-of select="city"/></ciudad>
                        <pais><xsl:value-of select="country"/></pais>
                    </direccion>
                    <datos_comerciales>
                        <vendedor_id><xsl:value-of select="salesRepEmployeeNumber"/></vendedor_id>
                        <limite_credito><xsl:value-of select="creditLimit"/></limite_credito>
                    </datos_comerciales>
                </cliente>
            </xsl:for-each>
        </listado_clientes>
    </xsl:template>
</xsl:stylesheet>