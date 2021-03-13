<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="xhtml"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="guevara.css"/>
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
    <div class="titulo">
      <h1><xsl:apply-templates/></h1>
    </div>
  </xsl:template>
  
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/author">
    <h2><xsl:apply-templates/></h2>    
  </xsl:template>
  
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/persName[1]">
    <h4>
      Codificado por:
      <xsl:apply-templates/></h4>    
  </xsl:template>
  

  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/resp[1]">
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
  
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/date[1]">
    <div class="fecha-pub">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]">
    <h4>
      Texto tomado de:
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
  
  
  <xsl:template match="opener">
    <div class="saludo">
      <xsl:apply-templates/>
    </div>
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
  
  
  <xsl:template match="placeName">
    <span class="lugares">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="q">
    <span class="comillas">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="num">
    <span class="numeros">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="persName">
    <span class="nombres">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="title">
    <span class="titulos">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]">
    <div class="final">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  
</xsl:stylesheet>
