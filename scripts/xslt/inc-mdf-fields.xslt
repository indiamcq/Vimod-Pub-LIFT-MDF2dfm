<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
      <xsl:param name="engindextest" select="not(descendant::re)"/>
      <!-- index templates ==================================== -->
      <xsl:template match="re" mode="indexeng">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="de" mode="indexengsub">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="rn" mode="indexnat">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="rr" mode="indexreg">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="unknown" mode="indexreg2">
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <!-- Standard templates ==================================== -->
      <xsl:template match="va" >
            <xsl:text>[05 variant] }}</xsl:text>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text>{{ </xsl:text>
      </xsl:template>
      <xsl:template match="mn" >
            <xsl:text>[05see main entry] }}</xsl:text>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text>{{ </xsl:text>
      </xsl:template>
      <xsl:template match="ps">
            <xsl:text>\n[01 </xsl:text>
            <xsl:value-of select="normalize-space(.)"/>
            <xsl:text> ] </xsl:text>
      </xsl:template>
      <xsl:template match="de">
            <xsl:if test="preceding-sibling::*[1] != 'ps'">
                  <xsl:text>\n</xsl:text>
            </xsl:if>
            <xsl:text>[02 </xsl:text>
            <xsl:apply-templates/>
            <xsl:text>] </xsl:text>
      </xsl:template>
      <xsl:template match="sc">
            <xsl:text>[05 Scientific Name] [06</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>] </xsl:text>
      </xsl:template>
      <xsl:template match="rs">
            <xsl:text>[05 Synonym] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="rm">
            <xsl:text>[05 Grouped with:] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="rg">
            <xsl:text>[05 Generic] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="ee">
            <xsl:text>[05 c.f.] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="ra">
            <xsl:text>[05 Antonym] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="oa">
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="ls">
            <xsl:text>[05 Saying] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="me">
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="li">
            <xsl:text>[05 Idiom]  </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="lc">
            <xsl:text>[05 Compound] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="eg">
            <xsl:text>[05 Grammar] [02 </xsl:text>
            <xsl:apply-templates/>
            <xsl:text>] </xsl:text>
      </xsl:template>
      <xsl:template match="ec">
            <xsl:text>[05 Culture Note] [02</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>] </xsl:text>
      </xsl:template>
      <xsl:template match="co">
            <xsl:text> [02 </xsl:text>
            <xsl:apply-templates/>
            <xsl:text>] </xsl:text>
      </xsl:template>
      <xsl:template match="ar">
            <xsl:text>[05 Archaic:] </xsl:text>
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="ad">
            <xsl:apply-templates/>
            <xsl:text> </xsl:text>
      </xsl:template>
      <xsl:template match="charbold"> <xsl:text>[07</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>]</xsl:text>
      </xsl:template>      
<xsl:template match="charitalic"><xsl:text>[08</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>]</xsl:text>
      </xsl:template>      
<xsl:template match="charbolditalic"><xsl:text>[07[08</xsl:text>
            <xsl:apply-templates/>
            <xsl:text>]]</xsl:text>
      </xsl:template>

</xsl:stylesheet>
