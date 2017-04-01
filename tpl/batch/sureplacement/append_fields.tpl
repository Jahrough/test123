<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js">
</script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="SUREPLACEMENTBATCH/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

<div align="center">
	    <TMPL_INCLUDE NAME="append_fields_body.tpl">
	    </td>
	</tr>
    </table>
    </td>
  </tr>

  <tr>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>
    <td width="100%" class="smallfont1" valign="top" align="right"><br><br><a href="javascript:send_event('SUREPLACEMENTBATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SUREPLACEMENTBATCH/SAVE_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>

  </tr>
</table>
<br>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select option before proceeding.\n\n');</script>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END append_fields.tpl -->
