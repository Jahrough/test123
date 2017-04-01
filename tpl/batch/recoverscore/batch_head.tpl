<html>
<head>
<title>Batch Wizard <TMPL_VAR TITLE_PAGE></title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/batch.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/show_please_wait.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
<script>
close_x = new Image();
close_x.src = "/bps/images/closex.gif";
</script>

</head>

<body onUnLoad="closewaitwin();"
    leftmargin="0" marginwidth="0" topmargin="0" marginheight="0"
    <TMPL_UNLESS IS_BUS_BATCH>
    <TMPL_UNLESS IS_BUS_BATCH_DUEX>
	<TMPL_IF NAME=base-batch-price>
	onLoad="check_append_fields();"
	</TMPL_IF>
    </TMPL_UNLESS>	
    </TMPL_UNLESS>	
>

<div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>

<FORM NAME="BATCH" action="<TMPL_VAR NAME=ACTION_BATCH>" METHOD="POST" <TMPL_VAR FORM_ARGS>>
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT TYPE="HIDDEN" NAME="IS_BUS_BATCH" VALUE="<TMPL_VAR IS_BUS_BATCH>">
  <INPUT TYPE="HIDDEN" NAME="IS_BUS_BATCH_DUEX" VALUE="<TMPL_VAR IS_BUS_BATCH_DUEX>">
  <INPUT TYPE="HIDDEN" NAME="IS_PHONE_BATCH" VALUE="<TMPL_VAR IS_PHONE_BATCH>">
  <INPUT TYPE=HIDDEN NAME="BBP" VALUE="<TMPL_VAR NAME=base-batch-price>">
  <INPUT TYPE=HIDDEN NAME="DAPP" VALUE="<TMPL_VAR NAME=dedupeall-price>">
  <INPUT TYPE=HIDDEN NAME="DAP" VALUE="<TMPL_VAR NAME=dedupeaddresses-price>">
  <INPUT TYPE=HIDDEN NAME="DPP" VALUE="<TMPL_VAR NAME=dedupephones-price>">
  <INPUT TYPE=HIDDEN NAME="NP" VALUE="<TMPL_VAR NAME=neighbors-price>">
  <INPUT TYPE=HIDDEN NAME="AOP" VALUE="<TMPL_VAR NAME=preconfig_adlonly-price>">
  <INPUT TYPE=HIDDEN NAME="ABP" VALUE="<TMPL_VAR NAME=preconfig_adlbest-price>">
  <INPUT TYPE=HIDDEN NAME="ABPF" VALUE="<TMPL_VAR NAME=preconfig_adlbestfull-price>">
  <INPUT TYPE=HIDDEN NAME="AUP" VALUE="<TMPL_VAR NAME=preconfig_adlupdate-price>">
  <INPUT TYPE=HIDDEN NAME="AIP" VALUE="<TMPL_VAR NAME=preconfig_adlimpact-price>">
  <INPUT TYPE=HIDDEN NAME="AHIP" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact-price>">
  <INPUT TYPE=HIDDEN NAME="AHIPP" VALUE="<TMPL_VAR NAME=preconfig_adlhighimpact_plus-price>">
 
<table border="0" cellpadding="0" cellspacing="0" width="100%" bgcolor="#cccccc">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/BATCH/batch22.gif" width="680" height="66" border="0"></td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr>
    <td class="headerseparator" height="10"><img border="0" height="10" width="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>


