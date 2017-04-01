<!-- begin tips/foreclosure_search_tips.tpl -->
        <br/>
	<h2><TMPL_VAR NAME="PAGE_TITLE"> Tips</h2>
        <p>Find Foreclosure <TMPL_IF XBPS>and Notice of Default* </TMPL_IF>records using one or more of the following search techniques:</p>
        <p>&nbsp;</p>

	<ol id="font81">
		<li>Search by Name or Company Name. You can also use a partial first name.<br /><br /></li>
		<li>Search by Name or Company Name and State. This returns records for the listed name within the specified State. <br /><br /></li>
		<li>Search by Name, City, State. This returns records for the listed name within the specified City and State.<br /><br /></li>
		<li>Search by Name, Address, City, State. This returns records for the listed name and address within the specified City and State.<br /><br /></li>
		<li>Search by SSN. This returns records for the listed SSN.<br /><br /></li>
	  </ol>
	<TMPL_IF XBPS>
	<p>&nbsp;</p>
	<p>Results vary from state to state but may return the following information:
	Seller(s) Name, Buyer(s) Name, Buyer(s) SSN, Site Address, Deed Type, and
	Recording Date. You can run a Foreclosure Report. Results vary from state to
	state but may return the following information: Case Number, Buyer(s) Name,
	Buyer(s) SSN, Seller(s) Name, Site Address, Deed Type, Filing Date, Recording
	Date, Document Year, Document Number, Document Book, Document Page, Date of
	Loan Default, Amount of Loan Default, Auction Date, Auction Time, Auction
	Location, Opening Bid, Final Judgment Amount, Lender, Trustee, Title Company,
	Attorney, Subdivision Name, Land Usage, Parcel Number, Year Built, Current Land
	Value, Current Improvement Value, Living Size, Land Size, and Legal
	Description.</p>
	<p>&nbsp;</p>
	<p><small>*A Notice of Default is a notice to a borrower with property as
	security under a mortgage or deed of trust that he/she is delinquent in
	payments. If the delinquency (money owed and late), plus costs of preparing the
	legal papers for the default, is not paid within a certain time, foreclosure
	proceedings may be commenced. Other people with funds secured by the same
	property are usually entitled to receive copies of the notice of default.</small></p>
	<p>&nbsp;</p>
	<TMPL_ELSE>
	<p>&nbsp;</p>
	<p>Results vary from state to state but may return the following information: Seller(s) Name, Buyer(s) Name, Buyer(s) SSN, Site Address, Deed Type, and Recording Date. You can run a Foreclosure Report's Results vary from state to state but may return the following information: Case Number, Buyer(s) Name, Buyer(s) SSN, Seller(s) Name, Site Address, Deed Type, Filing Date, Recording Date, Document Year, Document Number, Document Book, Document Page, Date of Loan Default, Amount of Loan Default, Auction Date, Auction Time, Auction Location, Opening Bid, Final Judgment Amount, Lender, Trustee, Title Company, Attorney, Subdivision Name, Land Usage, Parcel Number, Year Built, Current Land Value, Current Improvement Value, Living Size, Land Size, and Legal Description.</p>
	<p>&nbsp;</p>
	</TMPL_IF>
<!-- end tips/foreclosure_search_tips.tpl -->
