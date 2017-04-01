<!-- begin myaccount_verify_password.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>My Account</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>

    <script type="text/javascript">
      var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
      var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
    </script>

	<TMPL_IF NAME="ENABLE_V2">
		<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurintMyAccount.css" rel="stylesheet" type="text/css">
		<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
		<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		<TMPL_IF GOV>
			<TMPL_IF LE_CLIENT>
			   #hd{
				   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/gov/logo_client.png) no-repeat;
				   padding-right:15px;
				   height:75px;
			   }
			</TMPL_IF>
		</TMPL_IF>
		<TMPL_IF LE>
			<TMPL_IF LE_CLIENT>
			   #hd{
				   background:url(<TMPL_VAR NAME='IMGPATH'>/v2/le/logo_client.png) no-repeat;
				   padding-right:15px;
				   height:75px;
			   }
			</TMPL_IF>
		</TMPL_IF>
		</style>
	</TMPL_IF>
  </head>

  <body onload="<TMPL_IF NAME="ERROR_MESSAGE">alert('<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF>setup_page(); if (window.opener) {<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>setInterval('checkparent()',2000);</TMPL_UNLESS>}" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" <TMPL_UNLESS ENABLE_V2> class="alternatebody"</TMPL_UNLESS>>

<TMPL_IF NAME="ENABLE_V2">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <BR>
</TMPL_IF>

    <div align="center" style="padding: 20px;">

      <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
        <tr>
          <td align="center" valign="top">
            <table border="0" cellpadding="0" cellspacing="0" width="856">
              <tr height="12">
                <td height="12" width="856" class="unifont1">&nbsp;</td>
              </tr>
            </table>
            <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
              <tr>
                <td align="center" class="myaccounttitle"><br>Verify Password</td>
              </tr>
              <tr height="40">
                <td class="myaccountlabel" align="center">
		  <table width=400>
		  <tr><td>
		  <br>
		  <TMPL_IF ENABLE_LOGIN_TOKEN>
		    To ensure the security of your account you are required to
		    enter the following before you view the MyAccount section:
		    <ul>
		      <li> Your Password
		      <li> Verification characters 
		    </ul>
		  <TMPL_ELSE>
		    To ensure the security of your account you are required to
		    enter your password before you view the MyAccount section:
		  </TMPL_IF>
		  </td></tr>
		  </table>
                </td>
              </tr>

<!--
              <tr height="30">
                <td align="center" class="errormessage">
                  <TMPL_IF NAME="ERROR_MESSAGE">
                    <TMPL_VAR NAME="ERROR_MESSAGE">
                  </TMPL_IF>
                  &nbsp;
                </td>
              </tr>
-->
              <tr>
                <td align="center">
                  <form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="return prepared_pwd();">
                    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                    <input type="hidden" name="MYACCOUNT_AUTH" value="1">
                    <input type="hidden" name="BASEP" value="1">
                    <input type="hidden" name="EVENT" value="LOGIN/DO_VERIFY_PASSWORD_MYACCOUNT">
                    <input type="hidden" name="EVENT_CONTINUE" value="<TMPL_VAR NAME='EVENT_CONTINUE'>">
                    <TMPL_IF NAME="DD_DETAIL_SUBSCRIPTION_ID">
                        <input type="hidden" name="SUBSCRIPTION_ID" value="<TMPL_VAR NAME="DD_DETAIL_SUBSCRIPTION_ID">">
                    </TMPL_IF>
                    <TMPL_IF NAME="DCONFLCT_ID">
                        <input type="hidden" name="DCONFLCT_ID" value="<TMPL_VAR NAME="DCONFLCT_ID">">
                    </TMPL_IF>
                    <table border="0" cellpadding="2" cellspacing="0" width="360">
                      <tr>
                        <td class="unifont1" align="right" width="160"><b>Login ID:</b></TD>
                        <td class="unifont1" align="left" width="200">&nbsp;<TMPL_VAR NAME='LOGINID'></td>
                      </tr>
                      <tr>
                        <td class="unifont1" align="right" width="160"><b>Password:</b></TD>
                        <td align="left" width="200">&nbsp;<INPUT TYPE="password" NAME="PASSWORD" SIZE="24" VALUE="" autocomplete="off" tabindex="1"></td>
                      </tr>
		      <TMPL_IF ENABLE_LOGIN_HASHING>
		        <input type="hidden" name="_K" value="<TMPL_VAR NAME=_K>">
		        <input type="hidden" name="_SK" value="<TMPL_VAR NAME=_SK>">
		      </TMPL_IF>
		      <TMPL_IF ENABLE_LOGIN_TOKEN>
		        <input type="hidden" name="_ST" value="">
                        <tr>
		          <td class="unifont2" align="right" nowrap><b>Verification:</b></td>
		          <td align="left" width="200">&nbsp;<IMG name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:"></td>
		        </tr>
		        <tr>
		        </tr>
		        <tr>
		          <td class="unifont2" align="right"><b>Enter the <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html');">verification</a> characters:</b></td>
		          <td align="left" width="200">&nbsp;<input type="text" name="_T" size="24" autocomplete="off" tabindex="2"></td>
		        </tr>
		      </TMPL_IF>

                      <tr height="80">
                        <td align="right" valign="bottom">
	                  <input type="image" name="CONTINUE" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0" tabindex="3">
                        </td>
                        <td align="center" valign="bottom">
                        <TMPL_IF NAME="MOBILE_ONLY_USER">
	                        <a href="javascript:send_event('MYACCOUNT/SHOW_ORDER_MGR');"><img src="<TMPL_VAR NAME=IMGPATH>/cancel.gif" border="0" tabindex="4"></a>
                        <TMPL_ELSE>
	                  <a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/cancel.gif" border="0" tabindex="4"></a>
	                    </TMPL_IF>
                        </td>
                      </tr>
                    </table>
                    <br><br><br>
                  </form>
                </td>
              </tr>
            </table>

          </td>
        </tr>
      </table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>
    
    </div>

<TMPL_INCLUDE NAME="classic_footer.tpl">

</body>
</html>
<!-- end myaccount_verify_password.tpl -->
