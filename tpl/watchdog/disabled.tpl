<!-- BEGIN disabled.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/SAVE_START">

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Watchdog is currently not available.</b><P></td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="180" border="0"></td>
  </tr>


</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>
    
<TMPL_INCLUDE NAME="footer.tpl">

<!-- END disabled.tpl -->
