<TMPL_INCLUDE NAME="msg_top.tpl">

<font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Thursday, May 27, 2010</b></font>

<TMPL_INCLUDE NAME="msg_body.tpl">
<br>
<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td width="16"></td>
    <td>
    <font face="verdana"><b>Important Notice:</b></font>
    <font face="verdana" size="-1">
    <br><br>
    The appearance of our Login Page will soon be updated with a fresh new look.  We will be changing from "Account Login" to "Sign On" and the appearance of the page will be enhanced with a clean, easy to use interface.  The functionality of the Sign On page will remain the same.  Please take a moment to review the screenshot below to become familiar with the new look.
    <br><br>
    <TMPL_IF XBPS>
    <center><img src="<TMPL_VAR NAME=IMGPATH>/new_login_screenshot_xbps.png" border="2" height="365" width="808"></center>
    <TMPL_ELSE>
    <center><img src="<TMPL_VAR NAME=IMGPATH>/new_login_screenshot.png" border="2" height="365" width="808"></center>
    </TMPL_IF>
    <br><br>
    At <TMPL_IF XBPS>Risk Investigations<TMPL_ELSE>LexisNexis</TMPL_IF>, we appreciate your continued business. If you have questions, please contact Customer Support at <b>866.277.8407.</b>
    <br><br><br>
    </font>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="msg_bottom.tpl">

