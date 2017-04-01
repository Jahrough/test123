<!-- begin:  $RCSfile: deconfliction_edit.tpl,v $ -->
<table border="0" cellpadding="10" cellspacing="0" width="856" class="myaccountbody">
<tr>
  <td>
    <div class="alert_detail">
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR NAME=DOL_DATE>"/>
      <input type="hidden" name="SUBSCRIBER_ID" value="<TMPL_VAR NAME=SUBSCRIBER_ID>"/>
      <input type="hidden" name="DCONFLCT_ID" value="<TMPL_VAR NAME=DCONFLCT_ID>"/>
<TMPL_INCLUDE NAME="case_connect/enroll_edit_block.tpl">
      <div class="field" align="right">
        <a href="javascript:if(validate_emails()){send_event('CC/ENROLL_UPDT');}"><img width="81" height="24" border="0" src="<TMPL_VAR IMGPATH>/save_alert.gif"></a>
      </div>
    </div>
  </td>
</tr>
</table>
<!-- end:  $RCSfile: deconfliction_edit.tpl,v $ -->
