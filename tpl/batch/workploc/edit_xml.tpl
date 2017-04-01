<TMPL_INCLUDE batch_head.tpl>
<!-- BEGIN edit_xml.tpl -->

        <input type="hidden" name="EVENT"/>

        <div align="center">

        <table border="0" width="600">

          <tr>
            <td class="batchbanner" align="center"><br/><b>Edit the XML Below</b></td>
          </tr>

          <tr>
            <td class="unifont2" align="center"><br/><textarea name="XML" rows="30" cols="80"><TMPL_VAR XML></textarea><br/><br/></td>
          </tr>
        </table>

        <table border="0" width="600">
          <tr>
            <td><img src="<TMPL_VAR IMGPATH>/spacer.gif" width="1" height="20" border="0"/></td>
          </tr>
          <tr>
            <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WPL/SHOW_SUMMARY')"><img src="<TMPL_VAR IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"/></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('WPL/CONFIRM_ADMIN')"><img src="<TMPL_VAR IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"/></a></td>
          </tr>
        </table>

        </div>

<!-- END edit_xml.tpl -->
<TMPL_INCLUDE batch_footer.tpl>