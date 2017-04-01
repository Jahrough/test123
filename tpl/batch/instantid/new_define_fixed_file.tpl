<!-- BEGIN new_define_fixed_file.tpl -->
<TMPL_INCLUDE NAME="../_new_header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="INSTANTIDBATCH/SAVE_DEFINE_FILE">

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

  <TMPL_UNLESS SHOW_BATCH_UPDATE>
    <TMPL_INCLUDE NAME="define_fixed_file_body.tpl">
  <TMPL_ELSE>
    <TMPL_INCLUDE NAME="define_fixed_file_body_update.tpl">
  </TMPL_UNLESS>

  <tr>
    <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('INSTANTIDBATCH/FILE_SELECT')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('INSTANTIDBATCH/SAVE_DEFINE_FILE')" onClick="<TMPL_IF SHOW_BATCH_UPDATE>set_fixed_width_field_length();</TMPL_IF>if(!validate_selects() || !check_length()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script language="JavaScript">
<TMPL_UNLESS SHOW_BATCH_UPDATE>
build_example();
</TMPL_UNLESS>
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="../_new_footer.tpl">
<!-- END new_define_fixed_file.tpl -->
