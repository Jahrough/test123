<!-- Start standalone_actions.tpl : selection box for standalone actions and reports -->
<script>
function setupEvent(value)
{
  var evt;
  if (value == 'BATCH_DASH') {
    evt = 'MYACCOUNT/SHOW_PRE_BATCH_REPORTING_DASHBOARD';
    document.forms[0].action = document.forms[0].ACTION_BATCH.value;
  }
  else if (value == 'PRE_CDM') {
    evt = 'CDM/SHOW_CDM';
    document.forms[0].action = document.forms[0].ACTION_MAIN.value;
  }
  send_event(evt);
}
</script>
<table border="0" cellpadding="0" cellspacing="0" align="right">
  <tr>
  <td align="right" class="unifont1"><b>Other Reports:&nbsp;&nbsp;</b></td>
  <td align="right" class="unifont1">
    <select class="unifont1" name="NEW_ACTION" onChange="setupEvent(document.forms[0].NEW_ACTION.value);">
      <option value="" selected>Select Report</option>
      <TMPL_IF NAME="SHOW_BATCH_DASH_OPTION">
        <option value="BATCH_DASH">Batch Reporting Dashboard</option>
      </TMPL_IF>
      <TMPL_IF NAME="SHOW_CDM_OPTION">
        <option value="PRE_CDM">Core Data Management</option>
      </TMPL_IF>
    </select >
  </td>
  </tr>
  <td colspan="2"><br /></td>
</table>
<!-- End standalone_actions.tpl -->
