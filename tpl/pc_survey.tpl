<!-- begin pc_survey.tpl -->
<html>
<head>
<title>Survey</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
  <h2>LexisNexis Accurint</h2>
</div>

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
  <INPUT type=hidden NAME="MSG_ID" VALUE="<TMPL_VAR NAME=MSG_ID>">


<br><br>

<div align="center">
<table border="0" cellpadding="5" cellspacing="0" width="95%">
  <tr>
    <td align="left" id="searchResults"><h2>Do you run searches to help collect consumer debt?</h2></td>
  </tr>
</table>

<table border="0" cellpadding="5" cellspacing="0" width="90%">

  <tr>
   <td>
    <table border="0" cellpadding="5" cellspacing="0">

            <td align="left" class="medblack">
&quot;Consumer debt&quot; includes any obligation or alleged obligation
of a consumer to pay money arising out of a transaction for
personal, family, or household purposes in which a creditor
grants a right to a debtor to defer payment of debt or to incur
debts and defer its payment or to purchase property or
services and defer payment therefore.<br><br>
	    </td>
	</tr>
    </table>

    </td>
  </tr>

  <tr>
    <td align="center" valign="top">
    <table border="0" width="90%" cellpadding="6" cellspacing="0">
      <tr>
        <td align="left" class="medblack">
    
<div align="center">
      <input type="hidden" name="PC_SURVEY_RESPONSE" value="">
      &nbsp;
      <input type="button" name="btn_yes" value="Yes" onClick="document.forms[0].PC_SURVEY_RESPONSE.value='YES';send_event('MESSAGE/SAVE_PC_SURVEY')">
      &nbsp;
      <input type="button" name="btn_no" value="No" onClick="document.forms[0].PC_SURVEY_RESPONSE.value='NO';send_event('MESSAGE/SAVE_PC_SURVEY')">
    </div>

	</td>
      </tr>
    </table>
    </td>
  </tr>

</table>
<br/>
<br/>

</div>

<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank">Privacy & Security</a>
</div>

</form>

</body>
</html>
<!-- end pc_survey.tpl -->


