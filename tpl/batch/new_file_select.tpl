<!-- BEGIN new_file_select.tpl -->
<TMPL_INCLUDE NAME="_new_header.tpl">

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">

<script language="javascript">
function check_send_please_wait_event(event){
                                                                                                                                        
	var elements = document.getElementsByTagName('input');
	var batch_file;
	var file_uploaded;

	for(var i = 0; i < elements.length; i++) {
		var value = trim(elements.item(i).value);
		var name = trim(elements.item(i).name);

		if (name == 'BATCH_FILE') {
			batch_file = value;
		}
		if (name == 'FILE_UPLOADED') {
			file_uploaded = value;
		}
	}

	if (batch_file == '' && file_uploaded != '1') {
		alert('Missing Upload Path/Filename');
        return;
	}
                                                                                                                                        
    send_please_wait_event(event);
}
</script>

<div align="center">

<table border="0" width="600">
	<tr>
		<td width="600">
    	<br>
		<table border="0" cellpadding="0" cellspacing="0" width="600">
                <TMPL_UNLESS SHOW_BATCH_UPDATE>
      		<tr>
	            <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="_new_navigation.tpl"></b></td>
                </tr>
                <TMPL_ELSE>
                <tr>
                    <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
                </tr>
                <tr>
                    <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="help_contact_line.tpl"></td>
                </tr>
                </TMPL_UNLESS>
    	</table>
		</td>
	</tr>
</table>

<TMPL_IF 'IS_BATCH_ADMIN'>

<TMPL_INCLUDE NAME="_new_admin_file_select.tpl">

<TMPL_ELSE>

<TMPL_INCLUDE NAME="_new_user_file_select.tpl">

</TMPL_IF>

<table border="0" width="600">
    <tr>
        <td align="left" valign="top">
        <br>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td class="unifont2"><b>Send batch notifications to:</b>&nbsp;&nbsp;</td>
                <td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>"></td>
            </tr>
            <TMPL_IF SHOW_BATCH_UPDATE>
            <tr>
              <td class="unifont2"><b>Confirm Email Address:</b>&nbsp;&nbsp;</td>
	      <td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO_CONFIRM" value="<TMPL_VAR BATCH_EMAIL_TO_CONFIRM>"></td>
           </tr>
           <input type="hidden" name="IS_INSTANTID_BATCH" value="1">
           </TMPL_IF>
           <TMPL_UNLESS SHOW_BATCH_UPDATE>
            <tr>
                <td colspan="2" class="smallfont1"><i>(E-mail Address) Insert addresses separated by a space or a comma or a semi-colon.</i></td>
            <tr>
           </TMPL_UNLESS>
        </table>
        </td>
    </tr>
    <tr>
        <td><br><hr></td>
    </tr>
  	<tr>
		<td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR NAME='PREV_EVENT'>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:check_send_please_wait_event('<TMPL_VAR NAME='NEXT_EVENT'>')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	</tr>
</table>

</div>

<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="_new_footer.tpl">
<!-- END new_file_select.tpl -->
