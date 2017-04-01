<!-- BEGIN file_select_editftp.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_FILE">

<div align="center">
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left">Batch Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
        <td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Select the file to upload</b></td>
  </tr>
</table>

<br>

<table border="0" width="600">
    <td class="unifont1" valign="top"><b>Upload Path/Filename:</b></td>
    <td class="nsinputs">You can only edit the specification of this file</td>
	<INPUT TYPE=HIDDEN NAME="BATCH_FILE" VALUE="<TMPL_VAR USER_FILE_NAME>">
  <tr><td colspan="2">&nbsp;</td></tr>
  <tr>
    <td colspan="2" align="left" class="smallfont1">File Type: <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>> <b>Comma Delimited</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>> <b>Fixed Width</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td align="left" class="batchfilealert"><TMPL_IF FILE_UPLOADED><br><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;<INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
  </tr>

  <tr>
    <td align="left" valign="top">
    <br>&nbsp;
	</td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="95" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCHFTP/CHOOSE_EDITFTP_JOB')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('BATCHFTP/SAVE_FILE')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END file_select_editftp.tpl -->
