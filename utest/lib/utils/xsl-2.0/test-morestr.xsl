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
        <xsl:text>&#10;</xsl:text>

        <xsl:text>Number of elements: </xsl:text>
        <xsl:copy-of select="count($seqProduct)"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="string-join($seqProduct, '.')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strlist.separ()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>, : </xsl:text>
        <xsl:value-of select="cpm:strlist.separ('cow, horse, rabbit', ',')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmsep: \s*,\s* : </xsl:text>
        <xsl:value-of select="cpm:strlist.separ('cow, horse, rabbit', '\s*,\s*')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmitem: [A-Za-z]+ : </xsl:text>
        <xsl:value-of select="cpm:strlist.separ('cow, horse, rabbit', '[A-Za-z]+ .+')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>


        <xsl:text>cpm:strlist.sequence()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>, : </xsl:text>
        <xsl:copy-of select="cpm:strlist.sequence('cow, horse, rabbit', ',')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmsep: \s*,\s* : </xsl:text>
        <xsl:copy-of select="cpm:strlist.sequence('cow, horse, rabbit', '\s*,\s*')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpmitem: [A-Za-z]+ : </xsl:text>
        <xsl:copy-of select="cpm:strlist.sequence('cow, horse, rabbit', '[A-Za-z]+ .+')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strlist.head()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="cpm:strlist.head('cow, horse, rabbit', ',\s*')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strlist.tail()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="cpm:strlist.tail('cow, horse, rabbit', ',\s*')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strlist.range()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>Корова собака: </xsl:text>
        <xsl:value-of select="cpm:encoding.range('Корова собака')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>כלב פרה</xsl:text>
        <xsl:text>: </xsl:text>
        <xsl:value-of select="cpm:encoding.range('כלב פרה')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>αγελάδα σκυλί</xsl:text>
        <xsl:text>: </xsl:text>
        <xsl:value-of select="cpm:encoding.range('αγελάδα σκυλί')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:translit.monoAuto()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:translit.monoAuto('Съешь ещё этих мягких французских булок, да выпей чаю', 'ASCII')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:translit.monoAuto('אכלו את הלחמניות הצרפתיות הרכות והשתו מעט תה', 'ASCII')"/>

        <xsl:text>cpm:strlist.contains()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpm:strlist.contains('cow, horse, rabbit', 'horse', '\s*,\s*', 'case')</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strlist.contains('cow, horse, rabbit', 'Horse', '\s*,\s*', 'case')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>cpm:strlist.contains('cow, horse, rabbit', 'cat', '\s*,\s*', 'case')</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="cpm:strlist.contains('cow, horse, rabbit', 'cat', '\s*,\s*', 'case')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strlist.normseq()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strlist.normseq('cow, horse, Rabbit, rabbit, coW, horse', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>
                
        <xsl:text>cpm:strset.set()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.set('cow, Horse, rabbIT, rabbit, Cow, horse', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>        

        <xsl:text>cpm:strset.union()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.union('cow, Horse', 'rabbit, Cow', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>

        <xsl:text>cpm:strset.intersection()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.intersection('cow, Horse, cat', 'rabbit, cat, Cow', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>   
        
        <xsl:text>cpm:strset.difference()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.difference('cow, Horse, cat', 'rabbit, cat, Cow', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>  
        
        <xsl:text>cpm:strset.equal()</xsl:text>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.equal('cow, Horse, cat', 'Horse, cow, cat', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of
            select="cpm:strset.equal('cow, Horse, cat', 'rabbit, cat, Cow', '\s*,\s*', 'CASE')"/>
        <xsl:text>&#10;</xsl:text>
        <xsl:text>&#10;</xsl:text>  
        

    </xsl:template>


</xsl:stylesheet>
