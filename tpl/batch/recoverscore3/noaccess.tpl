<!-- BEGIN noaccess.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RECOVERSCORE3BATCH/SAVE_START">

<div align="center">

<table border="0" width="600">

<TMPL_IF IS_PHONE_BATCH>
  <tr>
    <td class="batchbanner" align="center"><br><br><b>You currently do not have permission for Reverse Phone Append Processing.</b></td>
  </tr>
<TMPL_ELSE>
  <tr>
    <td class="batchbanner" align="center"><br><br><b>You currently do not have permission for Batch Processing.</b></td>
  </tr>
</TMPL_IF>
  
  <TMPL_IF ADMIN_LOOP>
  <tr>
    <td class="unifont2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Please contact one of your System Administrators to inquire about access:<br><br></b></td>
  </tr>
  <TMPL_LOOP ADMIN_LOOP>
  <tr>
    <td class="unifont2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR FIRSTNAME> <TMPL_VAR LASTNAME><TMPL_IF EMAIL_ADDR> - <a href="mailto:<TMPL_VAR EMAIL_ADDR>"><TMPL_VAR EMAIL_ADDR></a></TMPL_IF></b></td>
  </tr>
  </TMPL_LOOP>
  </TMPL_IF>



</table>
</div>
<TMPL_INCLUDE NAME="batch_footer.tpl">

<!-- END noaccess.tpl -->
