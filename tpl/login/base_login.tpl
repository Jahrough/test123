<!-- begin login/base_login.tpl -->
<html>
<head>

<title>Accurint Sign In</title>

<link rel="stylesheet" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/login/styles-screen.css" type="text/css" />
<!--[if IE]>
  <link rel="stylesheet" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/login/styles-ie.css" type="text/css" />
<![endif]-->

<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>
<script src="<TMPL_VAR name='JSPATH'>/prototype.js"></script>

<TMPL_IF PRUDENTIAL_REQUEST>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery-ui.min.js"></script>

<script type="text/javascript">
var $j = jQuery.noConflict();
var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
var app_type = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function send_event(evt,url){
    document.forms[0].EVENT.value = evt;
    document.forms[0].action = url;
    document.forms[0].submit();
}
function clear_dd_chat_cookie() {
    document.cookie = 'dd_chat_state=; expires=Thu, 01-Jan-70 00:00:01 GMT;';
}
function load_fskid(id){if(document.forms[0].FSKID) document.forms[0].FSKID.value=id;}
</script>
<script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
</head>

<body onLoad="<TMPL_IF NAME="ERROR_MESSAGE">build_alert('Alert!','<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF><TMPL_IF SHOW_PWD_PAGE>setup_fields();<TMPL_ELSE><TMPL_IF SHOW_SEC_QUES><TMPL_ELSE>setup_page(1);</TMPL_IF></TMPL_IF>clear_dd_chat_cookie();">

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="<TMPL_IF PRUDENTIAL_REQUEST>showpw();</TMPL_IF><TMPL_IF SHOW_PWD_PAGE>return prepared_pwd()<TMPL_ELSE>return prepared();</TMPL_IF>">

      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
      <INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">
      <INPUT type=hidden NAME="BASE_HREF" VALUE="<TMPL_VAR NAME=BASE_HREF>">
      <INPUT type=hidden NAME="IGNORE_HTML5" VALUE="<TMPL_VAR NAME=IGNORE_HTML5>">
      <TMPL_IF ENABLE_LOGIN_HASHING> <INPUT type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>"></TMPL_IF>
      <TMPL_IF NAME="POLICE_REC_ID"> <INPUT type=hidden NAME="POLICE_REC_ID" VALUE="<TMPL_VAR NAME=POLICE_REC_ID>"></TMPL_IF>
      <TMPL_IF NAME="ACA_DOWNLOAD_REPORT_ID"> <INPUT type=hidden NAME="ACA_DOWNLOAD_REPORT_ID" VALUE="<TMPL_VAR NAME=ACA_DOWNLOAD_REPORT_ID>"></TMPL_IF>
      <TMPL_IF NAME="ACA_DOWNLOAD_REPORT_ITEM"> <INPUT type=hidden NAME="ACA_DOWNLOAD_REPORT_ITEM" VALUE="<TMPL_VAR NAME=ACA_DOWNLOAD_REPORT_ITEM>"></TMPL_IF>

      <TMPL_UNLESS SHOW_PWD_PAGE>
           <TMPL_IF SHOW_SEC_QUES>
             <INPUT type=hidden NAME="EVENT" VALUE="LOGIN/CHECK_SQ">
             <INPUT type=hidden NAME="_SKT" VALUE="<TMPL_VAR NAME=_SKT>">
	     <TMPL_IF ENABLE_LOGIN_HASHING>
	         <INPUT type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
	     </TMPL_IF>
           <TMPL_ELSE>
		  <INPUT type=hidden NAME="EVENT" VALUE="LOGIN/SHOW_LOGIN2">
		  <INPUT type=hidden NAME="TDZ" VALUE="<TMPL_VAR NAME=TDZ>">
		  <INPUT type=hidden NAME="FSKID" VALUE="">
		  <TMPL_IF ENABLE_LOGIN_HASHING>
		      <INPUT type=hidden NAME="_SK" VALUE="<TMPL_VAR NAME=_SK>">
		  </TMPL_IF>
	   </TMPL_IF>
      <TMPL_ELSE>
          <INPUT type=hidden NAME="EVENT" VALUE="LOGIN/LOGIN">
          <INPUT type=hidden NAME="_SKT" VALUE="<TMPL_VAR NAME=_SKT>">
      </TMPL_UNLESS>

<div id="wrapper">
<div id="header">

<div id="lnlogo"><a target="_blank" href="http://www.lexisnexis.com/risk"><img src="<TMPL_VAR NAME=IMGPATH>/login/LN-Accurint-red.jpg" width="252" height="29" alt="LexisNexis&reg;" /></a></div>

</div>
<div id="contentwrapper">
<div id="loginleftside">
<div id="loginbox">

<TMPL_UNLESS SHOW_PWD_PAGE>
<div style="height: 450px;">
<h2>Sign In:</h2>
<p>To ensure the security of your account, we have implemented a new two-step sign on process.&nbsp; First you will be asked to enter your user name and verification characters.&nbsp; Next you will be asked to enter your password and click "Sign In."</p>
<TMPL_ELSE>
<div style="height: 300px;">
</TMPL_UNLESS>

<TMPL_IF SHOW_PWD_PAGE>
    <TMPL_INCLUDE NAME=login/base_login_page2.tpl>
<TMPL_ELSE>
	 <TMPL_IF SHOW_SEC_QUES>
	    <TMPL_INCLUDE NAME=login/base_login_page3.tpl>
	<TMPL_ELSE>
	    <TMPL_INCLUDE NAME=login/base_login_page1.tpl>
	</TMPL_IF>
</TMPL_IF>

