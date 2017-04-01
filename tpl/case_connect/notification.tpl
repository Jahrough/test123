<!-- begin:  $RCSfile: notification.tpl,v $ -->
  <table class="sortable" id="order_list" bgcolor="#d0ccd0" border="1" cellpadding="2" cellspacing="1" width="750">
    <tr class="alert_mgr_header">
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">ID</th>
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">Match Criteria</th>
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">Match Level</th>
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">Date Created</th>
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">Date Updated</th>
      <td class="smallfont1" align="left" nowrap="nowrap" valign="middle">Date Connected</th>
      <td  id="non_sortable" class="smallfont1" align="left" nowrap="nowrap" valign="middle">Actions</th>
    </tr>
<TMPL_LOOP NOTIFICATION_LOOP>
    <tr>
      <td class="nsresults"><TMPL_VAR NOTIFICATION_ID></td>
      <td class="nsresults">
        <ul>
  <TMPL_LOOP TYPE_LOOP>
          <li><TMPL_VAR MATCH_TYPE></li>
  </TMPL_LOOP>
        </ul>
      </td>
      <td class="nsresults">
        <TMPL_VAR MATCH_LEVEL>
      </td>
      <td class="nsresults">
  <TMPL_IF ADD_DAY>
        <TMPL_VAR ADD_MONTH>/<TMPL_VAR ADD_DAY>/<TMPL_VAR ADD_YEAR>
  <TMPL_ELSE>
        &nbsp;
  </TMPL_IF>
      </td>
      <td class="nsresults">
  <TMPL_IF CHG_DAY>
        <TMPL_VAR CHG_MONTH>/<TMPL_VAR CHG_DAY>/<TMPL_VAR CHG_YEAR>
  <TMPL_ELSE>
        &nbsp;
  </TMPL_IF>
      </td>
      <td class="nsresults">
  <TMPL_IF FROM_QUERY>
    <TMPL_IF QRY_DAY>
        <TMPL_VAR QRY_MONTH>/<TMPL_VAR QRY_DAY>/<TMPL_VAR QRY_YEAR>
    <TMPL_ELSE>
        &nbsp;
    </TMPL_IF>
  <TMPL_ELSE>
    <TMPL_IF NRL_DAY>
        <TMPL_VAR NRL_MONTH>/<TMPL_VAR NRL_DAY>/<TMPL_VAR NRL_YEAR>
    <TMPL_ELSE>
        &nbsp;
    </TMPL_IF>
  </TMPL_IF>
      </td>
      <td class="nsresults" nowrap="nowrap">
  <TMPL_IF IGNORED>
        <span>The other party did not agree to connect on this<br/>
        Alert in order to display their contact information.</span>
        &nbsp; &nbsp; <input name="IGNORE" value="Ignore Alert" type="button"
        onclick="show_next('CC/IGNORE',<TMPL_VAR NOTIFICATION_ID>,'<TMPL_VAR ENROLL_STATUS>',
        '<TMPL_VAR QUERY_STATUS>',<TMPL_VAR ENROLL_ID>,<TMPL_VAR QUERY_ID>)"/>
  <TMPL_ELSE>
    <TMPL_IF CONNECTED>
        <input name="OTHER" value="Show Other" type="button"
        onclick="show_next('CC/SHOW_CONNECT',<TMPL_VAR NOTIFICATION_ID>,'<TMPL_VAR ENROLL_STATUS>',
        '<TMPL_VAR QUERY_STATUS>',<TMPL_VAR ENROLL_ID>,<TMPL_VAR QUERY_ID>, '<TMPL_VAR PARENT_COMPANY>');"/>
    <TMPL_ELSE>
      <TMPL_IF REQUESTED>
        <span>You have requested to connect with this User.<br/>
        Please wait for the other party to agree to the connection.</span>
      <TMPL_ELSE>
        <input name="CONNECT" value="Connect me" type="button"
        onclick="show_next('CC/CONNECT',<TMPL_VAR NOTIFICATION_ID>,'<TMPL_VAR ENROLL_STATUS>',
        '<TMPL_VAR QUERY_STATUS>',<TMPL_VAR ENROLL_ID>,<TMPL_VAR QUERY_ID>, '<TMPL_VAR PARENT_COMPANY>')"/>
        &nbsp; &nbsp;
      </TMPL_IF>
        &nbsp; &nbsp; <input name="IGNORE" value="Ignore Alert" type="button"
        onclick="show_next('CC/IGNORE',<TMPL_VAR NOTIFICATION_ID>,'<TMPL_VAR ENROLL_STATUS>',
        '<TMPL_VAR QUERY_STATUS>',<TMPL_VAR ENROLL_ID>,<TMPL_VAR QUERY_ID>, '<TMPL_VAR PARENT_COMPANY>')"/>
    </TMPL_IF>
  </TMPL_IF>
      </td>
    </tr>
</TMPL_LOOP>
</table>
<!-- end:  $RCSfile: notification.tpl,v $ -->
