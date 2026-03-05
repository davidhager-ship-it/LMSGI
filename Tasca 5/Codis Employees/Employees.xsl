<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <listado_empleados>
            <xsl:for-each select="DATA/ROW">
                <empleado>
                    <id><xsl:value-of select="employeeNumber"/></id>
                    <datos_personales>
                        <nombre><xsl:value-of select="firstName"/></nombre>
                        <apellido><xsl:value-of select="lastName"/></apellido>
                        <email><xsl:value-of select="email"/></email>
                        <extension><xsl:value-of select="extension"/></extension>
                    </datos_personales>
                    <puesto>
                        <cargo><xsl:value-of select="jobTitle"/></cargo>
                        <jefe_id><xsl:value-of select="reportsTo"/></jefe_id>
                    </puesto>
                    <oficina>
                        <codigo_oficina><xsl:value-of select="ofCode"/></codigo_oficina>
                        <ciudad><xsl:value-of select="ofCity"/></ciudad>
                        <pais><xsl:value-of select="ofCountry"/></pais>
                        <telefono><xsl:value-of select="ofPhone"/></telefono>
                    </oficina>
                </empleado>
            </xsl:for-each>
        </listado_empleados>
    </xsl:template>
</xsl:stylesheet>