<TMPL_IF PRUDENTIAL_REQUEST>
    <TMPL_INCLUDE NAME=prudential_login_params.tpl>
</TMPL_IF>

</div>
</div>

<div id="loginbottom"></div>


<TMPL_UNLESS SHOW_PWD_PAGE>

<div id="leftcallouts">
<table cellpadding="0" cellspacing="0" border="0" width="675">
  <tr>
    <td valign="middle" align="right">
    <table bgcolor="#d9d9d9" cellpadding="1" cellspacing="1" border="0">
      <tr>
        <td>
	<table bgcolor="#eeeeee" border="0" cellpadding="3" cellspacing="0" width="253">
	  <tr>
	    <td colspan="2" style="font-size: 12px;"><b>Customer Center</b></td>
	  </tr>
	  <tr>
	    <td colspan="2" style="font-size: 11px;">Access helpful resources for your organization to maximize the benefits of your service.</td>
	  </tr>
	  <tr>
	    <td style="font-size: 11px;" valign="top">
	    &#8226; <a title="Customer Center Collections" href="http://www.accurint.com/collections.html">Collections</a><br />
	    &#8226; <a title="Customer Center Government" href="http://www.accurint.com/government.html">Government</a><br />
	    &#8226; <a title="Customer Center Health Care" href="http://www.accurint.com/health_care.html">Health Care</a><br>
	    &#8226; <a title="Customer Center Insurance" href="http://www.accurint.com/insurance.html">Insurance</a><br />
	    </td>
	    <td style="font-size: 11px;" valign="top">
	    &#8226; <a title="Customer Center Law Enforcement" href="http://www.accurint.com/lawenforcement.html">Law Enforcement</a><br />
	    &#8226; <a title="Customer Center Legal" href="http://www.accurint.com/legal.html">Legal</a><br>
	    &#8226; <a title="Customer Center Private Investigations" href="http://www.accurint.com/privateinvestigations.html">Private Investigations</a><br>
	    </td>
	  </tr>
	</table>
	</td>
      </tr>
    </table>
    </td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="25" alt=""><br></td>
    <td valign="top">
      <a href="http://learn.lexisnexis.com/" target="_blank"><img src="<TMPL_VAR NAME=IMGPATH>/login/learning-resource-center.jpg" width="218" height="189" alt="Learning Resource Center" /></a>
    </td>
  </tr>
</table>
</div>

</TMPL_UNLESS>

</div>

<TMPL_UNLESS SHOW_PWD_PAGE>
<div id="loginrightside">

<h1><img src="<TMPL_VAR NAME=IMGPATH>/login/ico_hdrarrow_red.gif" width="8" height="8" alt="" /> Important Security Notice</h1>
<p><strong>URGENT:  </strong>If you do not currently see <strong><script>write_secure_url();</script><noscript>Your browser does not support JavaScript!</noscript></strong> (note the <strong>https</strong> not <strong>http</strong> and the exact spelling of our name) in the address bar of your web browser, please do not proceed.</p>
<p>All Internet users should be aware of the online scam known as &quot;phishing&quot; (pronounced &quot;fishing&quot;). Phishing involves the use of e-mail messages that appear to come from your bank or another trusted business such as Accurint, but are actually from imposters.&nbsp; All your Accurint business web access should be done through our secure Web site.&nbsp; <strong>We will not send you an e-mail with links to our site, nor will we provide you links to download software to your computer.</strong></p>

<h1><img src="<TMPL_VAR NAME=IMGPATH>/login/ico_hdrarrow_red.gif" width="8" height="8" alt="" /> General Security Tips</h1>
<p>Always start sign on from: <strong><script>write_url();</script><noscript>Your browser does not support JavaScript!</noscript></strong> and never enter your ID or Password information at any other URL or site, or your security may be compromised. Never click or follow links to Accurint from email messages because if you do so you may be taken to a site that looks like Accurint but is not the Accurint site. If you accessed any other URL or site that looks like Accurint or if you clicked on a link within an email to access Accurint and entered your account information, please change your Password immediately.</p>
<p>Protect the security of your User Name and Password by following these guidelines: (a) Never share User Names or Passwords; (b) Do not write your User Name and Password down anywhere; (c) Install and use current anti-virus software; (d) Inform your administrator or contact Customer Support immediately if you believe your User Name or Password have been compromised.</p>
</div>
</TMPL_UNLESS>

</div>

<div id="bottomnavigation">
<a href="http://www.lexisnexis.com/risk/terms/" target="_blank" title="Open Terms &amp; Conditions">Terms &amp; Conditions</a> | <a href="http://www.lexisnexis.com/en-us/terms/privacy-policy.page" target="_blank" title="Open Privacy Policy">Privacy Policy</a> | <a href="http://www.accurint.com/contactus.html" title="Open Contact Us">Contact Us</a> | <a href="http://www.lexisnexis.com/risk/about" target="_blank" title="Open About Us">About Us</a></div>

<div id="copyright">
<p>The Accurint&reg; services are not provided by "consumer reporting agencies," as that term is defined in the Fair Credit Reporting Act (15 U.S.C. 1681, et seq.) ("FCRA") and do not constitute "consumer reports," as that term is defined in the FCRA.&nbsp; Accordingly, the Accurint service may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or for other eligibility determination purposes that would qualify the service as a consumer report under the FCRA.</p>
<p><a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank" title="Copyright">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis Risk Solutions. All rights reserved.</p>
</div>

</div>

<TMPL_INCLUDE NAME=login/base_login_popups.tpl>

</form>
</body>
</html>

<!-- end login/base_login.tpl -->
