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

	<div id="fcra-notice">
		<h3>FCRA LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace</h3> 
		<p>You are now requesting access to the LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace Services.</p>  
		<p>The LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace Services provide a direct gateway access connection to information maintained by TransUnion LLC, a consumer reporting company. The gateway access connection is a service of LexisNexis Risk Solutions Bureau LLC. The information provided through the gateway is a consumer report and may only be accessed in compliance with the Fair Credit Reporting Act (FCRA), 15 U.S.C. 1681 et seq.</p> 
		<p>The federal Fair Credit Reporting Act imposes criminal penalties, including a fine, up to two years in prison or both against anyone who knowingly and willfully obtains information on a consumer from a consumer reporting company under false pretenses and other penalties for anyone who obtains such consumer information without a permissible purpose.</p>
		<p>
			<strong>I hereby certify that I have the following purpose under the Fair Credit Reporting Act for obtaining LexisNexis<sup class="sup-reg-symbol">&reg;</sup> Identity Trace consumer reports and that such reports will not be used for any other purpose.</strong>
		</p>
		<p>
			<strong class="textRed">PLEASE SELECT THE APPROPRIATE PURPOSE:</strong>
		</p>
		<div class="form-row">
			<label for="fcra_val_0">
				<input id="fcra_val_0" name="fcra_val" value="AR" type="radio">	
				<span>Intends to use the information as a potential investor or servicer, or current insurer in connection with a valuation of, or assessment of the credit or prepayment risks associated with an existing credit obligation. Section 604(a)3(E)</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_1">
				<input id="fcra_val_1" name="fcra_val" value="BN" type="radio">
				<span>A legitimate business need in connection with a business transaction that is initiated by the consumer.  Section 604(a)3(F)(i)</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_2">
				<input id="fcra_val_2" name="fcra_val" value="CL" type="radio">
				<span>In connection with a collection transaction involving the consumer for the collection of an account of the consumer.  Section 604(a)3(A)</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_3">
				<input id="fcra_val_3" name="fcra_val" value="CT" type="radio">
				<span>In connection with a credit transaction involving the consumer and for the extension of credit or review or collection of an account of the consumer.</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_4">
				<input id="fcra_val_4" name="fcra_val" value="GB" type="radio">
				<span>Any depository financial institution for checking, savings, and investment accounts <strong>and</strong> a legitimate business need in connection with a business transaction that is initiated by the consumer.  Section 604(a)3(F)(i)</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_5">
				<input id="fcra_val_5" name="fcra_val" value="PY" type="radio">
				<span>For a legitimate business need in connection with a transaction initiated by the consumer for the approval or processing of negotiable instruments, EFTs, or similar methods of payment through a check, fraud prevention, or deposit account information service.  Section 604(a)3(F)(i)</span>
			</label>
		</div>
		<div class="form-row">
			<label for="fcra_val_6">
				<input id="fcra_val_6" name="fcra_val" value="RA" type="radio">
				<span>A legitimate business need to review an account to determine whether the consumer continues to meet the terms of the account. Section 604(a)3(F)(ii)</span>
			</label>
		</div>

        <span id="fcra-certify-error" class="textRed hidden">You must select a valid permissible use before continuing.</span>

		<div class="form-row center">
		    <input type="button" class="btn btn-success" value="Certify" onclick="processFCRA(true);">
            <input type="button" class="btn btn-default left-spacing-5" value="Do Not Certify" onclick="processFCRA(false);">
        </div>
    </div>
    <!-- END wrapper DIV -->
</form> 
