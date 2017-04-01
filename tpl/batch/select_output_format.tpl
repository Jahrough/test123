<!-- BEGIN select_output_format.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_OUTPUT_TYPE">

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

  <TMPL_INCLUDE NAME="select_output_format_body.tpl">

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/SAVE_OUTPUT_TYPE')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

  </tr>
</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END select_output_format.tpl -->
