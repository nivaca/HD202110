<?xml version="1.0" encoding="UTF-8"?>

<!--  encabezado del xsl donde se especifica el tipo de transformación que se va realizar  -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <!--  se especifica el tipo de archivo de salida  -->
  <xsl:output method="xhtml"/>
  
  <xsl:template match="/">
    <!--  código de html  -->
    <html>
      <head>
        <!--  conectar con el archivo de estilos propio  -->
        <link rel="stylesheet" href="cardenas.css"/>
        
        <!--  selecciona el titulo de la carta como el título de la página  -->
        <title>
          <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
        </title>
        
      </head>
      
      <!--  aplica plantillas al cuerpo  -->
      <body>
        <xsl:apply-templates/>
      </body>
      
    </html>
    
  </xsl:template>
  
  <!--  Encabezado 1 (Título) -->
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/title">
    <h1><xsl:apply-templates/></h1>
  </xsl:template>
  
  <!--  Encabezado 2 (Autor)  -->
  <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/author">
    <h2><xsl:apply-templates/></h2>
  </xsl:template>
  
  <!--  Encabezado 3 (Nombre del Codificador)  -->
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/persName[1]">
    <h3>
      Codificado por: 
      <xsl:apply-templates/>
    </h3>
  </xsl:template>
  
  <!--  Encabezado 4 (Autor)  -->
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/resp[1]">
    <!--no hace nada-->
  </xsl:template>
  
  <!--  publicista o imprenta  -->
  <xsl:template match="publisher">
    <div class="imprenta">  
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!--  lugar de publicación  -->
  <xsl:template match="pubPlace">
    <div class="lugar-pub">  
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!--  fecha de publicación  -->
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/date[1]">
    <div class="fecha-pub">  
      <xsl:apply-templates/>
    </div>
  </xsl:template>
  
  <!--  fuente  -->
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]">
    <h4>
      Texto tomado de 
      <a>
        <!--  recupera la dirección del link  -->
        <xsl:attribute name="href">
          <xsl:value-of select="." />
        </xsl:attribute>
        <xsl:value-of select="." />
      </a>
    </h4>
  </xsl:template>
  

  <!--  párrafos  -->
  <xsl:template match="p">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <!--  fechas  -->
  <xsl:template match="date">
    <span class="fecha">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  

  <!--  expansiones  -->
  <xsl:template match="expan">
    <span class="expansion">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  nombres de lugares  -->
  <xsl:template match="placeName">
    <span class="place">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  nombres de personas  -->
  <xsl:template match="persName">
    <span class="persName">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  pb saltos de página  -->
  <xsl:template match="pb">
    <span class="pb">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  citas  -->
  <xsl:template match="q">
    <q class="citas">
      <xsl:apply-templates/>
    </q>
  </xsl:template>
  
  <!--  abreviaciones  -->
  <xsl:template match="abbr">
    <!--no hace nada-->
  </xsl:template>
  
  <!--  números y cifras  -->
  <xsl:template match="num">
    <span class="number">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  unidades de medida -->
  <xsl:template match="//text//unit">
    <span class="unit">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  apertura -->
  <xsl:template match="salute">
    <span class="saludo">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  <!--  cierre -->
  <xsl:template match="closer">
    <span class="closer">
      <xsl:apply-templates/>
    </span>
  </xsl:template>

   
</xsl:stylesheet>