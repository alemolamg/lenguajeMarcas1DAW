<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html" encoding="UTF-8" />

	<xsl:template match="/gormitis">
		<html>
			<head>
				<title>Juego de tanques</title>
				<style>
					img {
					width: 50px;
					}
					<!--
					.fondoAzul {
					background: #d6f3ff;
					} -->
					thead td {
					background: #40c2f7;
					}
				</style>
			</head>
			<body>
				<table border="1" width="90%">
					<thead>
						<td></td>
						<td>Gormiti</td>
						<td>Tribu</td>
					</thead>

				</table>


			</body>
		</html>
	</xsl:template>

	<xsl:template></xsl:template>

</xsl:stylesheet>