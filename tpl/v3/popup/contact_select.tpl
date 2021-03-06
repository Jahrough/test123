<!DOCTYPE html>
<!-- Begin v3/popup/contact_select.tpl -->
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Contact Select</TMPL_IF></title>

<TMPL_INCLUDE NAME="includes_info.tpl">
<style>
.txtWrapper{min-width:500px;}
</style>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_INCLUDE NAME="header_info.tpl">
<form name="CONTACT_US" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
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
    <td class="unifont1" nowrap>

<TMPL_IF NAME=CUSTOM_CONTACT_PHONE>

<!-- Begin Special Contact Us for Custom Companies -->

<br><br><br><br><br><br>
<b>Product Support</b><br>
&nbsp; (ID, password, IP maintenance, technical or usability support)

<center><br><br><h2><b><TMPL_VAR NAME=CUSTOM_CONTACT_PHONE></b></h2><br><br></center>

&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CUSTOMER_SUPPORT_EMAIL','ContactUs',450,500);"><b>Email Product Support</b></a>&nbsp; <b>OR</b>&nbsp; <a href="javascript:void;" onClick="window.open('https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php');"><b>Click for Live Chat</b></a><br>

<br><br><br>

<b>Education and Training</b><br>
&nbsp; Hours: 8:30am-6:00pm Eastern Time, Monday through Friday<br>
&nbsp; <b>800-201-6411</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_EDUCATION_TRAINING_EMAIL','ContactUs',450,500);"><b>Email Customer Education</b></a><br>
<br>

<b>Feedback / Suggestions</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_FEEDBACK_SUGGESTIONS_EMAIL','ContactUs',450,500);"><b>Email Feedback/Suggestions</b></a><br>

<TMPL_IF NAME="SA">
<br>
<b>Investigation Referral Form to LexisNexis Security Investigations</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_SECURITY_INVESTIGATIONS_EMAIL','ContactUs',550,600);"><b>Email Referral for Security Investigations</b></a><br>

<!-- End Special Contact Us for Custom Companies -->

</TMPL_IF>


<TMPL_ELSE>


    <b><a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FAQMenu','600','325',0,0,0,0,0,0,'','faq');">Frequently Asked Questions</a></b>

<br/><br/>

<b>Contact Your Account
Manager</b><br>
&nbsp; Name:&nbsp; <TMPL_VAR NAME=C_SALE_FIRSTNAME> <TMPL_VAR NAME=C_SALE_LASTNAME><br>
&nbsp; Phone Number:&nbsp; <TMPL_VAR NAME=C_SALE_PHONE_VOICE1><br>
<TMPL_IF NAME=C_SALE_VALID_EMAIL>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CONTACT_ACCOUNT_MANAGER_EMAIL','ContactUs',600,525);"><b>Email Account Manager</b></a><br>
</TMPL_IF>
<br>

<TMPL_IF NAME="SHOW_ADMIN_CONTACT">
   <b>Contact Your Company Administrator</b><br>
   &nbsp; (ID, password, user access to searches/reports)<br>
   &nbsp; <a href="javascript:show_post_popup('LOGIN/SHOW_ADMIN_POPUP','ADMIN_CONTACT','475','610',0,0,0,1,1,0,'','display_admin_contact');"><b>View Company Administrators and Contacts</b></a><br>
   <br>
</TMPL_IF>

<b>Product Support</b><br>
&nbsp; (ID, password, IP maintenance, technical or usability support)<br>
&nbsp; <b>Inside the United States: 1-866-277-8407 &mdash; 24/7, 365 days a year</b><br>
&nbsp; <b>Outside the United States: </b><br>
&nbsp; &nbsp; LexisNexis&reg; Customer Support at World Headquarters<br>
&nbsp; &nbsp; Dayton, Ohio <a href="http://support.lexisnexis.com/contact_us.asp?vcProdName=Knowledgebase#international" target="_blank"><b>(See Toll Free Numbers)</b></a><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CUSTOMER_SUPPORT_EMAIL','ContactUs',600,525);"><b>Email Product Support</b></a>&nbsp; <b>OR</b>&nbsp; <a href="javascript:void;" onClick="window.open('https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php');"><b>Click for Live Chat</b></a><br>
<br>

<b>Billing Support</b><br>
&nbsp; <i>(Invoicing, Billing Contact Updates, Activity Detail Requests)</i><br>
&nbsp; Hours: 8am-5:30pm Eastern Time, Monday through Friday<br>
&nbsp; <b>866-528-0570</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BILLING_SUPPORT_EMAIL','ContactUs',600,525);"><b>Email Billing Support</b></a><br>
<br>

<b>Customer Accounting</b><br>
&nbsp; <i>(Past Due, Suspended & Terminated Accounts, Credit Card Updates)</i><br>
&nbsp; Hours: 8:30-5:00 PM Eastern Time, Monday through Friday<br>
&nbsp; <b>866-818-0183</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_CUSTOMER_ACCOUNTING_EMAIL','ContactUs',600,525);"><b>Email Customer Accounting</b></a><br>
<br> 

<b>Education and Training</b><br>
&nbsp; Hours: 8:30am-6:00pm Eastern Time, Monday through Friday<br>
&nbsp; <b>800-201-6411</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_EDUCATION_TRAINING_EMAIL','ContactUs',600,525);"><b>Email Customer Education</b></a><br>
<br>

<b>Feedback / Suggestions</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_FEEDBACK_SUGGESTIONS_EMAIL','ContactUs',600,525);"><b>Email Feedback/Suggestions</b></a><br>

<TMPL_IF NAME="SA">
<br>
<b>Investigation Referral Form to LexisNexis Security Investigations</b><br>
&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_SECURITY_INVESTIGATIONS_EMAIL','ContactUs',675,675,0,0,0,1,1,0);"><b>Email Referral for Security Investigations</b></a><br>
</TMPL_IF>

</TMPL_IF>

    </td>
  </tr>
</table>

</div>
</div>

</form>
</body>
</html>
<!-- End v3/popup/contact_select.tpl -->
