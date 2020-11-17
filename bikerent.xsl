<?xml version = "1.0" encoding = "UTF-8"?>
 
<xsl:stylesheet version = "1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">   
   <xsl:template match = "/"> 
      <!-- HTML tags 
         Used for formatting purpose. Processor will skip them and browser 
            will simply render them. 
      --> 
		
      <html> 
        <body style="background-color:#F08080" align="center"> 
            <h2 style="text-align:center;">Info On Riders</h2> 
				
            <table align="center" style="border:1px solid black;width: 50%;"> 
               <tr > 
                  <th>Bike Name</th> 
                  <th>Amount</th> 
                  <th>Duration</th> 
                  <th>PickLoc</th> 
                  <th>DropLoc</th> 
				  <th>Date</th> 
                
               </tr> 
				
               <!-- for-each processing instruction 
               Looks for each element matching the XPath expression 
               --> 
				
               <xsl:for-each select="bikerent"> 
                  <tr> 
                     <td><xsl:value-of select = "bikename"/></td> 						
                     <td><xsl:value-of select = "amount"/></td> 
                     <td><xsl:value-of select = "duration"/></td> 
                     <td><xsl:value-of select = "pickloc"/></td> 
                     <td><xsl:value-of select = "droploc"/></td> 
					 <td><xsl:value-of select = "date"/></td> 
						
                  </tr> 
               </xsl:for-each> 
					
            </table> 
         </body> 
      </html> 
   </xsl:template>  
</xsl:stylesheet>