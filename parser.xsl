<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" encoding="utf-8" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"/>

    <xsl:template match="/">
        <xsl:apply-templates select="rss/channel/item[position() &lt; 11]"/>
    </xsl:template>
    <xsl:template match="item">
        <xsl:value-of select="concat(title,'. ',description,' ',link,'&#xa;')"/>
    </xsl:template>
</xsl:stylesheet>