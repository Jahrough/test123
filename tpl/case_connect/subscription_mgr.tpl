<!-- begin:  $RCSfile: subscription_mgr.tpl,v $ -->

  <script type="text/javascript">//<![CDATA[

    function filter_by_subscriber(){
      send_event('CC/MANAGER');
    }

    function show_detail(deconflict_id){
      var frm = document.forms[0];
      frm.DCONFLCT_ID.value = deconflict_id;
      send_event('CC/DETAIL');
    }

    function get_notifications(deconflict_id){
//      var frm = document.forms[0];
//      frm.DCONFLCT_ID.value = deconflict_id;
      send_event('CC/NOTES');
    }

    function start_at(next){
      var frm = document.forms[0];
      frm.START_ON.value = next;
      send_event('CC/MANAGER');
    }

    function delete_alerts(){
      if(confirm('You are about to delete the alert(s)')) send_event('CC/DEACTIVATE');
    }

  //]]></script>

<table border="0" cellpadding="10" cellspacing="0" class="myaccountbody" width="856">
  <tr>
    <td align="middle">
    <table border="0" cellpadding="2" cellspacing="0" height="28">
      <tr>
  <TMPL_IF SUBSCRIBER_LOOP>
        <td valign="middle" align="right" class="unifont1"><b>Owner:</b>&nbsp;&nbsp;</td>
        <td valign="middle" align="right">
          <select name="SUBSCRIBER_ID" onchange="filter_by_subscriber()">
    <TMPL_LOOP NAME=SUBSCRIBER_LOOP>
            <option value="<TMPL_VAR SUBSCRIBER_ID>" <TMPL_IF SELECTED>selected="selected" </TMPL_IF>><TMPL_VAR FIRST_NAME> <TMPL_VAR LAST_NAME> <TMPL_VAR SUFFIX> - <TMPL_VAR LOGIN_ID></option>
    </TMPL_LOOP>
          </select>
        </td>
        <td valign="middle" align="right" class="unifont1">&nbsp;&nbsp;</td>
  </TMPL_IF>
        <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td height="40" class="unifont1"><b>Total:</b>&nbsp;</td>
        <td height="40" class="unifont1">
  <TMPL_IF TOTAL_RECORDS><TMPL_VAR TOTAL_RECORDS><TMPL_ELSE>0</TMPL_IF>
        </td>
        <td height="40" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td valign="middle">
  <TMPL_IF START_ON>
          <a href="javascript:start_at(<TMPL_VAR PREV_ON>);"><img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR IMGPATH>/previous_page.gif"></a>
  <TMPL_ELSE>
          <img width="65" height="24" border="0" name="prevadmin" src="<TMPL_VAR IMGPATH>/previous_page_off.gif">
  </TMPL_IF>
        </td>
        <td valign="middle">
          <a href="javascript:send_event('CC/MANAGER');"><img name="refreshadmin" src="<TMPL_VAR IMGPATH>/refresh.gif" border="0" height="24" width="65"></a>
        </td>
        <td valign="middle">
  <TMPL_IF NEXT_ON>
          <a href="javascript:start_at(<TMPL_VAR NEXT_ON>);"><img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR IMGPATH>/next_page.gif"></a>
  <TMPL_ELSE>
          <img width="65" height="24" border="0" name="nextadmin" src="<TMPL_VAR IMGPATH>/next_page_off.gif">
  </TMPL_IF>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
<tr>
  <td align="center">
