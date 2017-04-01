<!-- begin equifax_credit_fcra.tpl -->
<html>
<head>
<title>Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script type="text/javascript">
    function accept_terms()
    {
	send_event('SEARCH/SHOW_EQUIFAX_CREDIT_PERMITTED_USE');
    }
</script>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" >
<!--<TMPL_VAR NAME=SERVER_ID>-->

<form name="GLB" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
<div align="center">
<br>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
This service is governed by the federal Fair Credit Reporting Act, (15 U.S.C. Sec. 1681, et seq.) (&quot;FCRA&quot;) and may constitute consumer reports as defined by the FCRA (“Consumer Report”).  Customer certifies that when using this service, it will comply with all applicable provisions of the FCRA and all other applicable federal, state and local legislation, regulations and rules.  Without limiting the generality of the foregoing, Customer certifies that (a) Customer will comply with all applicable provisions of the California Credit Reporting Agencies Act and any related regulations; and (b) Customer will comply with all Vermont statutes and regulations on fair credit reporting, including but not limited to, obtaining the consent of Vermont residents prior to obtaining any information on Vermont residents through these Consumer Report LN Services.  In addition, Customer certifies it has a permissible purpose under the FCRA for obtaining a Consumer Report.
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
	<center><input type="button" name="accept" value="Click to Continue" onclick="accept_terms();" ></center>
    </td>
  </tr>
</table>
</div>
</form> 
</body>
</html>
<!-- end equifax_credit_fcra.tpl -->
