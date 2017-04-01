<!-- Begin police_records_fax_release.tpl -->
<html>
<head>
<title>Police Records Fax Release</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
</head>

<body onLoad="window.focus();" onBlur="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint</a></h2>
</div>

<form name="POLICE_RECORDS_FAX_RELEASE" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME=common_hidden_input.tpl>     
<INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
<INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
<INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<div align="center"> 

<table cellspacing="4" cellpadding="4" width="600" border="0" align="center">
  <tr>
    <td class="unifont1" style="font-size: 10pt; font-style: italic; font-weight: bold;" owrap="nowrap">
    The agency from which you have requested a police report requires a signed release be submitted and accompanied with your request.  Please select the link below and print the signed release form.  The instructions for submitting the form are listed on the form.
    </td>
  </tr>
  <tr>
    <td class="unifont1" align="center" style="font-size: 10pt; font-style: italic; font-weight: bold;" owrap="nowrap">
		<a href="javascript:general_win('<TMPL_VAR NAME=PDFPATH>/police_records_fax_release.pdf','PoliceRecordsReport','','',1,1,1,1,1,0);void(0);">Open Signed Release Template Form</a>
    </td>
  </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End police_records_fax_release.tpl -->
