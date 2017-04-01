<TMPL_INCLUDE batch_head.tpl>
<!-- BEGIN define_fixed_file.tpl -->
    <input type="hidden" name="EVENT" value="WPL/SAVE_DEFINE_FILE"/>

<TMPL_IF ROWS>
  <TMPL_LOOP ROWS>
    <input type="hidden" name="ROW_<TMPL_VAR ROW>" value="<TMPL_VAR LINE ESCAPE=HTML>"/>
  </TMPL_LOOP>
</TMPL_IF>
    <div align="center">
      <table border="0" width="600">
        <tr>
          <td width="600">
          <br>
          <table border="0" cellpadding="0" cellspacing="0" width="600">
            <tr>
              <td class="wizardcounter" width="30%" align="left" nowrap="nowrap"><TMPL_INCLUDE NAME="title_line.tpl"></td>
            </tr>
            <tr>
              <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE ../help_contact_line.tpl></td>
            </tr>
          </table>
          </td>
        </tr>

<TMPL_UNLESS SHOW_BATCH_UPDATE>
  <TMPL_INCLUDE define_fixed_file_body.tpl>
<TMPL_ELSE>
  <TMPL_INCLUDE define_fixed_file_body_update.tpl>
</TMPL_UNLESS>

        <tr>
          <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('<TMPL_IF SHOW_BATCH_UPDATE>PHONE</TMPL_IF>WPL/FILE_SELECT')"><img src="<TMPL_VAR IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"/></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WPL/SAVE_DEFINE_FILE')" onclick="<TMPL_IF SHOW_BATCH_UPDATE>set_fixed_width_field_length();</TMPL_IF>if(!validate_selects() || !check_length()){return false;}"><img src="<TMPL_VAR IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"/></a></td>
        </tr>
      </table>
    </div>

<TMPL_UNLESS SHOW_BATCH_UPDATE>
    <script language="javascript">
    build_example();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
    </script>
</TMPL_UNLESS>

<!-- END define_fixed_file.tpl -->
<TMPL_INCLUDE batch_footer.tpl>