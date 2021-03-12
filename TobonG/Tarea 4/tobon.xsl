<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="xhtml"/>
 
  <xsl:template match="/">
    <html>
        <link href="Libre_Baskerville/LibreBaskerville-Regular.ttf"/>

        <link rel="shortcut icon" href="bolivar.jfif" type="image/x-icon"/>
      <link rel="stylesheet" href="tobon.css"/>
        <title>  
          <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
        </title>
        
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
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/respStmt">
    <h3>
      Codificación de: 
      <xsl:apply-templates/>
    </h3>
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/respStmt/resp">
    <!--no hice nada-->
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/publisher[1]">
    <div class="imprenta">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/pubPlace[1]">
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
        <xsl:attribute name="href">
          <xsl:value-of select="."/>
        </xsl:attribute> 
        aquí
      </a>      
    </h4>
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
  
  
  <xsl:template match="abbr">
    <!--no hice nada-->
  </xsl:template>
  
  
  <xsl:template match="expan">
    <span class="expansion">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="closer">
    <div class="despedida">
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <xsl:template match="num">
    <span class="numeros">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

  <xsl:template match="placeName">
    <span class="locaciones">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="persName">
    <span class="personajes">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <xsl:template match="q">
    <span class="citas">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
</xsl:stylesheet>