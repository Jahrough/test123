<!-- BEGIN new_choose_process.tpl -->
<TMPL_INCLUDE NAME="../_new_header.tpl">

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">
                                                                                                                                        
<div align="center">
                                                                                                                                        
<table border="0" width="600">
    <tr>
        <td width="600">
        <TMPL_UNLESS SHOW_BATCH_UPDATE>
        <br>
<TMPL_INCLUDE NAME="../_new_navigation.tpl">
        <br>
        </TMPL_UNLESS>
        </td>
    </tr>
    <TMPL_IF SHOW_BATCH_UPDATE>
    <tr>
      <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
    </tr>
    <tr>
      <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
    </tr>
    </TMPL_IF>
    <tr>
        <td align="center" class="batchbanner"><br><b>Choose InstantID Process</b></td>
    </tr>
                                                                                                                                        
    <TMPL_IF FREE_TRIAL_CREDITS>
    <tr>
        <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
    </tr>
    </TMPL_IF>
<TMPL_INCLUDE NAME="new_choose_process_body.tpl">
	<tr>
		<td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('<TMPL_VAR NEXT_EVENT>')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	</tr>
</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="../_new_footer.tpl">
<!-- END new_choose_process.tpl -->
