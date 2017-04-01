<!-- begin:  $RCSfile: subscription_mgr.tpl,v $ -->

<table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="856">
  <thead style="display: none">
    <tr>
      <th aria-label="Alert">&nbsp;</th>
    </tr>
  </thead>

  <tr>
    <td align="middle">
    <table border="0" cellpadding="0" cellspacing="0" height="28">
      <thead style="display: none">
        <tr>
          <th aria-label="Alert">&nbsp;</th>
        </tr>
      </thead>
    
      <tr>
        <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
        <TMPL_IF NAME="SUBSCRIBERS_LOOP">
        <td valign="middle" align="right" class="unifont1"><b>Owner:</b>&nbsp;&nbsp;</td>
	<td valign="middle" align="right">
	<SELECT NAME="SUBSCRIBER_FILTER">
	<TMPL_LOOP NAME=SUBSCRIBERS_LOOP>
	<OPTION VALUE="<TMPL_VAR NAME=SubscriberId>" <TMPL_IF NAME="ApplicationUserId_SELECTED">SELECTED</TMPL_IF>><TMPL_VAR NAME=ApplicationUserId></OPTION>
	</TMPL_LOOP>
	</SELECT>
	</td>
        <td valign="middle" align="right" class="unifont1">&nbsp;&nbsp;</td>
        </TMPL_IF>
        </TMPL_UNLESS>
        <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td height="40" class="unifont1"><b>Total:</b>&nbsp;</td>
        <td height="40" class="unifont1"><TMPL_IF NAME=PAGE_RECORDS><TMPL_VAR NAME=PAGE_RECORDS><TMPL_ELSE>0</TMPL_IF></td>
        <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td valign="middle"><TMPL_IF NAME=PREV_ON><a href="javascript:send_event('ALERT/SHOW_ALERTS_MGR_PREV')"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR NAME=IMGPATH>/previous_page_off.gif"></TMPL_IF></td>
	<td valign="middle"><a href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');"><img name="refreshadmin" src="<TMPL_VARNAME="IMGPATH">/refresh.gif" border="0" height="24" width="65"></a></td>
        <td valign="middle"><TMPL_IF NAME=NEXT_ON><a href="javascript:send_event('ALERT/SHOW_ALERTS_MGR_NEXT')"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page.gif"></a><TMPL_ELSE><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR NAME=IMGPATH>/next_page_off.gif"></TMPL_IF></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <thead style="display: none">
        <tr>
          <th aria-label="Alert">&nbsp;</th>
        </tr>
      </thead>

    <tr>
    <td align="center">
    <TMPL_IF NAME="SUBSCRIPTIONS"> 
	<TMPL_VAR NAME="SUBSCRIPTIONS">
	<br />
	<a href="javascript:delete_alerts()"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/delete_selected_alerts.gif"></a>
	<br />
	<br />
    <TMPL_ELSE>
      <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
	<table class="display-not-dataTable" border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" id="order_list">
      <thead style="display: none">
        <tr>
          <th aria-label="Alert">&nbsp;</th>
        </tr>
      </thead>
  
	    <tr>
	      <td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
		<strong>There are no saved alerts.</strong>
	      </td>
	    </tr>
	</table>
	</TMPL_UNLESS>
    </TMPL_IF>
    </td>
    </tr>
</table>

<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<!-- end:  $RCSfile: subscription_mgr.tpl,v $ -->
