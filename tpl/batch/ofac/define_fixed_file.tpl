<!-- BEGIN define_fixed_file.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="OFACBATCH/SAVE_DEFINE_FILE">

<TMPL_IF ROWS>
  <TMPL_LOOP ROWS>
	<INPUT TYPE=HIDDEN NAME="ROW_<TMPL_VAR ROW>" VALUE="<TMPL_VAR NAME=LINE ESCAPE=HTML>">
  </TMPL_LOOP>
</TMPL_IF>

<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>

  <TMPL_INCLUDE NAME="define_fixed_file_body.tpl">

  <tr>
    <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('OFACBATCH/FILE_SELECT')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('OFACBATCH/SAVE_DEFINE_FILE')" onClick="if(!validate_selects() || !check_length()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script language="JavaScript">
build_example();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END define_fixed_file.tpl -->
