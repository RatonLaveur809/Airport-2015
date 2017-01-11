<?xml version="1.0" encoding="UTF-8"?>            
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
<table border="1">
<tr bgcolor="#ADD8E6">
<td align="center">
<strong>Авиакомпания</strong>
</td>
<td align="center">
<strong>Прилет по расписанию</strong>
</td>
<td align="center">
<strong>Прилет фактический</strong>
</td>
<td align="center">
<strong>Рейс</strong>
</td>
<td align="center">
<strong>Аэропорт вылета</strong>
</td>
<td align="center">
<strong>Сектор</strong>
</td>
<td align="center">
<strong>Примечание</strong>
</td>
</tr>
<xsl:for-each select="in/flight">
<xsl:sort order="ascending" select="arrival_t"/>
<tbody>
<tr align="center" bgcolor="#E0FFFF">
<td>
<xsl:value-of select="company"/>
</td>
<td>
<xsl:value-of select="arrival_t"/>
</td>
<td>
<xsl:value-of select="arrival_f"/>
</td>
<td>
<xsl:value-of select="f"/>
</td>
<td class="place">
<xsl:value-of select="from"/>
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
