<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="xhtml"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="calderon.css"/>
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
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/respStmt/persName">    
    <h3>Codificado por:
      <xsl:apply-templates/></h3>
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/resp[1]">
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/opener[1]/salute[1]">
    <span class="saludo">
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
  
  <xsl:template match="placeName">
    <span class="lugar">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="persName">
    <span class="nombre">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="q">
    <span class="cita">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="num">
    <span class="cifra">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="unit">
    <span class="unidad">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[33]/title[1]">
    <span class="titulo">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="abbr">
    <!--No haga nada-->
  </xsl:template>
  
  <xsl:template match="expan">
    <span class="expansion">
      <xsl:apply-templates/>
    </span>
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
      Texto tomado de 
      <a>
        <xsl:attribute name="href" >
          <xsl:value-of select="." />
        </xsl:attribute>
        aquí
      </a>.
    </h4>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]/salute[1]">
    <div class="despedida">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]">
    <div class="firma">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]/date[1]">
    <span class="firma">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
</xsl:stylesheet>