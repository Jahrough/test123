<!-- BEGIN pre_cdm_company_id_popup.tpl -->
<!DOCTYPE html>
<html>
<head>
<title>Core Data Management - Company ID ... Internal Company Only</title>
<meta http-equiv="pragma" content="no-cache" />
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script>
function validateCompanyId()
{
var x=document.forms["PRE_CDM_COMPANY_ID"]["CDM_COMPANY_ID"].value;
x = x.replace(/(^\s+|\s+$)/g, '');
if (x==null || x=="")
  {
  alert("Company ID cannot be empty. Please enter a valid Company ID and click Submit."); 
  return false;
  }
if (!(x.match(/^\d+$/))) {
  alert("Company ID must be a valid digit string. Please enter a valid Company ID and click Submit."); 
  return false;
}
 onclick="javascript:send_event('CDM/SHOW_CDM');";
}
</script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="PRE_CDM_COMPANY_ID" action="<TMPL_VAR NAME=ACTION>" onsubmit="return validateCompanyId();" method="post">
<TMPL_INCLUDE NAME=common_hidden_input.tpl>
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="CDM/SHOW_CDM">

<div align="center">
<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="25" border="0"></td> 
  </tr>

  <tr>
    <td style="font-size: 22px;" valign="top"><br><b>Select the Company ID of Interest</b></td>
  </tr>

  <tr>
    <td class="unifont1"><br>Enter the Company ID for the Company which the Core Data Management data is desired:</td>
  </tr>
</table>

<br>

<table border="0" width="600">
  <tr>
    <td align="left" valign="top">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont3"><b>Company ID:</b>&nbsp;&nbsp;&nbsp;</td>
	<td class="unifont3"><input type=text size="20" name="CDM_COMPANY_ID" value=<TMPL_VAR NAME="CDM_COMPANY_ID">>&nbsp;&nbsp;</td> 
        <td valign="top" align="right" width="200"><input name="BUTTON" tabindex="1" type="submit" value="  Submit  "/></td> 
      </tr>
    </table>
    
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="25" border="0"></td> 
  </tr>

</table>
</div>
</form>
</body>
</html>
<!-- END pre_cdm_company_id_popup.tpl -->
