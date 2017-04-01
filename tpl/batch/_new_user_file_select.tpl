<!-- BEGIN _new_user_file_select.tpl -->

<table border="0" width="600">
        <TMPL_IF SHOW_BATCH_UPDATE>
        <tr>
          <td align="left" class="unifont2"><br><b>File reference name:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
        </tr>
        </TMPL_IF>
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
		<td class="unifont1" valign="top"><b>Upload Path/Filename:</b></td>
		<td class="nsinputs"><input type="file" name="BATCH_FILE" size="50"></td>
	</tr>
<TMPL_IF IS_PHONE_BATCH>
	<tr>
		<td colspan="2" align="center" class="smallfont1">File Type: Comma delimited file containing phone number in one column. 
  			<input type=hidden name="FILE_TYPE" value="1">
    	</td>
	</tr>
<TMPL_ELSE>
    <TMPL_UNLESS SHOW_BATCH_UPDATE>
						<tr>
    						<td></td>
							<td colspan="2" align="left" class="smallfont1">File Type: <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>> <b>Comma Delimited</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>> <b>Fixed Width</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                                                </td>
						</tr>
    <TMPL_ELSE>
						<tr>
    						  <td colspan="4">
                                                    <table border="0" width="100%" cellspacing="0" cellpadding="0">
    <TMPL_UNLESS IRS>
                                                      <tr>
                                                        <td align="left" class="batchfilealert" nowrap="nowrap" colspan="3"><b>NOTE:</b>&nbsp;&nbsp;Maximum record count of 200,000 per file. Please verify number of records prior to submission.</td>
                                                      </tr>
    </TMPL_UNLESS>
                                                      <tr>
							<td colspan="2" align="left" class="smallfont1">File Type: <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>> <b><TMPL_UNLESS SHOW_BATCH_UPDATE>Comma Delimited<TMPL_ELSE>ASCII Delimited (usually .csv or .txt)</TMPL_UNLESS></b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;<input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>> <b>Fixed Width</b>&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                                                </td>
						</tr>

    <TMPL_IF SHOW_BATCH_UPDATE>
                                                <tr>
                                                  <td>
                                                  </td>
                                                  <td align="left" valign="top">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <select name="DELIMITER_TYPE" onChange="delimiter_selected(this,0);">
                                                    <option value="">Delimiter... </option>
                                                    <TMPL_LOOP DELIMITER_LOOP>
                                                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                                    </TMPL_LOOP>
                                                    </select>
                                                  </td>
                                                </tr>
    </TMPL_IF>

    </TMPL_UNLESS>
</TMPL_IF>
	<tr>
		<td colspan="2" align="left" class="batchfilealert"><TMPL_IF FILE_UPLOADED><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.</font><INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
	</tr>
</table>
<!-- END _new_user_file_select.tpl -->
