<!-- BEGIN file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="RESBATCH/FILE_SELECT_NEXT">

<div align="center">
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
        <td class="wizardcounter" width="50%" align="right"><TMPL_UNLESS IS_PHONE_BATCH><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, FGCOLOR, layerfgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></TMPL_UNLESS></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Select the file to upload</b></td>
  </tr>

  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont2"><br>Enter the directory and name of the file containing the records to process:</td>
  </tr>
</table>

<br>

<table border="0" width="600">
  <tr>
    <td class="unifont2" valign="top"><b>Upload Path/Filename:</b></td>
    <td class="nsinputs"><input type="file" name="BATCH_FILE" size="50"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class="smallfont1">Uploaded files must be <b>Comma Delimited</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, FGCOLOR, layerfgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td align="left" class="smallfont1"><TMPL_IF FILE_UPLOADED><font color="#003399"><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.</font><INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
  </tr>

  <tr>
    <td align="left" valign="top">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont2"><b>Send Notification when the results are complete to :</b>&nbsp;<span class="smallfont1"><i>(eMail Address)</i></span>&nbsp;&nbsp;</td>
        <td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR NAME=BATCH_EMAIL_TO>"></td>
      </tr>
  <TMPL_IF BATCH_TEST_ORDER_CREATOR>
      <tr>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td class="unifont2"><b>Test batch for Company ID</b></td>
        <td class="nsinputs"><input type=text size="45" name="TEST_BATCH_COMPANYID" value="<TMPL_VAR TEST_BATCH_COMPANYID>"></td>
      </tr>
  </TMPL_IF>
    </table>
  </tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="95" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('RESBATCH/FILE_SELECT_PREVIOUS')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('RESBATCH/FILE_SELECT_NEXT','<TMPL_VAR NAME=HTMLPATH>/please_wait.html')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END file_select.tpl -->
