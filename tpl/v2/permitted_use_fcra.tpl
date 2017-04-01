<!-- begin permitted_use_fcra.tpl-->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>FCRA Permitted Use Certification</title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script language="JavaScript">

function setchecked() {

    // fcra
    var fcra = false;
    var fcra_value;
    var fcra_radios = document.getElementsByName('FCRA_PURPOSE');
    for (var i_FR = 0; i_FR < fcra_radios.length; i_FR++) {
        if (fcra_radios[i_FR].checked) {
            fcra = true;
            fcra_value = fcra_radios[i_FR].value;
            break;
        }
    }
    if (fcra == false) { alert('Select a default FCRA Use.'); return false; }
    
    // event
    document.FCRA.EVENT.value = 'SEARCH/SAVE_FCRA';
    
    <TMPL_IF FCRA_REPORT>
    if (fcra_value==0) {
        if (confirm('Caution: You will not be able to run an FCRA Report without an FCRA Permissible Purpose.')) {
        } else {
            return false;
        }
    } else {
        alert('Your FCRA permissible use will be saved now. Please run the FCRA Report of your choice now.');
    }
    </TMPL_IF>
    <TMPL_IF CLOSE_WINDOW>
    document.FCRA.CLOSE_WINDOW.value = 1;
    try {
        opener.document.getElementById("fcra_reason").innerHTML = get_pj_fcra(fcra_value);
    } catch(exp) {/* */}
    try {
        opener.enforce_fcra_purpose = 0;
    } catch(exp) { /* */ }
    </TMPL_IF>
    // submit form
    document.forms[0].submit();

}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();<TMPL_IF FCRA_REPORT>alert('You have chosen to run an FCRA Report. Please select an FCRA permissible use first, and then run the report again.');</TMPL_IF>"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody_v2">
<div id="hd">
  <h2>LexisNexis Contact &amp; Locate for Collections</h2>
</div>

<form name="FCRA" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
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
	    <h3>FCRA Permissible Use</h3>
            <br/>
            <p class="text11">
You are entering the LexisNexis Collections Decisioning FCRA offerings provided by LexisNexis Risk Bureau LLC, a consumer reporting agency.&nbsp; LexisNexis Collections Decisioning offerings are consumer reporting agency products provided and may only be accessed in compliance with the Fair Credit Reporting Act, 15 U.S.C. &sect; 1681, et seq.</p>
            
            <br/>
            
            <p>
		<strong>Please complete the following steps:</strong>
            </p>
            
            <style>li.fcra_purpose_list{list-style:none;}
            </style>
            <table class="use_choice" width="100%">
		<tr>
		<td class="label_use1" valign="middle"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_1.gif" width="22" height="22" /></td>
                <td class="label_use2">
		    <table id="noborder" cellpadding="0" cellspacing="0">
		    <tr>
		      <td class="text12" valign="middle"><strong>Choose a Permissible Use:</strong><font color="#ed1c24"><strong>*</strong></font></td>
                      <td class="text12" valign="middle">
                      <ul>
                        <li class="fcra_purpose_list"><input type="radio" name="FCRA_PURPOSE" id="" value="12" tabindex="" >&nbsp;&nbsp;For the review of an account of the consumer in connection with a credit transaction involving the consumer in accordance with FCRA Section 604(a)(3)(A).</li>
                        <li class="fcra_purpose_list"><input type="radio" name="FCRA_PURPOSE" id="" value="2" tabindex="" >&nbsp;&nbsp;For the collection of an account of the consumer in connection with a credit transaction involving the consumer in accordance with FCRA Section 604(a)(3)(A).</li>
                        <li class="fcra_purpose_list"><input type="radio" name="FCRA_PURPOSE" id="" value="13" tabindex="" >&nbsp;&nbsp;Pursuant to the written instructions of the consumer, in accordance with FCRA Section 604(a)(2), for the reason specified in the written FCRA certification for this account.</li>
                        <li class="fcra_purpose_list"><input type="radio" name="FCRA_PURPOSE" id="" value="0" tabindex="" >&nbsp;&nbsp;I do not have an FCRA Permissible Purpose.</li>
                      </ul>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <br/>
            <p>
		<font color="#ed1c24"><strong>*</strong></font> Mandatory selection.  The choice you make here will be your current permissible use for all searches.  Each search form has a link you can use to change your permissible use.
            </p>
            <br/>
            <table class="use_choice" width="100%">
              <tr>
		<td class="label_use1" valign="middle"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_2.gif" width="22" height="22" /></td>
                <td class="label_use2" valign="middle"><p class="text12">Press Confirm to proceed</p></td>
              </tr>
            </table>
            
            <table>
              <tr>
                <td id="angleleft"></td>
                <td valign="bottom" class="text12"><!-- button allows users to submit with click or by hitting enter -->
                  <div align="center">
                    <input type="button" class="confirmButton" name="confirm_button" value="Confirm" onClick="setchecked();"><br />
                    <span class="text10">(Your Understanding of These Terms)</span>
                  </div>
                </td>
                <td id="angleright"></td>
              </tr>
            </table>
            
            <br/>
            
            <div class="use_notice">
		Contact &amp; Locate Solutions are provided by LexisNexis Risk Solutions FL Inc. Contact &amp; Locate solutions are not provided by "consumer reporting agencies," as that term is defined in the Fair Credit Reporting Act (15 U.S.C. &sect; 1681, et seq.) ("FCRA") and do not constitute "consumer reports," as that term is defined in the FCRA. Contact &amp; Locate solutions may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another purpose in connection with which a consumer report may be used under the FCRA.
            </p>
            
          </td>
        </tr>
      </table>

    </div>
    <!-- END wrapper DIV -->

</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form> 

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end permitted_use_fcra.tpl-->

