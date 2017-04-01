<!-- BEGIN new_append_fields.tpl -->
<TMPL_INCLUDE NAME="../_new_header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js">
</script>

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='IS_BATCH_ADMIN'>">

<div align="center">

<table border="0" width="600">
    <tr>
        <td width="600">
        <br>
<TMPL_INCLUDE NAME="../_new_navigation.tpl">
        <br>
        </td>
    </tr>
                                                                                                                                        
<TMPL_IF FREE_TRIAL_CREDITS>
                                                                                                                                        
    <tr>
        <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
    </tr>
                                                                                                                                        
</TMPL_IF>
  	<tr>
    	<td align="center" class="batchbanner" colspan="2"><b>Append Fields</b></td>
	</tr>
	<tr>
		<td>
	<TMPL_INCLUDE NAME="new_append_fields_body.tpl">
    	</td>
	</tr>
	<tr>
    	<td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>
	</tr>
	<tr align="right">
		<td width="100%" class="smallfont1" valign="top" align="right"><br><br><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('<TMPL_VAR NEXT_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

	</tr>
</table>
<br>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select option before proceeding.\n\n');</script>
</TMPL_IF>

<input type="hidden" name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../_new_footer.tpl">
<!-- END new_append_fields.tpl -->
