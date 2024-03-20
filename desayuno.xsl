<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        
        <html>
            <head>
                <title> Carta de desayuno </title>
                <link rel="stylesheet" href="css.css" type="text/css"></link>
            </head>
            <body>
                <h2> CARTA DE DESAYUNO </h2>
                <p> El numero de desayunos de la carta es: 
                    <br></br>                   
                    <div class="numero">
                        <xsl:apply-templates/>
                    </div>
                </p>
                <p>
                    El primer desayuno cuesta
                    <ul type="square">
                        <li>
                            <xsl:apply-templates select="//desayuno[1]"/>
                        </li>
                    </ul>
                    <br></br>
                    <table border="1">
                        <tr>
                            <td>
                                <xsl:apply-templates select="//desayuno[1]/descripcion"/>
                            </td>
                        </tr>
                    </table>
                </p>
            </body>
        </html>
        El numero de desayunos de la carta es:
        <xsl:apply-templates/> , el primer desayuno cuesta <xsl:apply-templates select="//desayuno[1]"/>
        e incluye <xsl:apply-templates select="//desayuno[1]/descripcion"/>
    </xsl:template>
    <xsl:template match="//carta">
        <xsl:value-of select="count(//desayuno)"/>
    </xsl:template>
    <xsl:template match="//desayuno[1]">
        <xsl:value-of select="./precio"/>
    </xsl:template>
    <xsl:template match="//desayuno[1]/descripcion">
        <xsl:value-of select="."/>
    </xsl:template>
</xsl:stylesheet>