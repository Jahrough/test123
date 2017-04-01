
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin show_email_domain_select.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title><TMPL_VAR NAME="PAGE_TITLE"></title>

<TMPL_IF ENABLE_MYACC_V3>
  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/myaccount.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/main_menu.css" rel="stylesheet" type="text/css">
<TMPL_ELSE>
  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
  </head>


<TMPL_IF ENABLE_MYACC_V3>

  <script type="text/javascript">
  var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
  function open_help() {
    if (vertical == 'gov' || vertical == 'le') {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
    } else {
        window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
    }
  }
  </script>


<body>
<div class="topBarCon">
  <div class="topBarConMiddle" style="margin-left:5px;">
    <div class="left">
      <ul>
      <TMPL_IF GOV>
      <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
      </TMPL_IF>
      <TMPL_IF LE>
      <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
      </TMPL_IF>
      <TMPL_IF HEA>
      <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
      </TMPL_IF>
      </ul>
    </div>
    <div class="right">
          <ul id="support-links">
            <li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
            <li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
            <li>1-866-277-8407</li>
          </ul>
    </div>
  </div>
</div>

<TMPL_ELSE>
<TMPL_IF NAME="ENABLE_V2">
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">
  <TMPL_INCLUDE NAME="generic_header.tpl">
</TMPL_IF>
</TMPL_IF>

<div align="center">

<br>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td align="center" valign="middle" class="myaccountborder">
		<table width="856" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			<td colspan="5" align="center" width="856"><img width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		  </tr>
		</table>
		<table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
		  <tr>
			<td width="1"><img width="10" height="1" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="65"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="600" align="center" class="unifont2" nowrap="nowrap" valign="middle"><span class="myaccounttitle">Email Update Required</span></td>
			<td width="65"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="1"><img width="1" height="40" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		  </tr>
		</table>
    </td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder"><img border="0" width="1" height="12" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder">
		<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
			<tr>
				<td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			</tr>
			<tr>
				<td align="center">

					<TMPL_IF NAME="ERROR_MESSAGE">
					<p class="error"><TMPL_VAR NAME="ERROR_MESSAGE"></p>
					</TMPL_IF>

					<form name="group" action="<TMPL_VAR NAME='ACTION'>"
					  method="post" onsubmit="return validate();">
					  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
					  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
					  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
					  <input type="hidden" name="EVENT" value="">
					  <input type="hidden" name="CANCEL" value="">
						<table width="95%" class="fieldrow" align="center" border="0">
							<tr>
								<td class="unifont2" align="left">
									Your company administrator requires that your email address be from a list of pre-approved domains. In the drop-down list below, please pick your domain and enter your email address. If your email address does not match the domains provided, or you have other questions, contact your company administrator.<br><br>
									<TMPL_IF NAME="EMAIL_NO_PASS">
										<span class="unifont1boldred">You have bypassed this email update request 5 times. Your ability to use the product will be restricted until you update your email to match your administrator&#146s requirements.</span>
									<TMPL_ELSE>
										<span class="unifont1bold">You may bypass this email update upto 5 times, but after that, your ability to use the product will be restricted until you update your email to match your administrator&#146s requirements.</span>
									</TMPL_IF>
									<br><br>
								</td>
							</tr>
						</table>
						<table width="50%" class="fieldrow" align="center" border="0">
							<tr>
								<td class="largefont1" align="center" colspan="4">
									Current Email Address: <b><TMPL_VAR NAME="CURR_EMAIL"></b><br><br>
								</td>
							</tr>
							<tr>
								<td class="unifont2" align="center">
									Email prefix:
								</td>
								<td class="nsinputs" align="center">
									<input type="text" class="nsinputs" name="EMAIL_PREFIX" value="">
								</td>
								<td class="unifont2" align="center">
									@
								</td>
								<td class="nsinputs" align="center">
									<select id="email_domain" name="EMAIL_DOMAIN">
										<option value="" selected>Select One</option>
										<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
											<option<TMPL_IF NAME='EMAIL_DOMAIN_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
										</TMPL_LOOP>
									</select>
								</td>
							</tr>
							<tr>
								<td class="unifont2" align="center">
									Confirm Email prefix:
								</td>
								<td class="nsinputs" align="center">
									<input onpaste="block_paste(this);" class="nsinputs" TYPE="text" name="EMAIL_PREFIX_CONF" value="">
								</td>
								<td class="unifont2" align="center">
									@
								</td>
								<td class="nsinputs" align="center">
									<select id="email_domain" name="EMAIL_DOMAIN_CONF">
										<option value="" selected>Select One</option>
										<TMPL_LOOP NAME="EMAIL_DOMAIN_LIST">
											<option<TMPL_IF NAME='EMAIL_DOMAIN_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option>
										</TMPL_LOOP>
									</select>
								</td>
							</tr>
						</table>
						<br>
						<table class="buttons" width="50%" align="center">
							<tr>
								<td align="right" width="25%"><input type="button" onclick="email_domain_update(1)" value="   Update   "></td>
								<td align="left" width="25%"><TMPL_UNLESS NAME="EMAIL_NO_PASS"><input type="button" onclick="email_domain_update()" value="   Skip   "></TMPL_UNLESS></td>
							</tr>
							<tr>
								<td align="center" colspan="2"><input type="hidden" name="CONFIRMED" value=""></td>
							</tr>
						</table>
					</form>

				</td>
			</tr>
			<tr>
				<td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			</tr>
		</table>
    </td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td width="880" class="myaccountborder"><img alt="" height="12" width="880" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>

<span class="smallfont1">&nbsp;<br></span>

</div>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
</body>
</html>
<!-- end show_email_domain_select.tpl -->
