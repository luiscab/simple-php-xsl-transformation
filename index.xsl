<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
	<head>
	<title>XML Transformation Example</title>
	</head>
	<body>
	<div>
		<h2>XML Transformation Example</h2>
		<h4>A Link Collection:</h4>
		<xsl:for-each select="link/item">
			<p><xsl:value-of select="author"/>: <xsl:value-of select="site"/> - <xsl:value-of select="url" /><br/></p>
		</xsl:for-each>	
		<div style="clear: both"></div>
		</div>
	</body>
</html>
</xsl:template>

</xsl:stylesheet>