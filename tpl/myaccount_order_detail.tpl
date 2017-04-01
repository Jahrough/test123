<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My Account -- Court Search Order Detail</title>
    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
  </head>

  <body onload="set_window_focus();setInterval('checkparent()',2000);reset_parent_target();" class="alternatebody">

    <p>

    <form name="MYACCOUNT_ORDER_MGR" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="EVENT">
    <TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
      <table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
	  <tr>
	    <td nowrap align="center" valign="middle" class="myaccountborder">
	    <table width="856" cellpadding="5" cellspacing="0" border="0">
	      <tr height="12">
	        <td height="12" width="856" colspan="2" class="unifont1">&nbsp;</td>
	      </tr>
	    </table>
	    <table width="856" cellpadding="5" cellspacing="0" border="0" class="myaccountbody">
	      <tr height="40">
	        <td width="480" align="right" class="myaccounttitle">Court Search Order Detail</td>
		<td width="280" align="right"><img alt="" border="0" height="1" width="280" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"><br><a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a></td>
	      </tr>
	      <tr height="12" class="myaccountborder">
	        <td height="12" colspan="2" class="unifont1">&nbsp;</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr>
	    <td align="center" class="myaccountborder">
	      <table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0">

		  <TMPL_INCLUDE NAME="myaccount_order_info.tpl">

	      </table>
	    </td>
	  </tr>

    </table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

</TMPL_IF>

    </form>
  </body>
</html>
