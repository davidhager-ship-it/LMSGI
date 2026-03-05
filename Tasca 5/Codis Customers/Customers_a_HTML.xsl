<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

        <html>
            <head>
                <title>Llistat de Clients</title>
                <style>
                    table {
                        border-collapse: collapse;
                        width: 100%;
                        font-family: Arial, sans-serif;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                    tr:nth-child(even) {
                        background-color: #f9f9f9;
                    }
                </style>
            </head>

            <body>
                <h2>Llistat de Clients</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Empresa</th>
                        <th>Nom</th>
                        <th>Cognom</th>
                        <th>Telèfon</th>
                        <th>Carrer</th>
                        <th>Ciutat</th>
                        <th>País</th>
                        <th>Venedor ID</th>
                        <th>Límit Crèdit</th>
                    </tr>

                    <xsl:for-each select="listado_clientes/cliente">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="empresa"/></td>
                            <td><xsl:value-of select="contacto/nombre"/></td>
                            <td><xsl:value-of select="contacto/apellido"/></td>
                            <td><xsl:value-of select="contacto/telefono"/></td>
                            <td><xsl:value-of select="direccion/calle"/></td>
                            <td><xsl:value-of select="direccion/ciudad"/></td>
                            <td><xsl:value-of select="direccion/pais"/></td>
                            <td><xsl:value-of select="datos_comerciales/vendedor_id"/></td>
                            <td><xsl:value-of select="datos_comerciales/limite_credito"/></td>
                        </tr>
                    </xsl:for-each>

                </table>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>