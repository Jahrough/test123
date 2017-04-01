<!-- BEGIN watchdog_upload_now.tpl -->
<table border="0">
<tr>
<td class="unifont1">
Would you like a return file with the current values now? Yes <input type="RADIO" NAME="UPLOAD_NOW" VALUE="1" <TMPL_IF UPLOAD_NOW>CHECKED</TMPL_IF>>  No <input type="RADIO" NAME="UPLOAD_NOW" VALUE="0" <TMPL_UNLESS UPLOAD_NOW>CHECKED</TMPL_UNLESS>>
</td>
</tr>
</table>
<!-- END watchdog_upload_now.tpl -->
