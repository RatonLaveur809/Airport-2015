<?xml version="1.0" encoding="UTF-8"?>            
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<table id="search" border="1">
<tr bgcolor="#ADD8E6" align="center">
<td>Авиакомпания</td>
<td>Вылет по расписанию</td>
<td>Вылет задержан до</td>
<td>Рейс</td>
<td>Направление</td>
<td>Сектор</td>
<td>Примечание</td>
</tr>
<xsl:for-each select="out/dep">
<xsl:sort order="ascending" select="dep_t"/>
<tbody>
<tr align="center" bgcolor="#E0FFFF">
<td>
<xsl:value-of select="company"/>
</td>
<td>
<xsl:value-of select="dep_t"/>
</td>
<td>
<xsl:value-of select="dep_f"/>
</td>
<td>
<xsl:value-of select="f"/>
</td>
<td class="place">
<xsl:value-of select="to"/>
</td>
<td>
<xsl:value-of select="sector"/>
</td>
<td>
<xsl:value-of select="note"/>
</td>
</tr>
</tbody>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
