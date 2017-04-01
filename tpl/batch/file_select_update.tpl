<!-- BEGIN file_select_update.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCH/SAVE_FILE">

<div align="center">
<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
        <td class="wizardcounter" width="50%" align="right"><TMPL_UNLESS IS_PHONE_BATCH><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></TMPL_UNLESS></td>
      </tr>
      <TMPL_IF SHOW_BATCH_UPDATE>
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="help_contact_line.tpl"></td>
      </tr>
      </TMPL_IF>
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

  <TMPL_IF SHOW_BATCH_UPDATE>
  <tr>
    <td align="left" class="unifont2"><br><b>File reference name:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont2"><br>Enter the directory and name of the file containing the records to process:</td>
  </tr>
</table>

<br>

<table border="0" width="600">
  <tr>
    <td class="unifont1" valign="top"><b>Upload Path/Filename:</b></td>
    <td class="nsinputs"><input type="file" name="BATCH_FILE" size="50"></td>
  </tr>
  <TMPL_IF SHOW_BATCH_UPDATE>
  <TMPL_UNLESS IRS>
  <tr>
    <td align="left" class="batchfilealert" nowrap="nowrap" colspan="2"><BR><b>NOTE:</b>&nbsp;&nbsp;Maximum record count of 200,000 per file. Please verify number of records prior to submission.</td>
  </tr>
  </TMPL_UNLESS>
  </TMPL_IF>
  </table>
  <table border="0" cellpadding="0" cellspacing="0" width="600">
  <TMPL_IF IS_PHONE_BATCH>
  <tr>
    <td colspan="2" align="center" class="smallfont1">File Type: Comma delimited file containing phone number in one column. 
  <input type=hidden name="FILE_TYPE" value="1">
    </td>
  <TMPL_ELSE>
  <tr>
    <td class="smallfont1" nowrap="nowrap" align="center">File Type: 
    
    <input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>> <b>ASCII Fixed Width</b> (usually .txt)</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td class="smallfont1" align="center">
    <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>> <b>ASCII Delimited</b> (usually .csv or .txt)&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
    </td>
    </tr>
    <TMPL_IF SHOW_BATCH_UPDATE>
    <tr>
      <td>
      </td>
      <td align="center">
        <select name="DELIMITER_TYPE" onChange="delimiter_selected(this,1);">
        <option value="">Delimiter... </option>
        <TMPL_LOOP DELIMITER_LOOP>
          <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
        </TMPL_LOOP>
        </select>
      </td>
    </tr>
    </TMPL_IF>
  </tr>
  </TMPL_IF>
  </table>

<table border="0" width="600">
  <TMPL_UNLESS SHOW_BATCH_UPDATE>
  <tr>
    <td align="left" class="batchfilealert"><TMPL_IF FILE_UPLOADED><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.</font><INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
  </tr>
  </TMPL_UNLESS>

  <tr>
    <td align="left" valign="top">
    <br>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="unifont2"><b>Enter Email Address for batch notification<TMPL_IF IS_PHONE_BATCH></TMPL_IF>:</b>&nbsp;&nbsp;</td>
	<td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>"></td>
      </tr>
      <!--
      <tr>
        <td colspan="2" class="smallfont1"><i>(E-mail Address) Insert addresses separated by a space or a comma or a semi-colon.</i></td>
      <tr> 
      -->
      <tr>
        <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="5" border="0"></td>
      </tr>
      <TMPL_IF SHOW_BATCH_UPDATE>
      <tr>
        <td class="unifont2"><b>Confirm Email Address:</b>&nbsp;&nbsp;</td>
	<td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO_CONFIRM" value="<TMPL_VAR BATCH_EMAIL_TO_CONFIRM>"></td>
      </tr>
      </TMPL_IF>
    </table>
    
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="35" border="0"></td>
  </tr>

  <tr>
<TMPL_IF IS_BUS_BATCH>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/BUS_START_BATCH')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('BATCH/SAVE_FILE')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
<TMPL_ELSE>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/START_BATCH')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('BATCH/SAVE_FILE')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
</TMPL_IF>
  </tr>

</table>
</div>

<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END file_select_update.tpl -->
