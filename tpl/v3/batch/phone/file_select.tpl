<!DOCTYPE html>
<!-- BEGIN file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_FILE">

<div class="fieldset-title">Select File</div>
<fieldset class="batchFieldset">
<table style="width:100%;">
  <tr>
    <td class="unifont2"><br>Enter the directory and name of the file containing the records to process:</td>
  </tr>
</table>

<br>

<table style="width:100%;">
  <tr>
    <td class="unifont1" valign="top"><b>Upload Path/Filename:</b></td>
    <td class="nsinputs"><input type="file" name="BATCH_FILE" size="50"></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class="smallfont1">File Type: <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>> <b>Comma Delimited</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>> <b>Fixed Width</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a></td>
  </tr>
</table>

<table style="width:100%;">
  <tr>
    <td align="left" class="batchfilealert"><TMPL_IF FILE_UPLOADED><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.<INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <br>
    <table style="width:100%;">
      <tr>
        <td class="unifont2"><b>Send batch notifications to:</b>&nbsp;&nbsp;</td>
	<td class="nsinputs"><input type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>"></td>
      </tr>
      <tr>
        <td colspan="2" class="smallfont1"><i>(E-mail Address): Insert addresses separated by a space or a comma or a semi-colon.</i></td>
      <tr>
    </table>
  </tr>
</table>
</fieldset>
<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('PHONEBATCH/START_BATCH')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('PHONEBATCH/SAVE_FILE')" onClick="if(!validate()){return false;}">
            Next
        </a>
    </div>
</div>
<script>
document.BATCH.BATCH_FILE.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END file_select.tpl -->
