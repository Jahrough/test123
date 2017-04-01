<!-- Begin billing_download.tpl -->
<html>
<head>
<title>Billing -- Statement Download Options</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/waitmesg.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script LANGUAGE="JavaScript">
function download()
{
    var this_form = document.BILLING_STATEMENT;
    this_form.EVENT.value = 'BILLING/DOWNLOAD';
    this_form.submit();
}
function set_download_dates()
{
    var this_form = document.BILLING_STATEMENT;
    var begin_day = this_form.BILLING_DAY_START.value;
    var end_day = this_form.BILLING_DAY_END.value;
    var bill_month = this_form.BILLING_MONTH.value;
    var bill_year = this_form.BILLING_YEAR.value;
    this_form.BILLING_DATE_FROM.value = bill_month + '/' + begin_day + '/' + bill_year;
    this_form.BILLING_DATE_TO.value = bill_month + '/' + end_day + '/' + bill_year;
}
</script>

</head>
<body ONLOAD="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">
<form name="BILLING_STATEMENT" action="<TMPL_VAR NAME=downloadexec>" method="post">

      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT">
      <INPUT type=hidden NAME="RECID" VALUE="<TMPL_VAR NAME="RECID">">
      <INPUT type=hidden NAME="NAME" VALUE="<TMPL_VAR NAME="NAME">">
      <INPUT type=hidden NAME="BILLING_DATE_FROM" VALUE="<TMPL_VAR NAME='BILLING_DATE_FROM' ESCAPE='HTML'>">
      <INPUT type=hidden NAME="BILLING_DATE_TO" VALUE="<TMPL_VAR NAME='BILLING_DATE_TO' ESCAPE='HTML'>">
<center>

<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="10" border="0" width="1"><br>

<table border="1" cellpadding="0" cellspacing="0" width="400" class="myaccountbody">
  <tr>
    <td>
    <div align="left">
	<table border="0" cellpadding="0" cellspacing="2">
      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="2" border="0"></td>
      </tr>

      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
        <td valign="top" align="left" class="myaccountlabel">Company Name<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="35" height="1" border="0"></td>
		<td valign="top" align="left" class="myaccountlabel">Billing Period:<img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
      </tr>

      <tr>
		<td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
		<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="COMPANYNAME"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="35" height="1" border="0"></td>
		<td valign="top" align="left" class="smallfont1"><TMPL_VAR NAME="BILLING_DATE_FROM" ESCAPE='HTML'>&nbsp;-&nbsp;<TMPL_VAR NAME="BILLING_DATE_TO" ESCAPE='HTML'><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="15" height="1" border="0"></td>
      </tr>

      <tr>
        <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="2" border="0"></td>
      </tr>

    </table>
    </div>
    </td>
  </tr>
  <tr>
    <td>

