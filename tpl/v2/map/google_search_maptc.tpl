<!-- begin google_search_maptc.tpl -->
<html>
<head>
<title>Google Maps Terms and Conditions</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script language="JavaScript">
function setchecked()
{
    document.MAPTC.MAP_TC_ACPT.value = '1';
    document.MAPTC.EVENT.value = 'ESRI/CHECK_GMAP_ACCEPTANCE';
    opener.document.forms.MAP.GOOGLE_DISCLAIMER_ACCEPTED.value='111111';
    //opener.document.getElementById('list_canvas').style.display='none';
    //opener.document.getElementById('map_canvas').style.display='block';
    document.forms[0].submit();
}
</script>

<body id="hdNoLogo" <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#e6e7de">

<form name="MAPTC" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="MAP_TC_ACPT" value="<TMPL_VAR NAME=MAP_TC_ACPT>">
    <input type="hidden" name="EVENT" value="">
<div align="center">
<br>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td class="glbtitle"><B>Terms and Conditions</B></td>
  </tr>
</table><br><br>

<table border="1" cellpadding="3" cellspacing="0" valign=top bordercolor="black" width="650">

<tr><td class="medblack" bgcolor="white" style="padding:8px;">
<br/>
By accessing this mapping feature, you agree to abide by the terms and
conditions of the license agreement:
<br/>

<div align=center><b><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Mapping Service End User License Agreement</b></div>
<br/>
<p>
IMPORTANT - READ CAREFULLY BEFORE ACCESSING THIS PRODUCT FEATURE. 
</p>
<p>
THE MAPPING SERVICES ARE PROVIDED BY A THIRD PARTY, AND ARE NOT CREATED, OWNED OR CONTROLLED BY LEXISNEXIS RISK SOLUTIONS FLORIDA.  YOUR INPUTS INTO THE MAPPING SERVICE WILL BE REDIRECTED TO A THIRD PARTY EXTERNAL SITE.  YOU MAY CEASE USE OF THE MAPPING SERVICE AT ANY TIME.  BE ADVISED THAT LEXISNEXIS RISK SOLUTIONS FLORIDA DOES NOT CONTROL, SCREEN, ALTER OR MODIFY THE CONTENT OF THE MAPPING SERVICES AND CANNOT CONTROL THE AVAILABILITY OR FUNCTIONALITY OF THE MAPPING SERVICE.  THE MAPPING SERVICE IS PROVIDED "AS IS, AS AVAILABLE." 
</p>
</td></tr>
</table>


<table border="0" cellpadding="10" cellspacing="0" width="680">
  <tr>
    <td width="680" align="center" valign="top" wrap>
      <br>
      <br>
	<center><input type="button" name="accept" value="I Accept" onclick="setchecked();window.close();" >&nbsp;&nbsp;<input type="button" name="decline" value="I Decline" onclick="window.close()"></center>
    </td>
  </tr>
</table>
</div>

   
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form>
</body>
</html>
<!-- end google_search_maptc.tpl -->

