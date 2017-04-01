<!-- BEGIN edit_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Edit the XML Below</b></td>
  </tr>

<TMPL_IF XML_ERROR>
  <tr>
    <td class="largefont1bold" align="center"><br><div align="left"><b>Please fix the following XML errors before proceding:</b></div><textarea class="errorbox" name="XML_ERROR" rows="10" cols="80"><TMPL_VAR XML_ERROR></textarea><br><br></td>
  </tr>
</TMPL_IF>

  <tr>
    <td class="unifont2" align="center"><br><textarea name="XML" rows="30" cols="80"><TMPL_VAR XML></textarea><br><br></td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCHFTP/SHOW_SUMMARY')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('BATCHFTP/CONFIRM')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END edit_xml.tpl -->
