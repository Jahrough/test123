<!-- begin comp_account_summary.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Company Payment Summary</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

<link href="<TMPL_VAR NAME='CSSPATH'>/simple_date_picker.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/simple_date_picker.js"></script>

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/billing.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/acchistory.js"></script>

</head>

<body onLoad="<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0"<TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<form name="BILLING" action="<TMPL_VAR NAME=ACTION>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT">
      <INPUT type=hidden NAME="BILLING_PERIOD_ID">

<!--
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="5">
  <tr height="5">
    <td height="5" bgcolor="#cccccc" class="unifont2pt">&nbsp;</td>
  </tr>
</table>
-->


<div align="center">

<TMPL_INCLUDE NAME="admin_header.tpl">
<TMPL_IF NAME="SHOW_ACTIVE_COMPANY_LINK">
<TMPL_INCLUDE NAME=active_company.tpl>
</TMPL_IF>


<TMPL_IF SA_DISABLED>

<TMPL_INCLUDE NAME="sa_disabled_message.tpl">
	  
<TMPL_ELSE>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td align="center" valign="middle" class="myaccountborder">
    <table width="856" cellpadding="0" cellspacing="0" border="0">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>

    <TMPL_IF BILL_PMT_ONLY>
    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr>
        <td><img width="856" height="5" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      <tr>
        <td>
        <table width="856" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <td width="1%"></td>
          <td>
            <input name="logout" tabindex="6" class="rb_otp_small" align="left" type="button" value="Log Out" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('LOGOUT');" onMouseOut="flip_style(this,'rb_otp_small');">
          <td>
        </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td><img width="856" height="5" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
      </tr>
      </tr>
      <tr>
      <td align="center" valign="middle" class="myaccountborder">
        <table width="856" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <td colspan="5" align="center" width="856"><img width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
        </tr>
        </table>
        </tr>
      </td>
      </tr>
    </table>
    </TMPL_IF>

    <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
      <tr>
        <td width="856" align="center">
	<br>

	    <TMPL_IF ENABLE_EPIC360_PAYMENTS>
	    <table border="0" cellpadding="0" cellspacing="0" width="800">
	      <tr>
	        <td>

    <font color="#ed1c24" face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Self-Serve Billing Change to EPIC 360&deg;</b></font>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="2">
    <br><br>
    As of May 20th, 2016, existing self-serve billing options available on the Billing Information tab have been removed and transitioned to the enhanced Electronic Payment & Invoice Center, EPIC 360&reg;.   This change will not impact the way invoices and other billing information is sent today on an automated basis, but is specific to how self-serve billing options will be accessed going forward.
    <br><br>
    Please register and begin using EPIC 360&deg; today!
    <br><br>
    <font color="#ed1c24" face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="2"><b>EPIC 360&deg;</b></font>
    <br><br>
    <a href="https://invoice.risk.lexisnexis.com/" target="_blank"><b><u>https://invoice.risk.lexisnexis.com/</u></b></a>
    <br><br>
    <b>EPIC 360&deg; Features include:</b>
    <ul>
      <li>One login ID to access your LexisNexis&reg; Risk Solutions accounts and invoices
      <li>Ability to view your open account balances and pay invoices online
      <li>Opportunity to view, print, and save PDF copies of invoices
      <li>Access to your account activity detail
    </ul>
    <font color="#ed1c24"><b>Take a Tour of EPIC 360&deg;:</b></font>
    <br><br>
    <a href="https://invoice.risk.lexisnexis.com/index/tutorial" target="_blank"><b><u>https://invoice.risk.lexisnexis.com/index/tutorial</u></b></a>
    <br><br>
    Module 1:  <u>Registration and Login</u><br>
    Module 2:  <u>Dashboard and Basic Navigation</u><br>
    Module 3:  <u>Working with Payable Invoices</u><br>
    Module 4:  <u>Paying Invoices</u><br>
    Module 5:  <u>Reporting and Download Reports</u><br>
    Module 6:  <u>Account Administration</u><br>
    <br>
    If you have any questions please contact LexisNexis Customer Support at <b>866.528.0570</b> or <a href="https://accurint.custhelp.com/" target="_blank"><b><u>Email Us.</u></b></a>
    <br><br>
    <b>Epic 360&deg; Tutorial URLs</b>
    <br><br>

    Module 1: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Registration_and_SignIn/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Registration_and_SignIn/index.html</u></b></a>
    <br><br>
    Module 2: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Dashboard_and_BasicNavigation/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Dashboard_and_BasicNavigation/index.html</u></b></a>
    <br><br>
    Module 3: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Working_with_Payable_Invoices/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Working_with_Payable_Invoices/index.html</u></b></a>
    <br><br>
    Module 4: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Paying_Invoices/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Paying_Invoices/index.html</u></b></a>
    <br><br>
    Module 5: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Reporting_and_Download_Reports/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Reporting_and_Download_Reports/index.html</u></b></a>
    <br><br>
    Module 6: <a href="https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Account_Administration/index.html" target="_blank"><b><u>https://learn.lexisnexis.com/lexisnexis/resources/courses/EPIC_360/Account_Administration/index.html</u></b></a>
    <br><br><br>
    </font>

		</td>
	      </tr>
	    </table>

	    <TMPL_ELSE>
	    <table border="0" cellpadding="0" cellspacing="0" width="650">
	      <tr>
	        <td align="center">

	    <span class="myaccounttitle">Billing History</span>
		</td>
	      </tr>

	      <TMPL_IF NAME="INVOICE_ERROR_MESSAGE">
              <tr>
		<td align="center" class="errormessage">
	        <br/>
		 <span class="errormessage"><TMPL_VAR NAME="INVOICE_ERROR_MESSAGE"></span>
	       </td>
	      </tr>
	      </TMPL_IF>
											    	     
	      <tr>
		<td valign="middle">
		<br>
		<TMPL_INCLUDE NAME="payments/balance_summary.tpl">
		</td>
	      </tr>
	      <tr>
		<td valign="middle">
		<br>
		<TMPL_INCLUDE NAME="comp_account_history.tpl">
		<br>
		</td>
	      </tr>
	    </table>
	    </TMPL_IF>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

</div>

</TMPL_IF>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="billing_activity_hidden_form.tpl">
</body>
</html>
<!-- end comp_account_summary.tpl -->
