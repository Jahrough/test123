<!-- BEGIN rtphones/edit_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Edit the XML Below</b></td>
  </tr>

  <tr>
    <td class="unifont2" align="center"><br><textarea name="XML" rows="30" cols="80"><TMPL_VAR XML></textarea><br><br></td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('RTPHONESBATCH/SHOW_SUMMARY')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('RTPHONESBATCH/CONFIRM_ADMIN')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END rtphones/edit_xml.tpl -->
