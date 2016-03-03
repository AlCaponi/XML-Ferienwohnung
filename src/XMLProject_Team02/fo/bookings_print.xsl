<?xml version='1.0' encoding='UTF-8' ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:param name="bookId" select="unknown"/>
	
    <xsl:template match="bookings_print">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="bookings_list" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm">
                    <fo:region-body margin-top="1cm"/>
                    <fo:region-before extent="2cm"/>
                    <fo:region-after extent="3cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            
            <!-- Flexible content -->
            <fo:page-sequence master-reference="bookings_list">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block text-align="center" font-size="8pt">
                        Buchungs-ID #<xsl:value-of select="$bookId"/>
                    </fo:block>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
				<fo:block font-size="30pt" font-family="sans-serif" line-height="35pt" space-after.optimum="40pt" background-color="blue" color="white" text-align="center" padding-top="8pt" padding-bottom="5pt">
                    Buchungsbestätigung
                    </fo:block>                  
                    <xsl:apply-templates select="document('../bookings_list.xml')/bookings/booking[@id=$bookId]"/>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
 	
	<xsl:template match="/bookings/booking">	    
	<xsl:variable name="fewoRefId" select="@fewoid"/>   
	
      <fo:block-container>
        <fo:block font-size="20pt" color="blue" font-weight="900" text-align="center" space-after.optimum="20pt">
           Ihre Buchung vom <xsl:value-of select="startdate"/> bis <xsl:value-of select="enddate"/>
        </fo:block>
      </fo:block-container>
      
      <fo:block-container>
        <fo:block font-size="20pt" color="blue" font-weight="900" text-align="center" space-before.optimum="20pt" space-after.optimum="20pt">
           Verbindliche Buchung für
        </fo:block>
        <fo:block text-align="center" font-size="18pt" ><xsl:value-of select="concat(booker/firstname, ' ', booker/lastname)"/></fo:block>
        <fo:block text-align="center" font-size="18pt" ><xsl:value-of select="concat(booker/street, ' ', booker/sno)"/></fo:block>
        <fo:block text-align="center" font-size="18pt" ><xsl:value-of select="booker/countrycode"/>-<xsl:value-of select="concat(booker/zipcode, ' ', booker/city)"/></fo:block>
      </fo:block-container>
	  
      <xsl:if test="$fewoRefId != ''">
      <fo:block-container>
        <fo:block font-size="20pt" color="blue" font-weight="900" text-align="center" space-before.optimum="20pt" space-after.optimum="20pt">
           Gebuchtes Objekt
        </fo:block>
        <fo:block text-align="center" font-size="18pt" ><xsl:value-of select="document('../fewo_list.xml')/fewo/object[@id=$fewoRefId]/title"/></fo:block>
        <fo:block text-align="center" font-size="18pt" ><xsl:value-of select="document('../fewo_list.xml')/fewo/object[@id=$fewoRefId]/descr"/></fo:block>
        <fo:block text-align="center" font-size="18pt" >Anzahl Räume: <xsl:value-of select="document('../fewo_list.xml')/fewo/object[@id=$fewoRefId]/rooms"/></fo:block>        
		<fo:block text-align="center" font-size="18pt" >Grösse: <xsl:value-of select="document('../fewo_list.xml')/fewo/object[@id=$fewoRefId]/dim"/></fo:block>
        <fo:block font-size="16pt" color="black" font-weight="900" text-align="center" space-after.optimum="40pt">
          Preis pro Tag: <xsl:value-of select="document('../fewo_list.xml')/fewo/object[@id=$fewoRefId]/priceByDay"/> CHF
        </fo:block>
		</fo:block-container>
	  </xsl:if>      
    </xsl:template>
</xsl:stylesheet>
