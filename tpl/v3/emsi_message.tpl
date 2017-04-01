<!DOCTYPE html>
<!-- Begin v3/emsi_message.tpl -->

<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>Medical Records Retrieval</title>

<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
</style>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_INCLUDE NAME="header_info.tpl">

<form name="APR_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<div class="txtWrapper">
<div id="txtCon">

<table cellpadding="0" cellspacing="0" border="0">

  <TMPL_IF NAME="ERROR_MSG">
  <tr>
    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
  </tr>
  </TMPL_IF>
  <tr>
    <td class="unifont1" align="center"><B>Accessing Medical Records Retrieval site<br><br><br></B></td>
  </tr>
  <tr>
    <td class="unifont1">You are now leaving the Accurint&reg;<TMPL_IF HEA> for Health Care</TMPL_IF><TMPL_IF LEG> for Legal Professionals</TMPL_IF><TMPL_IF INS> for Insurance</TMPL_IF><TMPL_IF GOV> for Government</TMPL_IF> site.  Please click below to be transferred to the external Medical Records Retrieval order site provided through a LexisNexis third party service provider.  Use of this site is subject to the additional terms and conditions under which your company has an authorized account.<br><br><br></td>
  </tr>
  <tr>
    <td class="unifont1" align="center"><a href="<TMPL_VAR NAME=ACTION>?EVENT=SEARCH/SHOW_EMSI&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&EMSI_OK=1"><b><TMPL_UNLESS LEG>Proceed to Medical Records Retrieval<TMPL_ELSE>Proceed to MRR</TMPL_UNLESS></b></a></td>
  </tr>
</table>

</div>
</div>

</form>
</body>
</html>

<!-- End v3/emsi_message.tpl -->
