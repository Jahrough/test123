<!-- begin riskview_permission.tpl -->
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
	send_event('SEARCH/SHOW_RISKVIEW');
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
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td style="font-family: helvetica,arial; font-size: 12pt; color: #003399;"><B>Terms and Conditions</B></td>
  </tr>
</table>
<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td class="unifont1" width="680" align="left">
You have left Accurint and have entered LexisNexis Risk & Information Analytics Group Inc.'s RiskView product.  RiskView for Auto Financing is a consumer report product compliant with the federal Fair Credit Reporting Act (15 USC 1681 et seq.) (the "FCRA").  By clicking below you certify (i)  that you have a permissible purpose to obtain a consumer report; and (ii) that you will comply with all applicable laws in using RiskView for Auto Financing, including where applicable, the California Credit Reporting Agencies Act and all Vermont statutes and regulations on fair credit reporting.
    </td>
  </tr>
  <tr>
    <td width="680" align="center" valign="top">
	<center><input type="button" name="accept" value="I Certify I Have a Permissible Purpose" onclick="accept_terms();" ></center>
    </td>
  </tr>
</table>
</div>
</form> 
</body>
</html>
<!-- end riskview_permission.tpl -->
