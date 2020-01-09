<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:cpm="http://cpmonster.com/xmlns/cpm"
    exclude-result-prefixes="cpm xs" version="2.0">

    <xsl:import href="../../../../../cpm/lib/utils/xsl-2.0/guts/uriregexp.xsl"/>

    <xsl:output method="text" indent="yes"/>

    <xsl:template match="/">

        <xsl:text>Credentials: </xsl:text>
        <xsl:value-of select="cpm:uriregexp.credentials()"/>
        <xsl:text>&#10;</xsl:text>

    </xsl:template>


</xsl:stylesheet>