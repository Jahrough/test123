<form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="CLOSE_WINDOW" value="0">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

	<div id="small_biz_notice"> 
		<h3>LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Small Business Risk Score</h3>   
		<p>This LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Small Business Risk Score is NOT governed by the FCRA.</p>
		<p>The [Small Business Risk Score] is not provided by &quot;consumer reporting agencies,&quot; as that term is defined in the FCRA, and does not constitute a Consumer Report.</p>
		<p>Accordingly, the [Small Business Risk Score] shall not be used for eligibility determinations in connection with any of the following purposes:
			<ol>
		    	<li>in connection with establishing a consumer&apos;s eligibility for credit or insurance to be used primarily for personal, family or household purposes or in connection with the review or collection of a credit account of a consumer;</li>
				<li>for employment purposes;</li>
				<li>in connection with a determination of a consumer&apos;s eligibility for a license or other benefit granted by a government agency;</li>
				<li>as a potential investor or servicer, or current insurer, in connection with a valuation of, or assessment of credit or prepayment risks associated with, an existing credit obligation;</li>
				<li>or for any other purpose deemed to be a permissible purpose under the FCRA.</li>
			</ol>
		</p>
		<p>Based on the Small Business Risk Score, Customer shall not take any &quot;adverse action,&quot; as that term is defined in the FCRA, or otherwise act in a manner that is contrary to a consumer&apos;s interest unless the basis for doing so is information Customer obtains from a source other than the [Small Business Risk Score].</p>
		<p>If Customer is using the [Small Business Risk Score] in connection with a loan to a business entity, Customer shall not use the [Small Business Risk Score]:
			<ol>
				<li>to revoke consumer credit;</li>
				<li>to accelerate payment terms in a manner that is chargeable to a consumer or otherwise change such terms in a manner adverse to a consumer;</li>
				<li>to determine a consumer&apos;s eligibility for any repayment plan.</li>
			</ol>
		</p>
		<div class="form-row center">
			<input type="button" class="btn btn-danger" value="Continue" onclick="javascript:processSBRSRPTDisclaimer(true);">
			<input type="button" class="btn btn-default left-spacing-5" value="Cancel" onclick="javascript:processSBRSRPTDisclaimer(false);">
		</div>
        
	</div>
    <!-- END wrapper DIV -->
</form> 
