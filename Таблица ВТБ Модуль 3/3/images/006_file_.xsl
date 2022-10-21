<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:websoft="http://www.websoft.ru" version="1.0">
<!--
'*	006_file#.xsl
'*	Copyright (c) Websoft.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="moduleImagesFolder"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">
	<xsl:variable name="main.sURI"><xsl:value-of select="file_uri"/></xsl:variable>
	<style>
		.cl-container { width: <xsl:value-of select="$width"/>px; height: <xsl:value-of select="$height"/>px; }
		.cl-link-left { padding: <xsl:value-of select="padding"/>px;  }
		.cl-link-right { padding: <xsl:value-of select="padding"/>px;  }
		.cl-link-bottom { padding: <xsl:value-of select="padding"/>px;  }
	</style>
	<div>
		<xsl:attribute name="class">clo-006_file</xsl:attribute>
		<div>
			<xsl:attribute name="class">cl-container</xsl:attribute>
			<table>
				<xsl:attribute name="class">cl-file-table</xsl:attribute>
				<tr>
					<xsl:if test="file_controls='left'">
						<td>
							<xsl:attribute name="class">cl-link-cell cl-link-left</xsl:attribute>
							<xsl:choose>
								<xsl:when test="file_underline='yes' and file_link='yes'"><a href="javascript:void(0)"><xsl:value-of select="file_text" disable-output-escaping="yes"/></a></xsl:when>
								<xsl:otherwise><xsl:value-of select="file_text" disable-output-escaping="yes"/></xsl:otherwise>
							</xsl:choose>
						</td>
					</xsl:if>
					<xsl:if test="icon!='none'">
						<td>
							<xsl:attribute name="class">cl-icon-cell</xsl:attribute>
							<xsl:choose>
								<xsl:when test="icon='standard'">
									<img width="32" height="32" border="0">
										<xsl:choose>
											<xsl:when test="contains($main.sURI,'.doc') or contains($main.sURI,'.DOC')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_doc.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.xls') or contains($main.sURI,'.XLS')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_xls.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.htm') or contains($main.sURI,'.HTM')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_html.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.pdf') or contains($main.sURI,'.PDF')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_pdf.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.jpg') or contains($main.sURI,'.JPG')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_jpg.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.gif') or contains($main.sURI,'.GIF')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_gif.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.swf') or contains($main.sURI,'.SWF')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_swf.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.zip') or contains($main.sURI,'.ZIP')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_zip.gif</xsl:attribute>
											</xsl:when>
											<xsl:when test="contains($main.sURI,'.rar') or contains($main.sURI,'.RAR')">
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_rar.gif</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="src"><xsl:value-of select="$imagesFolder"/>icon_txt.gif</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</img>
								</xsl:when>
								<xsl:otherwise>
									<img>
										<xsl:attribute name="src"><xsl:value-of select="substring-before($moduleImagesFolder,'images\')"/><xsl:value-of select="translate(file_icon,'/','\')"/></xsl:attribute>
									</img>
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</xsl:if>
					<xsl:if test="file_controls='right'">
						<td>
							<xsl:attribute name="class">cl-link-cell cl-link-right</xsl:attribute>
							<xsl:choose>
								<xsl:when test="file_underline='yes' and file_link='yes'"><a href="javascript:void(0)"><xsl:value-of select="file_text" disable-output-escaping="yes"/></a></xsl:when>
								<xsl:otherwise><xsl:value-of select="file_text" disable-output-escaping="yes"/></xsl:otherwise>
							</xsl:choose>
						</td>
					</xsl:if>
				</tr>
				<xsl:if test="file_controls='bottom'">
					<tr>
						<td>
							<xsl:attribute name="class">cl-link-cell cl-link-bottom</xsl:attribute>
							<xsl:choose>
								<xsl:when test="file_underline='yes' and file_link='yes'"><a href="javascript:void(0)"><xsl:value-of select="file_text" disable-output-escaping="yes"/></a></xsl:when>
								<xsl:otherwise><xsl:value-of select="file_text" disable-output-escaping="yes"/></xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
				</xsl:if>
			</table>
		</div>
	</div>
</xsl:template>
</xsl:stylesheet>
