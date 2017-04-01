<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title>Enable Medical Records Search</title>

<TMPL_INCLUDE NAME="includes_info.tpl">

<style>
.txtWrapper{min-width:500px;}
</style>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_INCLUDE NAME="header_info.tpl">

<form name="EN_MED_REC" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
      
   <div class="txtWrapper">
    <div id="txtCon">
        <div class="left-header">Enabling Medical Records Retrieval</div>
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="15"></td>
    <td><br><br></td>
  </tr>
  <tr><td width="15"></td>
  <td class="unifont2" >
        LexisNexis&reg; Medical Records Retrieval*<br><br>

	Fast, convenient ordering of medical records for your insured's medical history verification and
	claim-handling needs!  Without leaving your desk, you can order, track, and retrieve medical records through
	the Accurint&reg;<TMPL_IF HEA> for Health Care</TMPL_IF><TMPL_IF LEG> for Legal Professionals</TMPL_IF><TMPL_IF INS> for Insurance</TMPL_IF><TMPL_IF GOV> for Government</TMPL_IF> site.
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
Thank you for your interest in Accurint&reg;<TMPL_IF HEA> for Health Care</TMPL_IF><TMPL_IF LEG> for Legal Professionals</TMPL_IF><TMPL_IF INS> for Insurance</TMPL_IF><TMPL_IF GOV> for Government</TMPL_IF> Medical Record Retrieval.&nbsp; To receive set up information and instructions on how to access Medical Records Retrieval please contact your account manager:<br><br>
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
</div>
</form>
</body>
</html>
