<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cpm="http://cpmonster.com/xmlns/cpm"
    exclude-result-prefixes="cpm xs" version="2.0">

    <xsl:import href="../../../../cpm/lib/utils/xsl-2.0/morestr.xsl"/>

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">

        <xsl:text>cpm:morestr.plainTokenize()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:variable name="seqProduct" as="xs:string*">
            <xsl:copy-of select="cpm:morestr.plainTokenize('foo.bar.mar.par.gar', '.')"/>
        </xsl:variable>
        <xsl:copy-of select="$seqProduct"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>Number of elements: </xsl:text>
        <xsl:copy-of select="count($seqProduct)"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="string-join($seqProduct, '.')"/>
        <xsl:text>&#10;</xsl:text>
        
        <xsl:text>cpm:strlist.sequence()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>, : </xsl:text>
        <xsl:value-of select="cpm:strlist.sequence('cow, horse, rabbit', ',')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmsep: \s*,\s* : </xsl:text>
        <xsl:value-of select="cpm:strlist.sequence('cow, horse, rabbit', 'cpmsep: \s*,\s*')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmitem: [A-Za-z]+ : </xsl:text>
        <xsl:value-of select="cpm:strlist.sequence('cow, horse, rabbit', 'cpmitem: [A-Za-z]+')"/>
        <xsl:text>&#10;</xsl:text>
        
        <!--
        <xsl:text>cpm:strlist.head()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="cpm:strlist.head('cow, horse, rabbit', ',\s*')"/>
        
        <xsl:text>cpm:strlist.tail()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="cpm:strlist.tail('cow, horse, rabbit', ',\s*')"/>
        -->

    </xsl:template>


</xsl:stylesheet>
