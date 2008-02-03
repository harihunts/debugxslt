<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

<xsl:output  method="text"
	media-type="text/plain"
	omit-xml-declaration="yes"/>

<xsl:template match="/">
<xsl:value-of select="func-tests/preamble"/>
	<xsl:apply-templates select="func-tests/tests/test"/>
<xsl:value-of select="func-tests/postamble"/>
</xsl:template>

<xsl:template match="test">
	<xsl:apply-templates select="rules"/>
</xsl:template>

<xsl:template match="rules">
	<xsl:apply-templates select="rule"/>
</xsl:template>

<xsl:template match="rule">
<xsl:value-of select="@id"/>:<xsl:value-of select="production/regex"/>
	{<xsl:value-of select="production/perl"/>}
</xsl:template>

</xsl:stylesheet>
