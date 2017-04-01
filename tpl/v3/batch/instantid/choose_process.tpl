<!DOCTYPE html>
<!-- BEGIN select_output_format.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="INSTANTIDBATCH/SAVE_CHOOSE_PROCESS">

<div align="center">

<br>
<table border="0" width="600">
  <tr>
    <td width="600">
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></b></td>
      </tr>
    </table>
    </td>
  </tr>

  <TMPL_INCLUDE NAME="choose_process_body.tpl">

  <tr>
    <td valign="bottom" align="right" width="550"><a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/FILE_SELECT')">Back</a>&nbsp;&nbsp;&nbsp;<a class="btn darkgrey-btn" href="javascript:send_event('INSTANTIDBATCH/SAVE_CHOOSE_PROCESS')" onClick="if(!validate()){return false;}">Next</a></td>

  </tr>
</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END select_output_format.tpl -->
