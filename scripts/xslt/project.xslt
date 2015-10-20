<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
   <xsl:variable name="projectpath"
                 select="'D:\All-SIL-Publishing\github\Vimod-Pub-LIFT-MDF2dfm\trunk\data\xxx-lang'"/>
   <xsl:variable name="cd"
                 select="'D:\All-SIL-Publishing\github\Vimod-Pub-LIFT-MDF2dfm\trunk'"/>
   <xsl:variable name="true" select="tokenize('true yes on 1','\s+')"/>
   <xsl:variable name="comment1" select="'# project.tasks'"/>
   <xsl:variable name="comment2">schema type                             </xsl:variable>
   <xsl:param name="schema" select="'mdf'"/>
   <xsl:variable name="comment3">iso code                                </xsl:variable>
   <xsl:param name="iso" select="'xxx'"/>
   <xsl:variable name="comment4">languages                               </xsl:variable>
   <xsl:param name="langs" select="'3'"/>
   <xsl:variable name="comment5">title                                   </xsl:variable>
   <xsl:param name="voltitle" select="'xlang-English-Tagalog Dictionary'"/>
   <xsl:variable name="comment6">languages                               </xsl:variable>
   <xsl:param name="langname" select="'xlang'"/>
   <xsl:variable name="comment7">languages                               </xsl:variable>
   <xsl:param name="langname2" select="'English'"/>
   <xsl:variable name="comment8">languages                               </xsl:variable>
   <xsl:param name="langname3" select="'Tagalog'"/>
   <xsl:variable name="comment9">languages                               </xsl:variable>
   <xsl:param name="langname4" select="''"/>
   <xsl:variable name="comment10">languages                               </xsl:variable>
   <xsl:param name="compiler" select="'A Compiler'"/>
   <xsl:variable name="comment11">Publisher                               </xsl:variable>
   <xsl:param name="publisher" select="'© ????'"/>
   <xsl:variable name="comment12">publication date                        </xsl:variable>
   <xsl:param name="pubdate" select="'2015'"/>
   <xsl:variable name="comment13">second language                         </xsl:variable>
   <xsl:param name="iso2" select="'eng'"/>
   <xsl:variable name="comment14">third language                          </xsl:variable>
   <xsl:param name="iso3" select="'tgl'"/>
   <xsl:variable name="comment15">third language                          </xsl:variable>
   <xsl:param name="iso4" select="''"/>
   <xsl:variable name="comment16">sourcefile                              </xsl:variable>
   <xsl:param name="liftfile" select="concat($projectpath,'\',$iso,'.lift')"/>
   <xsl:variable name="comment17">mdf xml file                            </xsl:variable>
   <xsl:param name="xmlfile" select="concat($projectpath,'\',$iso,'.xml')"/>
   <xsl:variable name="comment18">vernacular                              </xsl:variable>
   <xsl:param name="vernacular" select="concat($iso,'')"/>
   <xsl:variable name="comment19">nationl lang code                       </xsl:variable>
   <xsl:param name="national" select="'tl'"/>
   <xsl:variable name="comment20">regional lang code                      </xsl:variable>
   <xsl:param name="regional" select="''"/>
   <xsl:variable name="comment21">regional2 lang code                     </xsl:variable>
   <xsl:param name="regional2" select="''"/>
   <xsl:variable name="comment22">regional3 lang code                     </xsl:variable>
   <xsl:param name="regional3" select="''"/>
   <xsl:variable name="comment24"
                 select="'create project.xslt                     ;projectxslt'"/>
</xsl:stylesheet>
