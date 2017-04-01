<!-- BEGIN append_fields.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js"></script>
<TMPL_IF phonebatch>
<script src="<TMPL_VAR NAME='JSPATH'>/phone_batch.js"></script>
<TMPL_ELSE>
<TMPL_IF surecontactbatch>
<script src="<TMPL_VAR NAME='JSPATH'>/surecontact_batch.js"></script>
<TMPL_ELSE>
<TMPL_IF sureplacementbatch>
<script src="<TMPL_VAR NAME='JSPATH'>/sureplacement_batch.js"></script>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_APPEND_FIELDS">
<input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR NAME='BATCH_ADMIN'>">

<div align="center">
<!--
  <tr>
    <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
</table>

-->


<TMPL_IF businessbatch>
    <TMPL_INCLUDE NAME="../append_bus_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF businesscollectionsbatch>
    <TMPL_INCLUDE NAME="../append_bus_duex_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF phonebatch>
    <TMPL_INCLUDE NAME="../phone/append_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF surecontactbatch>
    <TMPL_INCLUDE NAME="../surecontact/append_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF sureplacementbatch_3>
    <TMPL_INCLUDE NAME="../sureplacement/append_fields_body_addons.tpl">
<TMPL_ELSE>
<TMPL_IF sureplacementbatch_2>
    <TMPL_INCLUDE NAME="../sureplacement/append_fields_body_indicators.tpl">
	<INPUT TYPE=HIDDEN NAME=SUREPLACEMENT_2 VALUE="1">
<TMPL_ELSE>
<TMPL_IF sureplacementbatch>
    <TMPL_INCLUDE NAME="../sureplacement/append_fields_body.tpl">
	<INPUT TYPE=HIDDEN NAME=SUREPLACEMENT_1 VALUE="1">
<TMPL_ELSE>
<TMPL_IF recoverscorebatch>
    <TMPL_INCLUDE NAME="../recoverscore/append_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF patriotactbatch>
    <TMPL_INCLUDE NAME="../ofac/append_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF phonesplusbatch>
    <TMPL_INCLUDE NAME="../phonesplus/append_fields_body.tpl">
<TMPL_ELSE>
<TMPL_IF businessinstantid>
    <TMPL_INCLUDE NAME="../instantid/choose_process_body.tpl">
<TMPL_ELSE>
<TMPL_IF consumerinstantid>
    <TMPL_INCLUDE NAME="../instantid/choose_process_body.tpl">
<TMPL_ELSE>
    <TMPL_INCLUDE NAME="../append_fields_body.tpl">
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>
</TMPL_IF>

</table>

	<!-- use so to avoid js errors -->
	<INPUT TYPE=HIDDEN NAME="BATCH_TOTAL" VALUE="0">

    <td width="250" class="smallfont1" valign="bottom"><br><br><a href="javascript:send_event('BATCHFTP/<TMPL_IF PREV_BUTTON><TMPL_VAR PREV_BUTTON><TMPL_ELSE>OUTPUT_TYPE</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/<TMPL_IF NEXT_BUTTON><TMPL_VAR NEXT_BUTTON><TMPL_ELSE>SAVE_APPEND_FIELDS</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>
<br>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('Please select purpose before proceeding.\n\n');</script>
</TMPL_IF>

<input type=hidden name="BATCH_PRE_TOTAL" value="0.00">

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END append_fields.tpl -->
