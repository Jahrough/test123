<form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="CLOSE_WINDOW" value="0">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

	<div id="canadian_notice"> 
		<h3>Canadian Phones Terms and Conditions</h3>   
		<br>
		<p>Customer is not prohibited from accessing the Services provided under this Agreement from a location in Canada, provided however:<br><br>
			<ol>
		    	<li>Customer acknowledges that such Services are provided to it in the United States at the point at which Customer accesses the LexisNexis server facilities;<br><br></li>
				<li>Customer’s decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and<br><br></li>
				<li>Customer acknowledges that LexisNexis makes no representation regarding the legality of accessing such Services from Canada.</li>
			</ol>
		</p>
		<br>
		<div class="form-row center">
			<input type="button" class="btn btn-danger" value="Accept" onclick="javascript:processCanadianDisclaimer(true);">
			<input type="button" class="btn btn-default left-spacing-5" value="Cancel" onclick="javascript:processCanadianDisclaimer(false);">
		</div>
        
	</div>
    <!-- END wrapper DIV -->
</form> 