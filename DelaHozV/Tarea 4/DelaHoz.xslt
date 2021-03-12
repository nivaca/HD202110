<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="xhtml"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="DelaHoz.css"/>
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
    <h1>
      <xsl:apply-templates/>
    </h1>
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
    <!--no hacer nada-->
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
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]">
    <h4>
      Texto tomado de
      <a target="blank">
        <xsl:attribute name="href">
          <xsl:value-of select="."/>
        </xsl:attribute>
        aquí
      </a>
    </h4>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/opener[1]/salute[1]">
    <span class="apertura">
      <xsl:apply-templates/>
    </span>
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
    <!--no hacer nada-->
  </xsl:template>
  
  
  <xsl:template match="expan">
    <span class="expansion">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="placeName">
    <span class="lugares-texto">
      
      <xsl:apply-templates/>
      
    </span>
  </xsl:template>
  
  <xsl:template match="persName">
    <span class="nombres-texto">
      
      <xsl:apply-templates/>
      
    </span>
  </xsl:template>
  
  <xsl:template match="num">
    <span class="numero">
      <xsl:apply-templates/>
      
    </span>
  </xsl:template>
  
  <xsl:template match="title">
    <span class="tit-interno">
      
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
  
  <xsl:template match="pb">
    <span class="num-pag">
      <!--no hacer nada-->
    </span>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]/salute[1]">
    <div class="saludo">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="closer">
    <div class="cierre">
      <xsl:apply-templates/>
    </div>
  </xsl:template> 
  
   
</xsl:stylesheet>