<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
  
  <xsl:output method="html"/>
  
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="paredes.css"/>
        <title>
          <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
        </title>
      </head>
      <body>
        
        <nav id="inicio">
          <ul class="nav__ul">
            <li><a class="nav__link" href="#sobre-codificacion">sobre la codificación</a></li>
            <li><a class="nav__link" href="#carta">carta de jamaica</a></li>
            <li><a class="nav__link" href="#estadisticas">algunos datos sobre el texto</a></li>
          </ul>
        </nav>
        
        <xsl:apply-templates/>
        
        <hr />
        <h3 id="estadisticas">Algunos datos sobre el texto</h3>
        <h4>General</h4>
        <p>El presente documento de la "Carta de Jamaica", escrita por Simón Bolivar, contiene <xsl:value-of select="count(/TEI/text/body/p)" /> párrafos, <xsl:value-of select="count(/TEI/text/body/opener/salute)" /> saludo inicial y <xsl:value-of select="count(/TEI/text/body/closer/salute)" /> despedida. Originalmente, este está dispuesto en un total de <xsl:value-of select="/TEI/text/body/p[57]/pb/@n" /> folios. Por otro lado, se mencionan <xsl:value-of select="count(/TEI/text/body/p/placeName)" /> veces el nombre de un lugar, <xsl:value-of select="count(/TEI/text/body/p/persName)" /> veces el nombre de una persona, <xsl:value-of select="count(/TEI/text/body/p/num)" /> veces un número y <xsl:value-of select="count(/TEI/text/body/p/date)" /> veces una fecha. Por último, se menciona <xsl:value-of select="count(/TEI/text/body/p/unit)" /> vez una unidad de medida.</p>
        <h4>Lugares</h4>
        <h5>A</h5>
        <ul>
          <li>América es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='América'])" /> veces; es mencionada como el "Nuevo Mundo" <xsl:value-of select="count(/TEI/text/body/p[placeName='Nuevo Mundo'])" /> veces.</li>
          <li>Arauco es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Arauco'])" /> vez.</li>        
          <li>Arequipa es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Arequipa'])" /> vez.</li>        
          <li>Asia es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Asia'])" /> veces.</li>        
        </ul>
        <h5>B</h5>
        <ul>
          <li>Bahíahonda es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Bahíahonda'])" /> vez.</li>
          <li>Bizancio es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Bizancio'])" /> vez.</li>        
          <li>Buenos Aires es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Buenos Aires'])" /> veces.</li>
        </ul>
        <h5>C</h5>
        <ul>
          <li>Cartagena es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Cartagena'])" /> vez.</li>        
          <li>Chiapas es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Chiapa'])" /> vez.</li>
          <li>Chile es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Chile'])" /> veces.</li>
          <li>China es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='China'])" /> vez.</li>
          <li>Colombia es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Colombia'])" /> veces.</li>
          <li>Corinto es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Corinto'])" /> vez.</li>
          <li>Cuba es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Cuba'])" /> vez.</li>
        </ul>
        <h5>E</h5>
        <ul>
          <li>España es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='España'])" /> veces.</li>        
          <li>Europa es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Europa'])" /> veces.</li>
        </ul>
        <h5>G</h5>
        <ul>
          <li>La Guajiara es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Goajira'])" /> vez.</li>
          <li>Guatemala es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Guatemala'])" /> veces.</li>
        </ul>
        <h5>H</h5>
        <ul>
          <li>Hispahán es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Hispahan'])" /> vez.</li>
        </ul>
        <h5>I</h5>
        <ul>
          <li>Inglaterra es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Inglaterra'])" /> veces.</li>
        </ul>
        <h5>L</h5>
        <ul>
          <li>Lima es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Lima'])" /> veces.</li>
        </ul>        
        <h5>M</h5>
        <ul>
          <li>México es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='México'])" /> veces.</li>
        </ul>
        <h5>N</h5>
        <ul>
          <li>La Nueva Granada es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Nueva Granada'])" /> veces.</li>
        </ul>
        <h5>P</h5>
        <ul>
          <li>Panamá es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Panamá'])" /> vez.</li>
          <li>Persia es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Persia'])" /> vez.</li>        
          <li>Perú es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Perú'])" /> veces.</li>        
          <li>Puerto Rico es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Puerto Rico'])" /> vez.</li>    
        </ul>
        <h5>Q</h5>
        <ul>
          <li>Quito es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Quito'])" /> veces.</li>
        </ul>
        <h5>R</h5>
        <ul>
          <li>Río de la Plata es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Río de la Plata'])" /> vez.</li>
          <li>Roma es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Roma'])" /> vez.</li>        
        </ul>
        <h5>S</h5>
        <ul>
          <li>Santa Marta es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Santa Marta'])" /> vez.</li>
          <li>Sevilla es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Sevilla'])" /> vez.</li>        
        </ul>
        <h5>T</h5>
        <ul>
          <li>Tartaria es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Tartaria'])" /> vez.</li>
          <li>Turquía es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Turquía'])" /> vez.</li>        
        </ul>
        <h5>V</h5>
        <ul>
          <li>Venezuela es mencionada <xsl:value-of select="count(/TEI/text/body/p[placeName='Venezuela'])" /> veces.</li>
        </ul>
        <h5>Y</h5>
        <ul>
          <li>Yucatán es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Yucatán'])" /> vez.</li>
        </ul>
        <h5>Z</h5>
        <ul>
          <li>Zitácuaro es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Zitácuaro'])" /> vez.</li>
          <li>Zultepec es mencionado <xsl:value-of select="count(/TEI/text/body/p[placeName='Zultepec'])" /> vez.</li>        
        </ul>
      </body>
      <footer>
        
        <p>
          Texto tomado de
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]"/>
            </xsl:attribute>
            Open Edition Books</a>
          y codificado por
          <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/persName[1]" />
        </p>
        <p>
          <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/publisher[1]" />.
          <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/pubPlace[1]" />:
          <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/date[1]" />.
        </p>
        
      </footer>
    </html>
  </xsl:template>
  
  
  
  <!-- TEI Header ENCABEZADO -->
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]">
    <div class="header">
      <img class="index-img" src="img/portada.jpg" alt="Encabezado" />
      <div class="centered">
        <h1>
          <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/title[1]" />
        </h1>
        <h2>
          Escrita por <xsl:value-of select="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/author[1]" />
        </h2>
      </div>
    </div>
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/resp[1]">
    <!-- vacío -->
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]">
    <!-- vacío -->
  </xsl:template>
  
  <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]">
    <!-- vacío -->
  </xsl:template>
  
  <!-- TEI Text -->

  <xsl:template match="//text//q">
    <q class="quotes">
      <xsl:apply-templates/>
    </q>
  </xsl:template>
  
  <xsl:template match="//text//pb//@n">
    <!-- vacío -->
  </xsl:template>

  <xsl:template match="//text//date">
    <mark class="date">
      <xsl:apply-templates/>
    </mark>
  </xsl:template>
  
  <xsl:template match="//text//unit">
    <mark class="unit">
      <xsl:apply-templates/>
    </mark>
  </xsl:template>
  
  <xsl:template match="//text//persName">
    <mark class="persName">
      <xsl:apply-templates/>
    </mark>
  </xsl:template>
  
  <xsl:template match="//text//placeName">
    <mark class="placeName">
      <xsl:apply-templates/>
    </mark>
  </xsl:template>
  
  <xsl:template match="//text//num">
    <mark class="num">
      <xsl:apply-templates/>
    </mark>
  </xsl:template>
  
  <xsl:template match="abbr">
    <!--vacío-->
  </xsl:template>
  
  <xsl:template match="expan">
    <span class="expan">
      <xsl:apply-templates/>
    </span>
  </xsl:template>
  
  
  
  <!-- Párrafos -->
  
  <xsl:template match="/TEI/text[1]/body[1]/opener[1]/salute[1]">
    <h3 id="sobre-codificacion">Sobre la codificación </h3>
    <p>El siguiente es un documento XML TEI transformado por medio de XSL a HTML.</p>
    <p>Los nombres de lugares están subrayados en <mark class="placeName">verde</mark>.</p>
    <p>Los nombres de personas están subrayados en <mark class="persName">amarillo</mark>.</p>
    <p>Las fechas están subrayadas en <mark class="date">rosado</mark>.</p>
    <p>Los números están subrayados en <mark class="num">morado</mark>.</p>
    <p>Las unidades de medida están subrayadas en <mark class="unit">azul</mark>.</p>
    <p>Las palabras que estaban abreviadas en el documento original están subrayadas <span class="expan">con una línea</span>.</p>
    
    <hr />
    <h3 id="carta">Carta de Jamaica</h3>
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  
  <xsl:template match="/TEI/text[1]/body[1]/p[1]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[2]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[3]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[4]">
    <p>
      <img src="img/img-05.jpg" class="img-05"/>
      
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[5]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[6]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[7]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[8]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[9]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[10]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[11]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[12]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[13]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[14]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[15]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[16]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[17]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[18]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[19]">
    <p>
      <img src="img/img-19.jpg" class="img-19"/>
        
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[20]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[21]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[22]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[23]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[24]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[25]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[26]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[27]">
    <img src="img/img-27.jpg" class="img-27"/>
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[28]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[29]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[30]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[31]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[32]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[33]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[34]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[35]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[36]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[37]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[38]">
    <p>
      <img src="img/img-38.png" class="img-38"/>
      
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[39]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[40]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[41]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[42]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[43]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[44]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[45]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[46]">
    <p>
      <img src="img/img-46.jpg" class="img-46"/>      
      
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[47]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[48]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[49]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[50]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[51]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[52]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[53]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[54]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[55]">
    <p>
      <img src="img/img-55.jpg" class="img-55"/>
      
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[56]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[57]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[58]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[59]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/p[60]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
  <xsl:template match="/TEI/text[1]/body[1]/closer[1]">
    <p>
      <xsl:apply-templates/>
    </p>
  </xsl:template>
  
</xsl:stylesheet>