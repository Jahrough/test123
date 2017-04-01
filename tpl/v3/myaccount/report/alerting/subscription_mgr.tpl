<!-- begin:  $RCSfile: subscription_mgr.tpl,v $ -->
<table style="width:100%;">
  <tr>
    <td align="middle">
    <table border="0" cellpadding="0" cellspacing="0" height="28">
      <tr>
        <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
        <TMPL_IF NAME="SUBSCRIBERS_LOOP">
        <td valign="middle" align="right" class="unifont1"><b><label for="sub_fltr">Owner:</label></b>&nbsp;&nbsp;</td>
	<td valign="middle" align="right">
	<SELECT id="sub_fltr" NAME="SUBSCRIBER_FILTER">
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
        <td valign="middle">
            <TMPL_IF NAME=PREV_ON>
                <a class="btn darkgrey-btn" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR_PREV')">
                    &lt; Back
                </a>
            <TMPL_ELSE>
                <a class="btn darkgrey-btn disabled" href="javascript:void(0);">
                    &lt; Back
                </a>
            </TMPL_IF>
        </td>
        <td valign="middle">
            <a class="btn red-btn mgl6" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR');">
                Refresh
            </a>
        </td>
        <td valign="middle">
            <TMPL_IF NAME=NEXT_ON>
                <a class="btn darkgrey-btn mgl6" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR_NEXT')">
                    Next &gt;
                </a>
            <TMPL_ELSE>
                <a class="btn darkgrey-btn disabled mgl6" href="javascript:send_event('ALERT/SHOW_ALERTS_MGR_NEXT')">
                    Next &gt;
                </a>
            </TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<script>
    $j(function(){
        var tbl = $j('table.sortable');
        var hdr = tbl.children('tbody').children('tr.alert_mgr_header');
        var thd_html = '<thead><tr>'+hdr.html()+'</tr></thead>';
        tbl.children('tbody').before(thd_html);
        hdr.remove();
        
        tbl.removeClass('sortable').addClass('display');
        tbl.DataTable({
              paging: false,
              searching: true,
              info: false
        });
        tbl.css('width','100%');

        tbl.children('thead').children('tr').children('td').css('white-space','nowrap');
        tbl.children('thead').children('tr').children('td').each(function(){
            var html = $j(this).html();
            $j(this).html($j.trim(html.replace(/(&nbsp;)/g,' ')));
        });
        $j('.searchresultslink').addClass('myaccLnk bold');
    });

</script>
<noscript>Your browser does not support JavaScript!</noscript>
<table style="width:100%;">
    <tr>
        <td id="subscription_mgr_table_con" style="text-align: center;padding-left:0;">
            <TMPL_IF NAME="SUBSCRIPTIONS">
                <TMPL_VAR NAME="SUBSCRIPTIONS">
                <br />
                <a class="btn darkgrey-btn" href="javascript:delete_alerts()">
                    Delete Selected Alert(s)
                </a>
                <br />
                <br />
            <TMPL_ELSE>
                <TMPL_UNLESS NAME="MYACCOUNT_ORDER_MGR_ALERTING_DETAIL">
                    <table style="width:100%;" class="display-not-dataTable noData" id="order_list">
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