<table border="0" cellpadding="0" cellspacing="0" width="400" class="myaccountbody">

  <tr>
    <td align="center" class="myaccounttitle" colspan="2"><br>Billing Statement Download</td>
  </tr>
  <tr>
    <td colspan="2" class="smallfont1">&nbsp;</td>
  </tr>
  <TMPL_IF NAME="SHOW_LIST">
  <tr>
    <td class="myaccountlabel">&nbsp;Company:</td>
    <td class="myaccountlabel">&nbsp;
		<SELECT NAME=BILLING_COMPANY_ID onChange="send_event('BILLING/SHOW_DOWNLOAD');">
		<TMPL_LOOP NAME="COMPANIES">
		<OPTION VALUE="<TMPL_VAR NAME="CompanyId">" <TMPL_IF NAME="SELECTED">SELECTED</TMPL_IF>><TMPL_VAR NAME="CompanyName"></OPTION>
		</TMPL_LOOP>
		</SELECT>
     </td>
  </tr>
  </TMPL_IF>
  <tr>
    <td class="myaccountlabel">&nbsp;Subtotal By:</td>
    <td class="myaccountlabel">&nbsp;

		<SELECT NAME=BILLING_GROUPING_FILTER >
		<OPTION VALUE="BILLING_CODE" <TMPL_IF NAME="BILLING_CODE_SELECT">SELECTED</TMPL_IF>>Login ID</OPTION>
		<OPTION VALUE="REFERENCE_CODE" <TMPL_IF NAME="REF_SELECT">SELECTED</TMPL_IF>>Reference Code</OPTION>
		<OPTION VALUE="TRANSACTION_TYPE" <TMPL_IF NAME="ACTIVITY_SELECT">SELECTED</TMPL_IF>>Activity</OPTION>
		</SELECT>
     </td>
  </tr>

  <tr>
    <td class="myaccountlabel">&nbsp;User:</td>
    <td class="myaccountlabel">&nbsp;
                <SELECT NAME=BILLING_LOGIN_FILTER>
				<TMPL_IF NAME=ALLOW_ALL_USERS><OPTION VALUE="__ALL__">ALL USERS</OPTION></TMPL_IF>
                <TMPL_LOOP NAME=USER_SELECT_LOOP>
                <OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
                </TMPL_LOOP>
                </SELECT>

     </td>
    </tr>
  <TMPL_IF NAME="HAS_FCRA_NON_FCRA">
  <tr>
    <td class="myaccountlabel">&nbsp;Activity Type:</td>
    <td class="myaccountlabel">&nbsp;
                <SELECT NAME=GET_FCRA>
                <OPTION VALUE="0" SELECTED>NON-FCRA Activity</OPTION>
                <OPTION VALUE="1" >FCRA Activity</OPTION>
                <OPTION VALUE="2" >FCRA and NON-FCRA Activity</OPTION>
                </SELECT>

     </td>
    </tr>
    </TMPL_IF>
    <tr>
    <td class="myaccountlabel" valign="bottom">&nbsp;Date Range:</td>
    <td class="unifont1" valign="bottom"><BR>
	&nbsp;Day Start: <SELECT NAME="BILLING_DAY_START">
	    <TMPL_LOOP BILLING_FROM_LOOP>
	    <OPTION VALUE="<TMPL_VAR DAY>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DAY></OPTION>
	    </TMPL_LOOP>
	</SELECT>
	&nbsp;&nbsp;&nbsp;Day End: <SELECT NAME="BILLING_DAY_END">
	    <TMPL_LOOP BILLING_TO_LOOP>
	    <OPTION VALUE="<TMPL_VAR DAY>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DAY></OPTION>
	    </TMPL_LOOP>
	</SELECT>
	<INPUT TYPE="HIDDEN" NAME="BILLING_MONTH" VALUE="<TMPL_VAR BILLING_MONTH ESCAPE='HTML'>">
	<INPUT TYPE="HIDDEN" NAME="BILLING_YEAR" VALUE="<TMPL_VAR BILLING_YEAR ESCAPE='HTML'>">
     </td>
    </tr>
    </td>
  </tr>

  <tr>
    <td class="unifont1" valign="top" align="center" colspan="2">
	<IMG src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0">
    </td>
  </tr>

  <tr>
    <td class="unifont1" valign="top" align="center" colspan="2">
	<a href="javascript:set_download_dates();download();"><IMG src="<TMPL_VAR NAME=IMGPATH>/download_billing.gif" width="68" height="26" border="0"></a>&nbsp;&nbsp;
	<a href="javascript:window.close();"><IMG src="<TMPL_VAR NAME=IMGPATH>/close_billing.gif" width="68" height="26" border="0"></a>
    </td>
  </tr>

  <tr>
    <td class="unifont1" valign="top" align="center" colspan="2">
	<IMG src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="10" border="0">
    </td>
  </tr>

  <tr>
    <td class="unifont1" valign="top" align="center" colspan="2">
    <span class="myaccountlabel">Note:</span> To change Time Zone go to preferences.</font>
    </td>
  </tr>

</table>

</td>
</tr>
</table>

</center>
</form>
</body>
</html>
<!-- End billing_download.tpl -->
