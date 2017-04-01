<!DOCTYPE html>
<!-- BEGIN define_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="INSTANTIDBATCH/SAVE_DEFINE_FILE">

<div align="center">

<table border="0" width="650">
  <tr>
    <td width="650">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="650">
      <tr>
        <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner"><br><b>Define Field Labels</b></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <TMPL_INCLUDE NAME="define_file_body.tpl">	

  <tr>
	<TMPL_IF EXCEED_FREE_TRIAL>
    <td valign="bottom" align="right" class="unifont1"><br><br><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/FILE_SELECT')">Back</a>&nbsp;&nbsp;&nbsp;<a href="javascript:alert('This file exceeds your free trial limit.\nPlease remove the necessary lines and try again.');">Next</a></td>
	<TMPL_ELSE>
    <td valign="bottom" align="right" class="unifont1"><br><br><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/CHOOSE_PROCESS')">Back</a>&nbsp;&nbsp;&nbsp;<a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/SAVE_DEFINE_FILE')" onClick="if(!validate_selects()){return false;}">Next</a></td>
	</TMPL_IF>
  </tr>

</table>
</div>

<script language="JavaScript">
guess_fields();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END define_file.tpl -->
