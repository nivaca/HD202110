<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="xhtml"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="lopez.css"/>
        <title>
          <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
        </title>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/title">
    <h1><xsl:apply-templates/></h1>
  </xsl:template>
  
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/author">
    <h2><xsl:apply-templates/></h2>
  </xsl:template>
  
  
  <xsl:template match="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:titleStmt[1]/tei:respStmt[1]/tei:persName[1]">
    <h3>
      Codificado por: 
      <xsl:apply-templates/>
    </h3>
  </xsl:template>
  
  
  <xsl:template match="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:titleStmt[1]/tei:respStmt[1]/tei:resp[1]">
    <!--no haga nada-->
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
  
  <xsl:template match="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:publicationStmt[1]/tei:date[1]">
    <div class="fecha-pub">  
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="/tei:TEI/tei:teiHeader[1]/tei:fileDesc[1]/tei:sourceDesc[1]/tei:bibl[1]/tei:ref[1]">
    <h4>
      Texto tomado de
      <a>
        <xsl:attribute name="href">
          <xsl:value-of select="." />
        </xsl:attribute>
        
        <xsl:value-of select="." />
        
      </a>
    </h4>
  </xsl:template>
  
  
  
  
  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  
  <xsl:template match="date">
    <span class="fecha">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="abbr">
    <!--no haga nada-->
  </xsl:template>
  
  
  <xsl:template match="expan">
    <span class="expansion">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="closer">
    <div class="cierre">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="opener">
    <div class="apertura">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="salute">
    <div class="saludo">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="placeName">
    <span class="lugares">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="pb">
      <!--no haga nada-->
  </xsl:template>
  
  
  <xsl:template match="persName">
    <span class="persona">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="num">
    <span class="numero">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="q">
    <span class="citas">
      <q>
        <xsl:apply-templates/>
      </q>
    </span>
  </xsl:template>
  
  

 
  
  
</xsl:stylesheet>