<TMPL_IF DCONF_LOOP>
    <table class="sortable" id="order_list" bgcolor="#d0ccd0" border="1" cellpadding="2" cellspacing="1" width="800">
        <tr class="alert_mgr_header">
          <td id="non_sortable" class="smallfont1white" align="center" nowrap="nowrap" valign="middle">
            <input name="cc_selected_toggle" id="cc_selected_toggle" title="Select or deselect all deconfliction entries" value="1" type="checkbox"/>
            &nbsp;
          </td>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Alert Type</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Deconfliction</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Subject</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">LexID</th>
          <!-- td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">SSN</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Name</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Address</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">City</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">State</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Zip</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Related Transaction</th -->
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Date Created</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Date Updated</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Status</th>
          <td class="smallfont1white" align="left" nowrap="nowrap" valign="middle">Notifications</th>
        </tr>
  <TMPL_LOOP DCONF_LOOP>
        <!-- Record#: <TMPL_VAR _INDEX> -->
        <tr bgcolor="#ffffff">
          <td class="nsresults">
            <input type="checkbox" name="cc_selected" error_message="Please select at least one deconfliction option"
             id="cc_<TMPL_VAR DCONFLCT_ID>" value="<TMPL_VAR DCONFLCT_ID>"/>
          </td>
          <td class="nsresults"><TMPL_VAR TYPE_DISPLAY></td>
          <td class="nsresults"><a href="javascript:show_detail(<TMPL_VAR DCONFLCT_ID>);"><TMPL_VAR DCONFLCT_ID> - <TMPL_VAR DCONFLCT_NAME></a></td>
          <td class="nsresults"><TMPL_VAR SUBJECT>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR UNIQUEID>&nbsp;</td>
          <!-- td class="nsresults"><TMPL_VAR SSN>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR FIRST_NAME> <TMPL_VAR MIDDLE_NAME> <TMPL_VAR LAST_NAME><TMPL_IF SUFFIX>, <TMPL_VAR SUFFIX></TMPL_IF>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR STREET_NUM> <TMPL_VAR PRE_DIR> <TMPL_VAR STREET_NAME> <TMPL_VAR STREET_SUFFIX> <TMPL_VAR POST_DIR><TMPL_IF
            UNIT_NUM>, </TMPL_IF><TMPL_IF UNIT_DESIG><TMPL_VAR UNIT_DESIG><TMPL_ELSE>#</TMPL_IF>
             <TMPL_VAR UNIT_NUM>&nbsp;
          </td>
          <td class="nsresults"><TMPL_VAR CITY>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR STATE>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR ZIP>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR MONTH>, <TMPL_VAR DAY>/<TMPL_VAR YEAR>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR PHONE>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR REL_TRANSACT_ID>&nbsp;</td!-->
          <td class="nsresults">
            <TMPL_IF ADD_DAY><TMPL_VAR ADD_MONTH>/<TMPL_VAR ADD_DAY>/<TMPL_VAR ADD_YEAR><TMPL_ELSE>&nbsp;</TMPL_IF>
          </td>
          <td class="nsresults">
            <TMPL_IF CHG_DAY><TMPL_VAR CHG_MONTH>/<TMPL_VAR CHG_DAY>/<TMPL_VAR CHG_YEAR><TMPL_ELSE>&nbsp;</TMPL_IF>
          </td>
          <td class="nsresults"><TMPL_VAR STATUS>&nbsp;</td>
          <td class="nsresults"><TMPL_VAR NOTE_COUNT>&nbsp;</td>
        </tr>
  </TMPL_LOOP>
      </table>
      <br />
      <a href="javascript:delete_alerts();"><img border="0" src="<TMPL_VAR IMGPATH>/delete_selected_alerts.gif"></a>
      <br />
      <br />
<TMPL_ELSE>
  <table border="1" cellpadding="0" cellspacing="1" width="856" bgcolor="#d0ccd0" class="sortable" id="order_list">
      <tr>
        <td class="unifont1" id="non_sortable_no_reports" align="center" colspan="8" height="50">
          <strong>There are no saved alerts.</strong>
        </td>
      </tr>
  </table>
</TMPL_IF>
    </td>
    </tr>
</table>

<input type="hidden" name="DCONFLCT_ID" value="<TMPL_VAR DCONFLCT_ID>"/>
<input type="hidden" name="START_ON"  value="<TMPL_VAR START_ON>"/>
<input type="hidden" name="TOTAL_RECORDS" value="<TMPL_VAR TOTAL_RECORDS>"/>
<!-- end:  $RCSfile: subscription_mgr.tpl,v $ -->
