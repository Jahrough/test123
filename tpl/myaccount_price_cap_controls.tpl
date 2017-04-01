<!-- begin myaccount_price_cap_controls.tpl -->
<script>
function refresh_page() {
    send_event('MYACCOUNT/SHOW_PRICE_CAP_CONTROLS');
}
function set_allow_over () { 

   document.MYACCOUNT.ALLOW_OVER_CHECKED.value = 1;
   send_event('MYACCOUNT/UPDATE_PRICE_CAP_USAGE');

}
</script>

<body>

<form name="MYACCOUNT" action="<TMPL_VAR NAME=ACTION>" method="post">
<input type=hidden name="ALLOW_OVER_CHECKED" value=0>
<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td nowrap align="center" valign="middle" class="myaccountborder">
      <table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
        <tr height="40">
          <td width="5%" align="center" class="unifont1">&nbsp;</td>
          <td width="95%" align="center" class="myaccounttitle">Company Price Cap Usage</td>

<td> <a href="javascript:set_allow_over();"><img border="0" width="70" height="30" src="<TMPL_VAR NAME=IMGPATH>/update_generic.gif" alt="Update Usage"></a>&nbsp;</td>

       </tr>
      <TMPL_IF NAME="ALERT_MSG">
      <tr>
        <td width="5%" align="center" class="unifont1">&nbsp;</td>
        <td width="95%" align="center" class="myaccounttitle"><TMPL_VAR NAME="ALERT_MSG"><br><br></td>
      </tr>
      </TMPL_IF>

      </table>

      <table width="856" cellpadding="0" cellspacing="0" border="1" class="myaccountbody">
	      <tr height="20" bgcolor="#d0ccd0">
	        <td class="unifont1bold" nowrap align="left" valign="middle">&nbsp; <b>Function Name</b></td>
  	      <td class="unifont1bold" nowrap align="center" valign="middle"><b>Transaction<br />Cap</b></td>
	        <td class="unifont1bold" nowrap align="center" valign="middle"><b>Transaction<br />Count</b></td>
	        <td class="unifont1bold" nowrap align="center" valign="middle"><b>Remaining<br />Count</b></td>
	        <td class="unifont1bold" nowrap align="center" valign="middle"><b>Allow Over<br />Count</b></td>
	        <td class="unifont1bold" nowrap align="center" valign="middle"><b>Status</b>&nbsp; </td>
	      </tr>

        <TMPL_LOOP NAME="REPORT_DATA">
	        <tr height="15">
            <td class="unifont1bold" nowrap align="left" valign="middle">&nbsp; <TMPL_VAR NAME="description"></td>
            <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="transaction_cap"></td>
            <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="transaction_count"></td>
            <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="remaining_count"></td>
            <td class="smallfont1" nowrap align="center" valign="middle">
            <TMPL_IF NAME="DISPLAY_ALLOW">
              <INPUT TYPE=HIDDEN NAME="ORIG_ALLOW_OVER_CAP_<TMPL_VAR NAME=description>" VALUE="<TMPL_VAR NAME=ORIG_ALLOW_OVER_CAP>">
              <INPUT TYPE=HIDDEN NAME="STATUS_<TMPL_VAR NAME=description>" VALUE="<TMPL_VAR NAME=STATUS>">
              <INPUT TYPE=HIDDEN NAME="CAP_COUNT_<TMPL_VAR NAME=description>" VALUE="<TMPL_VAR NAME=TRANSACTION_CAP>">
              <INPUT TYPE=HIDDEN NAME="DESCRIPTION" VALUE="<TMPL_VAR NAME=description>">
              <INPUT TYPE=RADIO NAME="ALLOW_OVER_RADIO_BUTTON_<TMPL_VAR NAME=description>" VALUE="YES" <TMPL_IF NAME=ALLOW_OVER_Y>CHECKED</TMPL_IF>>Yes&nbsp;&nbsp;<INPUT TYPE=RADIO NAME='ALLOW_OVER_RADIO_BUTTON_<TMPL_VAR NAME=description>' VALUE='NO' <TMPL_UNLESS NAME=ALLOW_OVER_Y>CHECKED</TMPL_UNLESS>>No
            </TMPL_IF>
            </td>
            <td class="smallfont1" nowrap align="center" valign="middle"><TMPL_VAR NAME="status">&nbsp; </td>

          </tr>
        </TMPL_LOOP>
      </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>
</form>
</body>

<!-- end myaccount_price_cap_controls.tpl -->
