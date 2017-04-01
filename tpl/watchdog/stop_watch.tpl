<!-- BEGIN stop_watch.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/STOP_WATCH">

<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Watchdog <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Select Order</b></td>
  </tr>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Click 'Next' to Stop Watch Order "<TMPL_VAR ORDER_NAME>"</b></td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="180" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WATCHDOG/EDIT_ORDER')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WATCHDOG/STOP_WATCH')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>
    
<TMPL_INCLUDE NAME="footer.tpl">

<!-- END stop_watch.tpl -->
