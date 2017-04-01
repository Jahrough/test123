<!-- Begin contact_select.tpl -->
<html>
<head>
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Contact Select</TMPL_IF></title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">

<table border="0" cellpadding="0" cellspacing="0" class="headerarea" width="100%">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="184" height="43"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="2" colspan="2" align="left" valign="bottom"><img border="0" height="2" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>


&nbsp;<br>

<div align="center">

<table cellpadding="0" cellspacing="0" border="0">

  <TMPL_IF NAME="ERROR_MSG">
  <tr>
    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont1" nowrap>

<b>Contact Your Account
Manager</b><br>
&nbsp; Name:&nbsp; <TMPL_VAR NAME=C_SALE_FIRSTNAME> <TMPL_VAR NAME=C_SALE_LASTNAME><br>
&nbsp; Phone Number:&nbsp; <TMPL_VAR NAME=C_SALE_PHONE_VOICE1><br>
<TMPL_IF NAME=C_SALE_VALID_EMAIL>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_ACCOUNT_MANAGER_EMAIL','ContactUs',450,500);"><b>Email Account Manager</b></a><br>
</TMPL_IF>
<br>

<b>Product Support</b><br>
&nbsp; (ID, password, IP maintenance, technical or usability support)<br>
&nbsp; <b>Inside the United States: 1-866-277-8407 &mdash; 24/7, 365 days a year</b><br>
&nbsp; <b>Outside the United States: </b><br>
&nbsp; &nbsp; LexisNexis® Customer Support at World Headquarters<br>
&nbsp; &nbsp; Dayton, Ohio <a href="http://support.lexisnexis.com/contact_us.asp?vcProdName=Knowledgebase#international" target="_blank"><b>(See Toll Free Numbers)</b></a><br>
<TMPL_IF NAME=NEW_PRODUCT_SUPPORT>&nbsp; <a href="https://accurint.custhelp.com" target="_blank"><b>Email Product Support</b></a><br></TMPL_IF>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CUSTOMER_SUPPORT_EMAIL','ContactUs',450,500);"><b>Email Product Support</b></a><br>
<br>

<b>Billing Support</b><br>
&nbsp; <i>(Invoicing, Billing Contact Updates, Activity Detail Requests)</i><br>
&nbsp; Hours: 8am-5:30pm Eastern Time, Monday through Friday<br>
&nbsp; <b>866-528-0570</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BILLING_SUPPORT_EMAIL','ContactUs',450,500);"><b>Email Billing Support</b></a><br>
<br>

<b>Customer Accounting</b><br>
&nbsp; <i>(Past Due, Suspended & Terminated Accounts, Credit Card Updates)</i><br>
&nbsp; Hours: 8:30-5:00 PM Eastern Time, Monday through Friday<br>
&nbsp; <b>866-818-0183</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CUSTOMER_ACCOUNTING_EMAIL','ContactUs',450,500);"><b>Email Customer Accounting</b></a><br>
<br> 

<TMPL_UNLESS LEG>
<b>Education and Training</b><br>
&nbsp; Hours: 8:30am-6:00pm Eastern Time, Monday through Friday<br>
&nbsp; <b>800-201-6411</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_EDUCATION_TRAINING_EMAIL','ContactUs',450,500);"><b>Email Customer Education</b></a><br>
<br>
<TMPL_ELSE>
<b>Education and Training</b><br>
&nbsp; Hours:&nbsp; 8am-6pm Eastern Time, Monday through Friday<br>
&nbsp; <b>800-227-9597, ext. 52151</b><br>
<br>
</TMPL_UNLESS>

<b>Feedback / Suggestions</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_FEEDBACK_SUGGESTIONS_EMAIL','ContactUs',450,500);"><b>Email Feedback/Suggestions</b></a><br>

<TMPL_IF NAME="SA">
<br>
<b>Investigation Referral Form to LexisNexis Security Investigations</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_SECURITY_INVESTIGATIONS_EMAIL','ContactUs',550,600);"><b>Email Referral for Security Investigations</b></a><br>
</TMPL_IF>

    </td>
  </tr>
</table>

</div>

</form>
</body>
</html>
<!-- End contact_select.tpl -->
