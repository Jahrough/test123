<!-- BEGIN edit_append_fields.tpl -->
<TMPL_INCLUDE NAME="header.tpl">
<script src="<TMPL_VAR NAME='JSPATH'>/pricing.js">
</script>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/SAVE_APPEND_FIELDS">

<div align="center">
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left">Watchdog Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
	<td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner" colspan="2"><b>Select Items to Watch</b></td>
  </tr>
<!-- BEGIN -->
  
  <tr>
    <td class="largefont1" colspan="2"><br><b>Select the items below that you wish to be notified about if data changes:</b></td>
  </tr>
</table>

<TMPL_INCLUDE NAME="append_fields_body.tpl">


<table border="0" width="600">
  <tr>
    <td class="largefont1" colspan="2"><br><b>Change the associated e-mail address:</b></td>
  </tr>
</table>


<TMPL_INCLUDE NAME="watchdog_edit_email.tpl">

<br>

<TMPL_INCLUDE NAME="watchdog_pricing_table.tpl">


<BR>

<table border="0" cellpadding="0" cellspacing="0" width="608">
  <tr>
    <td width="304" valign="top">
	&nbsp;
    </td>
    <td width="50"><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="50" height="1" border="0"></td>
    <td width="250" class="smallfont1" valign="top"><a href="javascript:send_event('WATCHDOG/EDIT_ORDER')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WATCHDOG/SAVE_EDIT_APPEND_FIELDS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>
<br>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="footer.tpl">
<!-- END edit_append_fields.tpl -->
