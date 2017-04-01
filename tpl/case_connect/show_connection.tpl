<!-- begin:  $RCSfile: /case_connect/show_connection.tpl,v $ -->
<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
<tr>
  <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <!-- tr><td class="nsresults">SubscriberId</td><td><TMPL_VAR OTHER_SUBSCRIBER_ID>&nbsp;</td></tr>
      <tr><td>Permission Levels: &nbsp; &nbsp; </td><td>
<TMPL_LOOP PERMISSION>
  <TMPL_IF VALID>
    <TMPL_VAR TEXT><br/>
  </TMPL_IF>
</TMPL_LOOP>
      </td></tr-->
      <tr><td class="nsresults">User Name:  &nbsp; </td><td class="nsresults"><TMPL_VAR FIRST_NAME>
      <TMPL_IF MIDDLE_NAME> <TMPL_VAR MIDDLE_NAME></TMPL_IF>
      <TMPL_VAR LAST_NAME> <TMPL_VAR SUFFIX></td></tr>
      <tr><td class="nsresults">User Email:  &nbsp; </td><td class="nsresults"><TMPL_VAR ALERT_DELIVERY_EMAIL>&nbsp;</td></tr>
      <tr><td class="nsresults">User Phone Number:  &nbsp; </td><td class="nsresults"><TMPL_VAR PHONE_DISPLAY>&nbsp;</td></tr>
      <TMPL_IF PARENT_COMPANY>
      <tr><td class="nsresults">Parent Company Name:  &nbsp; </td><td class="nsresults"><TMPL_VAR PARENT_COMPANY></td></tr>
      </TMPL_IF>
      <tr><td class="nsresults">&nbsp;</td></tr>
    </table>
  </td>
</tr>
</table>
<input type="hidden" name="SUBSCRIBER_ID" value="<TMPL_VAR SUBSCRIBER_ID>"/>
<input type="hidden" id="HIDDEN_DCONFLCT_ID" name="DCONFLCT_ID" value="<TMPL_VAR DCONFLCT_ID>"/>
<!-- end:  $RCSfile: /case_connect/show_connection.tpl,v $ -->
