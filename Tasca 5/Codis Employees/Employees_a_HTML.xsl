<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Llista d'empleats</title>
</head>

<body>

<h2>Llista d'empleats</h2>

<ul style="list-style-type: disc;">

<xsl:for-each select="listado_empleados/empleado">
    <xsl:sort select="datos_personales/nombre"/>

    <li>
        <h3 style="color:blue;">
            Empleat amb id <xsl:value-of select="id"/>
        </h3>

        <!-- Segon nivell -->
        <ul style="list-style-type: circle;">

            <li>
                <b>Nom:</b>
                <xsl:value-of select="datos_personales/nombre"/>
                <xsl:value-of select="datos_personales/apellido"/>
            </li>

            <li>
                <b>Correu:</b>
                <xsl:value-of select="datos_personales/email"/>
            </li>

            <li>
                <b>Id del seu superior:</b>
                <xsl:value-of select="puesto/jefe_id"/>
            </li>

            <li>
                <b>Posició:</b>
                <xsl:value-of select="puesto/cargo"/>
            </li>

            <li>
                <b>Oficina amb codi:</b>
                <xsl:value-of select="oficina/codigo_oficina"/>

                <!-- Tercer nivell -->
                <ul style="list-style-type: square; color:red; font-style:italic;">

                    <li>
                        <b>Telèfon:</b>
                        <xsl:value-of select="oficina/telefono"/>
                    </li>

                    <li>
                        <b>Adreça:</b>
                        <xsl:value-of select="oficina/direccion"/>
                    </li>

                    <li>
                        <b>Estat:</b>
                        <xsl:value-of select="oficina/estado"/>
                    </li>

                    <li>
                        <b>País:</b>
                        <xsl:value-of select="oficina/pais"/>
                    </li>

                    <li>
                        <b>Codi Postal:</b>
                        <xsl:value-of select="oficina/codigo_postal"/>
                    </li>

                    <li>
                        <b>Territori:</b>
                        <xsl:value-of select="oficina/territorio"/>
                    </li>

                </ul>

            </li>

        </ul>

    </li>

</xsl:for-each>

</ul>

</body>
</html>

</xsl:template>

</xsl:stylesheet>