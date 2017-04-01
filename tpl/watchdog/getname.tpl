<!-- BEGIN getname.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/SAVE_NAME">

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
    <td class="batchbanner" align="center"><br><b>Welcome to Accurint's Watchdog Wizard</b></td>
  </tr>
  
  <tr>
    <td align="left" class="unifont2"><br><b>Enter a name for your Watchdog order:</b>&nbsp;&nbsp;<input type=text name="ORDER_NAME" value="<TMPL_VAR ORDER_NAME>"></td>
  </tr>

  <tr>
    <td align="left" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;Note: This name will be used on all correspondence related to this order.</td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br><b>Enter an e-mail address where you would like the updated records to be sent:</b>&nbsp;&nbsp;</td>
  </tr>
  <tr>
    <td align="left" class="smallfont1">&nbsp;&nbsp;&nbsp;&nbsp;E-mail address:&nbsp;&nbsp;
    <input type="text" name="EMAIL" value="<TMPL_VAR EMAIL>" size="45"><br>&nbsp;&nbsp;&nbsp;&nbsp;<i>Insert addresses separated by a space or a comma or a semi-colon.</i></td>
  </tr>

   <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="180" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WATCHDOG/START')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WATCHDOG/SAVE_NAME')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script>
document.WATCHDOG.ORDER_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="footer.tpl">

<!-- END getname.tpl -->
