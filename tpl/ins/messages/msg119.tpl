<TMPL_INCLUDE NAME="../../messages/msg_top.tpl">

<font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Thursday, June 2, 2005</b></font>

<TMPL_INCLUDE NAME="../../messages/msg_body.tpl">

<br>
<script>
function show_email_form(evt) {
    var url = document.forms[0].action + '?EVENT=' + evt + '&SESSION_ID=' + document.forms[0].SESSION_ID.value+ '&CSRF_TOKEN=' + document.forms[0].CSRF_TOKEN.value;
    general_win(url, '', 450, 500);
}
</script>
<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td width="16"></td>
    <td>
    <font face="Arial" size="2">
    <b>ACCURINT<sup>®</sup> RATE EVASION EVALUATION ENHANCEMENTS</b>
    <br><br>
    A new search results tab <b>"Mileage by VIN"</b> is now available and contains the following information:
    <ul>
      <li>Rollback Evaluation
      <li>Last Odometer Reading
      <li>Number of CARFAX Records in full VHR report
    </ul>
    Contact your sales rep to learn how to get access to this new tool!
    <br><br>
    <b>FREE TRAINING!!</b>
    <br><br>
    Remember that Accurint offers FREE customer training on all searches and features.&nbsp; Training can increase your company's productivity and efficiency by eliminating unproductive searches.&nbsp; Attendees need only a phone and an Internet-connected PC.&nbsp; Call 1-888-332-8244 or email <a href="javascript:show_email_form('MYACCOUNT/SHOW_TRAINING_MAIL');">training@accurint.com</a> to sign up for Accurint's FREE customer training.
    <br><br>
    <br><br>
    </font>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="../../messages/msg_bottom.tpl">

