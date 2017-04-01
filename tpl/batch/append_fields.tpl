<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"> 
</script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">


<div align="center">
<TMPL_IF IS_BUS_BATCH>
	<TMPL_INCLUDE NAME="append_bus_fields_body.tpl">
    <td width="250" class="smallfont1" valign="top">Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b><TMPL_UNLESS HIDE_PRICES><br>Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" onFocus="this.blur()"><br><b>Note:</b> This is the maximum possible cost based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.<TMPL_ELSE><input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL></TMPL_UNLESS><br><br><a href="javascript:send_event('BATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
<TMPL_ELSE>
<TMPL_IF IS_BUS_BATCH_DUEX>
	<TMPL_INCLUDE NAME="append_bus_duex_fields_body.tpl">
    <td width="250" class="smallfont1" valign="top">Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b><TMPL_UNLESS HIDE_PRICES><br>Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" onFocus="this.blur()"><br><b>Note:</b> This is the maximum possible cost based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.<TMPL_ELSE><input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL></TMPL_UNLESS><br><br><a href="javascript:send_event('BATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
<TMPL_ELSE>
	<TMPL_INCLUDE NAME="append_fields_body.tpl">
    <td width="250" class="smallfont1" valign="top"><TMPL_UNLESS SHOW_BATCH_UPDATE>Approximate Number of Records: <b><TMPL_VAR NUM_RECS></b><TMPL_UNLESS HIDE_PRICES><br>Maximum Possible Cost: $ <input type=text name=BATCH_TOTAL size=7 value="<TMPL_VAR NAME=BATCH_TOTAL>" onFocus="this.blur()"><br><b>Note:</b> This is the maximum possible cost <b>(Without Special Value Offer)</b> based on the estimate of <TMPL_VAR BATCH_RECS> records in the file to be processed and assuming a 100% match rate.<TMPL_ELSE><input type=hidden name=BATCH_TOTAL value="<TMPL_VAR NAME=BATCH_TOTAL></TMPL_UNLESS></TMPL_UNLESS><br><br><a href="javascript:send_event('BATCH/<TMPL_UNLESS SHOW_BATCH_UPDATE>OUTPUT_TYPE<TMPL_ELSE>SERVICES</TMPL_UNLESS>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0" onClick="if(!validate()) return false;"></a></td>
</TMPL_IF>
</TMPL_IF>

  </tr>
</table>
<br>
</div>
<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>
<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END append_fields.tpl -->
