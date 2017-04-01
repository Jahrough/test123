<!-- Begin irb/base_login.tpl -->
<html>
<head>
<title>IRBsearch | Account Login</title>

<script src="<TMPL_VAR NAME='JSPATH'>/login_script.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/md5.js"></script>

<SCRIPT LANGUAGE="JavaScript">
var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
var app_type = '<TMPL_VAR NAME=APPLICATION_TYPE>';
function send_event(evt,url){
    document.forms[0].EVENT.value = evt;
    document.forms[0].action = url;
    document.forms[0].submit();
}

</SCRIPT>

<style>
body 
{background-image: url(<TMPL_VAR NAME=IMGPATH>/irb/login/page_bg.jpg);}
a:link 
{color: #666666; text-decoration: none;}
a:visited 
{text-decoration: none; color: #666666;}
a:hover 
{text-decoration: underline; color: #226092;}
a:active 
{text-decoration: none; color: #226092;}
.bodyCopy 
{font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; font-weight: normal; color: #666666; line-height: 16px;}
.bodyCopyTitle 
{font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-weight: bold; color: #3399cc;}
.bodyCopyTitleRed
{font-family: Arial, Helvetica, sans-serif; font-size: 18px; font-style: normal; font-weight: bold; color: #ed1c24;}
.button 
{font-family: Myriad, Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; border: 1px solid #FFFFFF; color: #FFFFFF; background-color: #3399cc; height: 20px; text-align: center; vertical-align:middle; text-decoration: none; padding: 2px;}
A.button:link 
{font-family: Myriad, Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; border: 4px solid #FFFFFF; color: #FFFFFF; background-color: #3399cc; height: 20px; text-align: center; vertical-align:middle; text-decoration: none; padding: 2px;;}
A.button:active 
{font-family: Myriad, Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; border: 4px solid #FFFFFF; color: #FFFFFF; background-color: #3399cc; height: 20px; text-align: center; vertical-align:middle; text-decoration: none; padding: 2px;}
A.button:visited 
{font-family: Myriad, Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; border: 4px solid #FFFFFF; color: #FFFFFF; background-color: #3399cc; height: 20px; text-align: center; vertical-align:middle; text-decoration: none; padding: 2px;}
A.button:hover 
{font-family: Myriad, Arial, Helvetica, sans-serif; font-size: 11px; font-weight: bold; border: 4px solid #FFFFFF; color: #FFFFFF; background-color: #3399cc; height: 20px; text-align: center; vertical-align:middle; text-decoration: none; padding: 2px;}
.footer 
{font-family: Arial, Helvetica, sans-serif; font-size: 10px; font-style: normal; font-weight: normal; color: #666666;}
.formInput 
{font-family: Arial, Helvetica, sans-serif; font-size: 14px; width: 220px; border: 1px solid #666666; display: block; font-style: normal; font-weight: normal;}
.formInputComment 
{font-family: Arial, Helvetica, sans-serif; font-size: 11px; width: 465px; border: 1px solid #666666; display: block; font-style: normal; font-weight: normal;}
.formInputSmall 
{font-family: Arial, Helvetica, sans-serif; font-size: 11px; width: 140px; border: 1px solid #666666; display: block; font-style: normal; font-weight: normal;}
.formInputFieldset 
{font-family: Arial, Helvetica, sans-serif; font-size: 11px; width: 125px; border: 1px solid #666666; display: block; font-style: normal; font-weight: normal;}
.formTable 
{background-color: #FFFFFF; padding: 8px; border: thin dotted #666666;}
.formTableInset 
{background-color: #DDDEDF; padding: 10px;}
.formTableInfo 
{background-color: #f1f1f1; padding: 10px;}
.formTitle 
{font-family: Arial, Helvetica, sans-serif; font-size: 24px; font-weight: bold; color: #24386b; border-bottom-width: thin; border-bottom-style: dotted;
 border-bottom-color: #ffffff;}
label 
{font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-style: normal; font-weight: normal; color: #666666;}
.topNav 
{font-family: Arial, Helvetica, sans-serif; font-size: 11px; font-style: normal; font-weight: normal; color: #666666;}
ul.bulletCopy
{margin-left:5px;padding-left:12px;}
ul.bulletCopy li
{font-family: Arial, Helvetica, sans-serif; font-size: 12px; font-style: normal; list-style: none; background: url(<TMPL_VAR NAME=IMGPATH>/irb/login/bulletpoint.gif) #FFFFFF no-repeat 0 4px;
 padding-left:23px; line-height: 18px; margin-left:0;}
.formInput1 {font-family: Arial, Helvetica, sans-serif; font-size: 14px; width: 220px; border: 1px solid #666666; display: block; font-style: normal; font-weight: normal;}
</style>
</head>

<body onLoad="<TMPL_IF NAME="ERROR_MESSAGE">alert('<TMPL_VAR NAME=ERROR_MESSAGE>');</TMPL_IF><TMPL_IF SHOW_PWD_PAGE>setup_fields();<TMPL_ELSE>setup_page();</TMPL_IF>">

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post" onSubmit="<TMPL_IF SHOW_PWD_PAGE>return prepared_pwd()<TMPL_ELSE>return prepared();</TMPL_IF>">


      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">
      <INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">
      <INPUT type=hidden NAME="BASE_HREF" VALUE="<TMPL_VAR NAME=BASE_HREF>">
      <TMPL_IF ENABLE_LOGIN_HASHING> <INPUT type=hidden NAME="_K" VALUE="<TMPL_VAR NAME=_K>"></TMPL_IF>

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
          

<table width="958" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/shadow_top.png" width="957" height="3" id="topShadow"></td>
  </tr>
  <tr>
    <td width="950"><table width="950" border="0" cellpadding="0" cellspacing="0" background="<TMPL_VAR NAME=IMGPATH>/irb/login/body_bg.gif">
      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/border_top.gif" width="950" height="5" id="topBorder"></td>
      </tr>
      <tr>
        <td>
        <!-- HEADER START -->
        <table width="918" height="30" border="0" align="center" cellpadding="0" cellspacing="0" class="topNav" id="topNav">
          <tr>
            <td width="548" align="left"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/arrow_client_login.jpg" width="17" height="12" align="absmiddle">&nbsp;<a href="http://www.irbsearch.com" target="_top">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="http://www.irbsearch.com/contact.shtml">Contact</a></td>
            <td width="370" align="right">Call Us Today <strong>800.447.2112</strong> </td>
          </tr>
        </table>
        <!-- HEADER END --></td>
      </tr>
      <tr>
        <td><table width="918" border="0" align="center" cellpadding="0" cellspacing="0" id="tabDivider">
          <tr>
            <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/menu_divider.gif" width="918" height="2"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="918" border="0" align="center" cellpadding="0" cellspacing="0" id="sectionTitle">
          <tr>
            <td><img src="<TMPL_VAR NAME=IMGPATH>/irb/login/section_login.jpg" alt="Account Login" width="918" height="84" border="0" usemap="#Map"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><table width="918" border="0" align="center" cellpadding="0" cellspacing="0" id="sectionBar">
          <tr>
            <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/section_bottom.gif" width="918" height="16"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td valign="top"><table width="918" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr valign="top">
            <td width="184" align="center" id="leftColumn">
              
<table width="165" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
              </table>

            
              </td>
            <td width="549" align="center" id="centerColumn">
            
            
            
<TMPL_IF SHOW_PWD_PAGE>
<TMPL_INCLUDE NAME=irb/base_login_page2.tpl>
<TMPL_ELSE>
<TMPL_INCLUDE NAME=irb/base_login_page1.tpl>
</TMPL_IF>
                     
            
            </td>
            <td width="185" align="right" id="rightColumn">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td align="center">
        <br>
        <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td align="left" class="bodyCopyTitleRed">
	      !! IMPORTANT NOTICE !! New account login process in effect. Please review the process details below.
	    </td>
          </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
          <tr>
            <td align="left" valign="top" class="bodyCopy">
            To ensure the security of your account, we have implemented a new multi-factor login process. The powerful new identification feature goes beyond your login and password to recognize your access footprint, that is, your device (PC, laptop, tablet or phone) plus your browser (Internet Explorer, Chrome, Firefox, etc.) and location (IP address) choices before allowing access.
            <br><br>
            <b>Step 1:</b> You will be asked to enter your <b>User Name</b> and <b>Verification Characters.</b>
            <br><br>
            <b>Step 2:</b> You will be asked to enter your <b>Account Password.</b>
            <br><br>
            <b>Step 3:</b> You will be asked to register for and enter a temporary <b>One-Time Passcode (Activation Code).</b>  Once you enter the activation code, that combination of device, browser, and IP address will be recognized for up to 90 days. During that time, you can access regulated public records data using that combination without entering a code again. Anytime a different device, browser or location is detected, the registration and activation process is triggered, and the registration screens display automatically. Request an activation code, then retrieve and enter it. Fast, easy and very secure.
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>
        <!-- FOOTER START -->
        <table width="918" border="0" align="center" cellpadding="6" cellspacing="0" bgcolor="#DDDEDF" class="footer" id="footer">
          <tr>
            <td align="center">Copyright &copy; 2006 - <script>document.write(new Date().getFullYear());</script> IRBsearch, LLC. All rights reserved. </td>
            </tr>
        </table>
        <!-- FOOTER END --></td>
      </tr>
	  <tr>
        <td align="center"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/clear.gif" width="5" height="10"></td>
      </tr>
      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/border_bottom.gif" width="950" height="5" id="bottomBorder"></td>
      </tr>
    </table></td>
    <td width="8" background="<TMPL_VAR NAME=IMGPATH>/irb/login/shadow_right.png">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/irb/login/shadow_bottom.png" width="958" height="8" id="bottomShadow"></td>
  </tr>
</table>


<map name="Map">
  <area shape="rect" coords="15,9,225,76" href="http://www.irbsearch.com" target="_top" alt="Home">
</map>

</form>

</body>
</html>
<!-- end irb/base_login.tpl -->
