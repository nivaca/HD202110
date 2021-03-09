<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="icon" type="image/png" href="img/corresp.png"/><!--https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPNCOsotEgbfBWpe3GnzcSeXgEfQgL8RFmzg&usqp=CAU-->
                <link rel="stylesheet" href="manrique.css"/>
                <title>
                    <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
                </title>
            </head>
            <body>
                <xsl:apply-templates/>
                <footer>
                    <img src="img/images_sb.JPG" width="25%" height="280vw"/><!--https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.chicagotribune.com%2Fresizer%2FX50gp-zyE4P0gxJV8Xua1rZxlqM%3D%2F415x613%2Ftop%2Farc-anglerfish-arc2-prod-tronc.s3.amazonaws.com%2Fpublic%2FAQNDTESIPRGGNKKXEDJUUFYKFY.jpg&imgrefurl=https%3A%2F%2Fwww.chicagotribune.com%2Fhoy%2Fct-hoy-8118467-chavez-desvela-imagen-digitalizada-de-simon-bolivar-story.html&tbnid=soj793ugoHiTpM&vet=12ahUKEwiTgcLCpo7vAhW0hoQIHT0bA6QQMygXegUIARD9AQ..i&docid=I2jxPvRKMBoXBM&w=415&h=613&q=sim%C3%B3n%20bol%C3%ADvar&ved=2ahUKEwiTgcLCpo7vAhW0hoQIHT0bA6QQMygXegUIARD9AQ-->
                </footer>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/title">        <h1><xsl:apply-templates/></h1>
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/author">        <h2><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:persName[1]">
        <h3>
            Codificado por:
            Mónica Manrique
            <!--Sobre la línea anterior: exclusivamente para propósitos del ejercicio, ya que el archivo xml no es uno de los entregables-->
        </h3>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:respStmt/tei:resp[1]">
        <!--No hacer nada-->
    </xsl:template>
    
    <xsl:template match="publisher">
        <div class="imprenta">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="pubPlace">
        <div class="lugar-pub">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date[1]">
        <div class="fecha-pub">
            <xsl:apply-templates/>
            <br/>
        </div>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl[1]/tei:ref[1]">
        <h4>
            Tomado de:
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="."/>
                </xsl:attribute>
                <xsl:value-of select="."/>
            </a>
        </h4>
    </xsl:template>
    
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    
    <xsl:template match="q">
        <q>
            <xsl:apply-templates/>
        </q>
    </xsl:template>
    
    <xsl:template match="abbr">
        <!--No hacer nada-->
    </xsl:template>
    
    <xsl:template match="expan">
        <span class="expansion">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="orig">
        <!--No hacer nada-->
    </xsl:template>
    
    <xsl:template match="reg">
        <span class="regulado">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="placeName">
        <span class="lugar">
            <xsl:apply-templates/>
        </span>
    </xsl:template>

    <xsl:template match="placeName[@ref]">
        <span class="lugar1">
            <xsl:apply-templates/>
            (<xsl:value-of select="substring(@ref,2)"/>)
        </span>
    </xsl:template>

    <xsl:template match="persName">
        <span class="persona">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="date">
        <span class="fecha">
            <xsl:apply-templates/>
            (<xsl:value-of select="@when"/>)
        </span>
    </xsl:template>
    
    <xsl:template match="num">
        <span class="numero">
            <xsl:apply-templates/>
            (<xsl:value-of select="@value"/>)
        </span>
    </xsl:template>
    
    <xsl:template match="unit">
        <span class="unidad">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:opener/tei:salute">
        <div id="saludo1">
            <br/>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="body/p/title">
        <span class="obra">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    
    <xsl:template match="tei:TEI/tei:text/tei:body/tei:closer/tei:salute">
        <div id="saludo2">
            <br/>
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="closer">
        <div class="closer"><xsl:apply-templates/></div>
        <br/>
    </xsl:template>

</xsl:stylesheet>