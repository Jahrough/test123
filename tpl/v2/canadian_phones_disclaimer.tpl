<!-- begin v2/canadian_phones_disclaimer.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Legal Disclaimer</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
function submit_disclaimer(canadian_phones_flag) {
    var myform = document.CANADIAN_PHONES_DISCLAIMER;
    myform.CANADIAN_PHONES_DISCLAIMER.value = 1;

   send_event('SEARCH2/SHOW_CANADIAN_PHONES');

}
</script>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
  <h2>LexisNexis Accurint</h2>
</div>

<form name="CANADIAN_PHONES_DISCLAIMER" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="CANADIAN_PHONES_DISCLAIMER" VALUE="">


<table border="0" cellpadding="5" cellspacing="0" width="90%">
  <tr>
    <td align="left" id="searchResults"><h2>Legal Disclaimer</h2></td>
  </tr>

  <tr>
    <td class="medblack" align="left">Customer is not prohibited from accessing the Services provided under this Agreement from a location in Canada, provided however: 
    <br>
    <br>
    </td>
  </tr>

  <tr>
    <td align="center" valign="top">
    <table border="0" width="90%" cellpadding="6" cellspacing="0">
      <tr>
        <td align="left" class="medblack">
	(i) Customer acknowledges that such Services are provided to it in the United States at the point at which Customer accesses the LexisNexis server facilities;
	<br/><br/>
	(ii) Customer's decision to access the Services from a location in Canada does not alter the fact that the Services are provided to Customer in the United States; and 
	<br/><br/>
	(iii) Customer acknowledges that LexisNexis makes no representation regarding the legality of accessing such Services from Canada.
	<br/><br/>
	</td>
      </tr>
    </table>
    </td>
  </tr>

  <tr>
    <td align="center" valign="top">
    <table border="0" width="90%" cellpadding="6" cellspacing="0">
          <tr>
            <td align="right" width="50%" class="medblack">
	    <input name="BUTTON" tabindex="1" class="rb_otp_small" type="button" value="Accept" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="javascript:submit_disclaimer(1);" onMouseOut="flip_style(this,'rb_otp_small');"> 
	    </td>
	    <td align="left" width="50%" class="medblack">
	   <input name="BUTTON" tabindex="2" class="rb_otp_small" type="button" value="Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('SEARCH/SHOW_MENU');" onMouseOut="flip_style(this,'rb_otp_small');"> 
    	    </td>
          </tr>
     </table>
    </td>
  </tr>
</table>
<br/>
<br/>
</form> 

<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a>
</div>

</body>
</html>
<!-- end v2/canadian_phones_disclaimer.tpl -->


