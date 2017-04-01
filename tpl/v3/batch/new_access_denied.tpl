<!-- BEGIN new_access_denied.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<input type="hidden" name="EVENT">

<fieldset>

<div class="warningmessage">

<table>

  <tr>
    <td><br><b>You currently do not have permission for Batch Processing.</b></td>
  </tr>
  
  <TMPL_IF ADMIN_LOOP>
  <tr>
    <td><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Please contact one of your System Administrators to inquire about access:<br><br></b></td>
  </tr>
  <TMPL_LOOP ADMIN_LOOP>
  <tr>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR FIRSTNAME> <TMPL_VAR LASTNAME><TMPL_IF EMAIL_ADDR> - <a href="mailto:<TMPL_VAR EMAIL_ADDR>"><TMPL_VAR EMAIL_ADDR></a></TMPL_IF></b></td>
  </tr>
  </TMPL_LOOP>
  </TMPL_IF>

</table>
<br/>

</div>

</fieldset>


<TMPL_INCLUDE NAME="batch/batch_footer.tpl">


<!-- END new_access_denied.tpl -->
