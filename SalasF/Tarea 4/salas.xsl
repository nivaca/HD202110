<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0" xmlns:tei="http://www.tei-c.org/ns/1.0">
    
    <xsl:output method="xhtml"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="salas.css"/>
                <title>
                    <xsl:value-of select="/TEI/teiHeader/fileDesc/titleStmt/title"/>
                </title>
                
                <author>
                    
                    
                </author>
            </head>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader">
        
        <div class="theHeader">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt">
        
        <div class="titleStmt">
            <xsl:apply-templates/>
        </div>
        
        
    </xsl:template>
    
    
    <xsl:template match="/TEI/teiHeader/fileDesc/titleStmt/title">
        
        <h1>
            <xsl:apply-templates/>
        </h1>
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/author[1]">
        
        <h2>
            <xsl:apply-templates/>
        </h2>
        
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/resp[1]">
        
        <h3>
            <xsl:apply-templates/>
        </h3>
        
        
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt">
        
        <div class="publicationStmt">
            <xsl:apply-templates/>
        </div>
        
        
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/respStmt[1]/persName">
        
        <h3>
            <xsl:apply-templates/>
        </h3>
        
        
    </xsl:template>
    
 
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/publisher[1]">
        
        <h3>
            <xsl:apply-templates/>
        </h3>
        
        
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/pubPlace[1]">
        
        <h3>
            <xsl:apply-templates/>
        </h3>
        
        
    </xsl:template>
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/publicationStmt[1]/date[1]">
        
        <h3>
            <xsl:apply-templates/>
        </h3>
        
        
    </xsl:template>
    
    
    
    
    <xsl:template match="/TEI/teiHeader[1]/fileDesc[1]/sourceDesc[1]/bibl[1]/ref[1]">
        
        <div class="fuente">
            <p>
                Fuente:
                
                <a>
                    <xsl:attribute name="href">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                    
                    
                    <xsl:value-of select="."/>
                    
                </a>
            </p>
        </div>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body">
        
        <section class="article">
            
            <xsl:apply-templates/>
            
        </section>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/opener[1]">
        
        <div class="opener">
            
            <xsl:apply-templates/>
            
        </div>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body/p">
        
        <p>
            
            <xsl:apply-templates/>
            
        </p>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/choice/expan">
        
                
            
        <sub>         
            <xsl:apply-templates/>    
        </sub>
        
        
    </xsl:template>
    
    
    
    <xsl:template match="/TEI/text[1]/body[1]/p/choice/abbr">
        
        <xsl:apply-templates/>  
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/q/choice/expan">
        
        
        <sub>         
            <xsl:apply-templates/>    
        </sub>
        
        
    </xsl:template>
    
    
    
    <xsl:template match="/TEI/text[1]/body[1]/p/q/choice/abbr">
        
        <xsl:apply-templates/> 
        
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/placeName">
        
        <span class="placeName">
            
            <xsl:apply-templates/>
            
        </span>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/pb">
        
        <div class="pb">
            
            <br></br>
            <xsl:apply-templates/>
            
        </div>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/persName">
        
        <span class="persName">
            
            <xsl:apply-templates/>
            
        </span>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/q/persName">
        
        <span class="persName">
            
            <xsl:apply-templates/>
            
        </span>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/q">
        
        <blockquote>
            
            <xsl:apply-templates/>
            
        </blockquote>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body/p/num">
        
        <span class="numero">
            
            <xsl:apply-templates/>
            
        </span>
        <sub class="dateSub">
            
            <xsl:value-of select="@value"/>  
            
        </sub>
        
    </xsl:template>
    
    
    <xsl:template match="/TEI/text[1]/body/p/date">
        
        <span class="date">
            
            <xsl:apply-templates/>
            
        </span>
        
        <sub class="dateSub">
            
            <xsl:value-of select="@when"/>  
            
        </sub>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/unit">
        
        <span class="unit">
            
            <xsl:apply-templates/>
            
        </span>
        
        <sub class="unitSub">
            
            <xsl:value-of select="@unit"/>  
            
        </sub>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/p/title">
        
        <span class="titleTEI">
            
            <xsl:apply-templates/>
            
        </span>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/closer">
        
        <div class="closer">
            
            <xsl:apply-templates/>
            
        </div>
        
    </xsl:template>
    
    <xsl:template match="/TEI/text[1]/body[1]/closer/date">
        
        <span class="date">
            
            <xsl:apply-templates/>
            
        </span>
        
        <sub class="dateSub">
            
            <xsl:value-of select="@when"/>  
            
        </sub>
        
    </xsl:template>
    
    
</xsl:stylesheet>