<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-public="XSLT-compat" omit-xml-declaration="yes" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
    <html>
        <head>
            <title>Paddy's Cafe Menu</title>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
            <style>
        		XML {
					display:none;
				}
				body {
					font-family: Arial, Helvetica, sans-serif;
					background-color: #FFFFFF;
					margin: 5px;
					text-align: left;
					color: #523819;
				}
				h2 {
					font-size: 140%;
					color: #0D3427;
					margin-top: 10px;
				}
				p {
					font-size: 80%;
					color: #523819;
				}
				table {
					background-color: #DACFE5;
					border-color: #000000;
					border-width: thin;
					border-collapse: collapse;
					width: 75%;
				}
				th {
					border-color: #000000;
					font-size: 120%;
					color: #0D3427;
				}
				td {
					border-color: #000000;
					font-size: 100%;
					color: #523819;
					padding: 5px;
				}
				img {
					float: left;
					margin-left: 10px;
					margin-right: 10px;
					border: 0px;
				}
				.indent {
					margin-left: 78px;
				}
			</style>
        </head>
            <body>
                <h2>
                    <img src="data:image/png;base64,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" alt="Jobslist Logo" width="100" height="100" />Welcome to Jobslist</h2>
                <p>Welcome to Jobslist, hope you find the job of your life, if you still have not found it today, come back tomorrow, we update it everyday.</p>
                <table id="menuTable" border="1" class="indent">
                    <thead>
                        <tr>
                            <th colspan="3">Paddy's Cafe Menu</th>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/cafemenu/section">
                            <tr>
                                <td colspan="3">
                                    <xsl:value-of select="." />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                                <tr>
                                    <xsl:attribute name="vegetarian">
                                        <xsl:value-of select="." />
                                    </xsl:attribute>
                                    <td align="center">
                                        <input name="item0" type="checkbox" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="." />
                                    </td>
                                    <td align="right">
                                        <xsl:value-of select="." />
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table>
                <form class="indent">
                    <p>
                        <input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
                Total: €
                <input type="text" name="txtBillAmt" /><input type="checkbox" name="cbOpts" value="isVeg" id="showVeg" /><label for="showVeg">Highlight Vegetarian Meals</label></p>
                </form>


                <script>
				<![CDATA[
					var gEntreeCount = 0;
															// returns a number that represents the sum of all the selected menu
															// item prices.
					function calculateBill(idMenuTable) {
						var fBillTotal = 0.0;
						var i=0;
															// find the table tag
						var oTable = document.getElementById(idMenuTable);
															// go through the table and add up the prices of all
															// the selected items. The code takes advantage of the 
															// fact that each checkbox has a corresponding row in
															// the table, and the only INPUT tags are the checkboxes.
						var aCBTags = oTable.getElementsByTagName('INPUT');
						for (i=0; i < aCBTags.length; i++) {
															// is this menu item selected? it is if the checkbox is checked
							if (aCBTags[i].checked) {
															// get the checkbox' parent table row
								var oTR = getParentTag(aCBTags[i],'TR');
		
															// retrieve the price from the price column, which is the third column in the table
								var oTDPrice = oTR.getElementsByTagName('TD')[2];
															// the first child text node of the column contains the price
								fBillTotal += parseFloat(oTDPrice.firstChild.data);
							};
						};
															// return the price as a decimal number with 2 decimal places
						return Math.round(fBillTotal*100.0)/100.0;
					};
															// This function either turns on or off the row highlighting for vegetarian
															// items (depending on the value of bShowVeg)
					function highlightVegetarian(idTable, bShowVeg) {
															// if bShowVeg is true, then we're highlighting vegetarian
															//	meals, otherwise we're unhighlighting them.
						var i=0;
						var oTable = document.getElementById(idTable);
						var oTBODY = oTable.getElementsByTagName('TBODY')[0];
						var aTRs = oTBODY.getElementsByTagName('TR');
																// walk through each of the table rows and see if it has a 
																// "vegetarian" attribute on it.
						for (i=0; i < aTRs.length; i++) {
							if (aTRs[i].getAttribute('vegetarian') && aTRs[i].getAttribute('vegetarian') == "true") {
								if (bShowVeg){
									aTRs[i].style.backgroundColor = "lightGreen";
								} else {
									aTRs[i].style.backgroundColor = "";
								};
							};
						};
					};
																// Utility function for getting the parent tag of a given tag
																// but only of a certain type (i.e. a TR, a TABLE, etc.)
					function getParentTag(oNode, sParentType) {
						var oParent = oNode.parentNode;
						while (oParent) {
							if (oParent.nodeName == sParentType)
								return oParent;
							oParent = oParent.parentNode;
						};
						return oParent;
					};
			]]>
			</script>
			<script>
			<![CDATA[	
			        window.addEventListener("load", function() {
			            document.forms[0].txtBillAmt.value = calculateBill('menuTable');
			            document.querySelector("#calcBill").addEventListener("click", function() {
			                document.forms[0].txtBillAmt.value = calculateBill('menuTable');
			            });
			            document.querySelector("#showVeg").addEventListener("click", function() {
			                highlightVegetarian('menuTable', this.checked);
			            });
			        });
			]]>
			</script>

            </body>
        </html>
    </xsl:template>
</xsl:transform> 