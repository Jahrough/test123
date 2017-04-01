<html>
<head>

<title>Welcome</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

</head>
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" text="black" bgcolor="white">

<form name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="CLIENT_TYPE" VALUE="WEB">

<table border="0" cellpadding="0" cellspacing="0" width="760" height="437">
  <tr height="52">
    <td colspan="2" bgcolor="#bcc1a9" valign="top" align="left" height="52">
    <table border="0" cellpadding="0" cellspacing="0" width="744">
      <tr>
        <td width="338"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/annceleft.gif" width="311" height="52" border="0"></td>
        <td width="386" valign="middle" align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="290">
          <tr>
            <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/leftdate.gif" width="8" height="29" border="0"></td>
            <td valign="middle" align="center" width="254">
            <div align="center">
            <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Thursday, October 3, 2002</b></font>
            </div>
            </td>
            <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/rghtdate.gif" width="8" height="29" border="0"></td>
          </tr>
        </table>
        </td>
        <td width="20"></td>
      </tr>
    </table>
    </td>
    <td bgcolor="#444962" width="4" height="52" rowspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer3.gif" width="3" height="3" border="0"></td>
  </tr>
  <tr height="26">
    <td height="26" colspan="2">
    <table border="0" cellpadding="0" cellspacing="0" width="180">
      <tr>
        <td valign="top" align="left"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/bar_1.gif" width="638" height="26" border="0"></td>
        <td valign="top" align="left"><a href="javascript:void 0" onClick="printit();"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/splash_print.gif" width="122" height="26" border="0"></a></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr height="32">
    <td colspan="2" height="32" bgcolor="#e6e6e6" valign="top" align="center">
    <br>
    <div align="center">
<!--<a href="javascript:general_win('<TMPL_VAR NAME='HTMLPATH'>/splashmenu.html','OldSplash',790);void(0);"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/prev_new_features.gif" border="0" height="29" width="176"></a><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="20" height="1" border="0">-->
<TMPL_IF NAME=DA_ONLY>
  <a href="javascript:send_event('SEARCH/SHOW_DA_BASIC')"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/continue_big.gif" width="176" height="29" border="0"></a>
<TMPL_ELSE>
  <a href="javascript:send_event('SEARCH/SHOW_MENU')"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/continue_big.gif" width="176" height="29" border="0"></a>
</TMPL_IF>
    </div>
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="732">
      <tr>
        <td width="720" valign="top" align="middle">
        <table border="0" cellpadding="0" cellspacing="0" width="360" height="297">
          <tr>
            <td colspan="3"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/newfeat.gif" width="333" height="27" border="0"></td>
          </tr>
          <tr height="4">
            <th colspan="3" bgcolor="#444962" height="4" valign="top" align="left"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer13.gif" width="2" height="2" border="0"></th>
          </tr>
          <tr height="261">
            <td width="2" bgcolor="#444962" height="261" valign="top" align="left"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer13.gif" width="2" height="2" border="0"></td>
            <td width="702" height="261" valign="top" align="left" bgcolor="white">
            <TMPL_INCLUDE NAME="new_features.tpl">
            </td>
            <td bgcolor="#b8b8b8" height="261" width="5"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/grayspc.gif" width="5" height="5" border="0"></td>
          </tr>
          <tr height="5">
            <td colspan="3" bgcolor="#b8b8b8" height="5"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/grayspc.gif" width="5" height="5" border="0"></td>
          </tr>
        </table>
        </td>
        <td width="12"></td>
      </tr>
    </table>
    <br><br>
    </td>
  </tr>
  <tr>
    <td colspan="3" bgcolor="#444962"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer3.gif" width="3" height="3" border="0"></td>
  </tr>
</table>
</form>
</body>
</html>
