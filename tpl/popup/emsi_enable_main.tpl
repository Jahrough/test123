<html>
<head>
<title>Enable Medical Records Search</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<form name="EN_MED_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
<table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>
<br>
<div align="center">
<table border="0" cellpadding="0" cellspacing="0">
  <tr><td width="15"></td>
    <td class="myaccounttitle" align="center">
    <B>Enabling Medical Records Retrieval<br><br></B></td>
  </tr>
  <tr><td width="15"></td>
  <td class="unifont2" >
        LexisNexis® Medical Records Retrieval*<br><br>

	Fast, convenient ordering of medical records for your insured's medical history verification and
	claim-handling needs!  Without leaving your desk, you can order, track, and retrieve medical records through
	the Accurint&reg; for <TMPL_IF HEA>Health Care<TMPL_ELSE>Insurance</TMPL_IF> site.
        <ul>
	<li> Nationwide coverage leveraging a database of over 600,000 medical providers
	and hospitals across the United States
	<li> Secure Electronic Interface
	<li> Electronic fulfillment interface reduces cost and increases efficiency
	<li> No charge for electronic posting of records or phone calls to providers
	<li> Fully compliant with HIPAA
        </ul>
  </td></tr>
  <tr><td width="15"></td>
    <td class="unifont2" valign="top">
<TMPL_IF NAME="SA">
Thank you for your interest in Accurint for <TMPL_IF HEA>Health Care<TMPL_ELSE>Insurance</TMPL_IF> Medical Record Retrieval.&nbsp; To receive set up information and instructions on how to access Medical Records Retrieval please contact your account manager:<br><br>
&nbsp; <b>Name:</b>&nbsp; <TMPL_VAR NAME=C_SALE_FIRSTNAME> <TMPL_VAR NAME=C_SALE_LASTNAME><br>
&nbsp; <b>Phone Number:</b>&nbsp; <TMPL_VAR NAME=C_SALE_PHONE_VOICE1><br>
<TMPL_IF NAME=C_SALE_VALID_EMAIL>
&nbsp; <b>Email Form:</b>&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_ACCOUNT_MANAGER_EMAIL','ContactUs',450,500);"><b>Email Account Manager</b></a>
</TMPL_IF>
<br>
<TMPL_ELSE>
Medical Records Retrieval is currently not enabled.&nbsp; Please contact your system administrator for access.
</TMPL_IF>
    </td>
  </tr>	  
  <tr><td width="15"></td>
    <td class="smallfont1" valign="top">
    <br>
    <br>
     * All patient data and records shall be maintained in full compliance with HIPAA requirements and will only
     be provided with the express authorization of the patient. At no time shall patient data and records be
     maintained, stored or captured by LexisNexis or its affiliated companies.
  </td></tr> 
</table>
</div>
</form>
</body>
</html>
