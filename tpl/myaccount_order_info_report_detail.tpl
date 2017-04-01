<!-- begin myaccount_order_info_report_detail.tpl -->
<html>

<head>
  <title>Accurint Report Manager Detail</title>
  <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
  <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onLoad="set_window_focus();setInterval('checkparent()',2000);reset_parent_target();">

<TMPL_UNLESS ENABLE_V2>
<table border="0" cellpadding="0" cellspacing="0" class="headerarea" width="100%">
  <tr>
    <td class="smallfont1" nowrap><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" widtd="266" height="43" border="0"></td>
  </tr>
  <tr>
    <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img border="0" height="10" widtd="1" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>

</TMPL_UNLESS>

<table border="0" cellpadding="10" cellspacing="0" width="740" <TMPL_IF ENABLE_V2>class="myaccountborder"</TMPL_IF>>

<TMPL_UNLESS ENABLE_V2>
  <tr>
    <td width="740" align="center" class="myaccounttitle">Report Manager Detail</td>
  </tr>
<TMPL_ELSE>
  <tr>
    <td nowrap align="center" valign="middle" class="myaccountborder">
    <table width="856" cellpadding="5" cellspacing="0" border="0">
      <tr height="12">
        <td height="12" width="856" colspan="2" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table width="856" cellpadding="5" cellspacing="0" border="0" class="myaccountbody">
      <tr height="40">
        <td width="480" align="right" class="myaccounttitle">Report Manager Detail</td>
        <td width="280" align="right"><img alt="" border="0" height="1" width="280" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"><br><a href="javascript:parent.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" width="54" height="29" border="0"></a></td>
      </tr>
      <tr height="12" class="myaccountborder">
        <td height="12" colspan="2" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
</TMPL_UNLESS>
  <tr>
    <td width="740">
    <table border="1" cellpadding="1" cellspacing="1" width="370" <TMPL_IF ENABLE_V2>bgcolor="#d0ccd0"</TMPL_IF>>
      <tr bgcolor="#d0ccd0">
        <td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Date Created</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Login ID</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Reference Code</td>
      </tr>
      <tr bgcolor="#ffffff">
        <td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_REPORT_DATE">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_LOGIN_ID">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_REFERENCE_CODE">&nbsp;</td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td width="740">
    <table border="1" cellpadding="1" cellspacing="1" width="740">
      <tr bgcolor="#d0ccd0">
        <td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Last Name</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>First Name</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Middle Name</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Suffix</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Company Name</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>SSN</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Address</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>City</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>State</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Zip</td>
	<td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>DOB</td>
	<TMPL_IF NAME="REP_UNIQUE_ID">
	    <td class="<TMPL_UNLESS ENABLE_V2>reportselectorinfo<TMPL_ELSE>smallfont1</TMPL_UNLESS>" nowrap>Uniqueid</td>
	</TMPL_IF>
      </tr>
      <tr bgcolor="#ffffff">
        <td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_LNAME">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_FNAME">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_MNAME">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_SUFFIX">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_COMPANY">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_SSN">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_ADDRESS">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_CITY">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_STATE">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_ZIP">&nbsp;</td>
	<td class="smallfont1" nowrap><TMPL_VAR NAME="REP_DETAIL_DOB">&nbsp;</td>
	<TMPL_IF NAME="REP_UNIQUE_ID">
	    <td class="smallfont1" nowrap><TMPL_VAR NAME="REP_UNIQUE_ID">&nbsp;</td>
	</TMPL_IF>
      </tr>
    </table>
    </td>
  </tr>
</table>
</body>
</html>
<!-- end myaccount_order_info_report_detail.tpl -->
