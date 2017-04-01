<script>

</script>

<form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="CLOSE_WINDOW" value="0">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

	<div id="wrapper">    
		<table id="use_table">
			<tr>
				<td>
					<h1><span class="textRed">FCRA LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace</span></h2>
					<br/>
					<p class="text11">
						You are now exiting the LexisNexis® Identity Trace Services. The services you are now accessing do not constitute "consumer reports" as that term is defined in the federal Fair Credit Reporting Act, 15 USC 1681 et seq. (FCRA). Accordingly, these services may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another permissible purpose under the FCRA.
					</p>      
					
		<div style="text-align:center">
                <span id="ctl00_mCPH_purposeRequired" class="textRed" style="display:none;">You must select a valid permissible use before continuing.</span>
                <p>
                    <input type="button" class="btn btn-success" value="Continue" onclick="processFCRAExit(true);">
                    <!--<input type="button" class="btn btn-default" value="Cancel" onclick="processFCRAExit(false);">-->
                </p>
            </div>
</td>
</tr>

		</table> 
	</div>
    <!-- END wrapper DIV -->
</form> 
