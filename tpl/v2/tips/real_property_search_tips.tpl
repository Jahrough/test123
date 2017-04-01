<!-- begin tips/bankruptcy_liens_judgments_search_tips.tpl -->
        <br/>
	<h2><TMPL_VAR NAME="PAGE_TITLE"> Tips</h2>
	<p>For the best search coverage, we recommend searching both Property Deed and Property Assessment records by selecting All Real Property from the drop down list. Assessment records are typically added once a year while Deed records are added every time a deed transaction takes place. Therefore, both play a role as independent sources of information.</p>
	<p>&nbsp;</p>
	<p>Find a Property Assessment or Deed record using one or more of the following search techniques:</p>

	<p>&nbsp;</p>
	<ol id="font81">
	 <li>Search by Name and State. If too many records are returned, try adding a City. You can also use a partial first name.</li>
	 <li>Search by Address, City, and State. This returns records for that address (where it is the Property Address) and any other properties using that address as the Owner's Address.</li>
	</ol>
	<p>&nbsp;</p>
	<p><strong>Property Assessment&nbsp;</strong>information may include Owner Name, Second Owner Name, Property Address, Owner Address, <TMPL_IF FCOL_TCOL>Former Association<TMPL_ELSE>Seller</TMPL_IF> Name, Land Usage, Sale Date, Recording Date, Tax Year<TMPL_UNLESS FCOL_TCOL>, Sale Amount, Assessed Value</TMPL_UNLESS>, and Parcel Number.  You can run a report that displays additional information, including: <TMPL_UNLESS FCOL_TCOL>County, </TMPL_UNLESS>Subdivision Name, Year Built, Land Value, Improvement Value, Total Value<TMPL_UNLESS FCOL_TCOL>, Tax Amount</TMPL_UNLESS>, Market Land Value, Market Improvement Value, Total Market Value, Assessed Year, Living Space (square feet), Land Size (square feet), Number of Stories, Foundation, Number of Bedrooms, Number of Full Baths, and Number of Half Baths.</p>
	<p>&nbsp;</p>
	<p><strong>Property Deed&nbsp;</strong>results may include Property Address, Owner Name, <TMPL_IF FCOL_TCOL>Former Association<TMPL_ELSE>Seller</TMPL_IF> Name, Owner Address<TMPL_UNLESS FCOL_TCOL>, Sale Amount, Mortgage Amount</TMPL_UNLESS>, Sale Date, Recording Date, Parcel Number, Document Type, and Land Usage.  <TMPL_UNLESS FCOL_TCOL>You can also run a report that displays additional information, including: County, Type, Loan Amount, Loan Terms, Transaction Type, Loan Type, Lender Name, and Title Company.</TMPL_UNLESS></p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>

<!-- end tips/bankruptcy_liens_judgments_search_tips.tpl -->
