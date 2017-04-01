<!-- BEGIN v3/batch/shared/file_select_update.tpl -->
<tmpl_if name=BATCH_CONTROLLER>
<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_FILE">
</tmpl_if>

<div class="fieldset-title">Select File</div>
<fieldset class="batchFieldset">
    <table class="batchInputTable" style="width:100%;">
        
        <TMPL_IF SHOW_BATCH_UPDATE>
            <tr>
                <td>
                    <b><label for="bt_ref_name">Batch reference name:</label></b>
                </td>
                <td>
                    <input id="bt_ref_name" type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>">
                </td>
            </tr>
        </TMPL_IF>
        
        <tr>
            <td>
                <b><label for="fl_to_proc">File to process:</label></b>
            </td>
            <td>
                <input id="fl_to_proc" type="file" name="BATCH_FILE" size="50">
            </td>
        </tr>
        
        <TMPL_IF IS_PHONE_BATCH>
            <tr>
                <td colspan="2" align="center">
                    File Type: Comma delimited file containing phone number in one column. 
                    <input type=hidden name="FILE_TYPE" value="1">
                </td>
            </tr>
        <TMPL_ELSE>
            <tr>
                <td style="vertical-align: top;">
                    <b><span id="fl_typ">File Type:</span></b> 
                </td>
                <td>
                    <table class="left">
                        <tr>
                            <td>
                                <span>
                                    <input aria-labelledby="fl_typ" type=RADIO id="ascii_fxd_wdt" name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>>
                                    <label for="ascii_fxd_wdt"><b>ASCII Fixed Width</b> (usually .txt)</label>
                                </span>
                                <a title="More information" href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>
                                    <input aria-labelledby="fl_typ" type=RADIO id="ascii_del" name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>>
                                    <label for="ascii_del"><b>ASCII Delimited</b> (usually .csv or .txt)</label>
                                </span>
                                <label for="del_typ" style="display: none">Delemiter type</label>
                                <select id="del_typ" name="DELIMITER_TYPE" onChange="delimiter_selected(this,1);">
                                    <option value="">Delimiter... </option>
                                    <TMPL_LOOP DELIMITER_LOOP>
                                        <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                    </TMPL_LOOP>
                                </select>
                                <a alt="More Information on delimiter file" href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </TMPL_IF>

<TMPL_UNLESS SHOW_BATCH_UPDATE>
  						<tr>
    						<td colspan="2" align="left" class="batchfilealert"><TMPL_IF FILE_UPLOADED><b>NOTE:</b>&nbsp;&nbsp;File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.<INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1"></TMPL_IF></td>
  						</tr>
</TMPL_UNLESS>

        <TMPL_IF IS_BATCH_ADMIN>
            <TMPL_UNLESS BATCH_CONTROLLER>
            <tr>
                <td style="vertical-align: top;">
                    <b><span id="sel_out_to">Select Output to:</span></b> 
                </td>
                <td>
                    <table class="left">
                        <tr>
                            <td>
                                <span>
                                    <input aria-labelledby="sel_out_to" id="out_area" type="RADIO" name="SEND_OUTPUT_RADIO" value="CUSTAREA" size="50" <TMPL_IF CUSTAREA_CHECKED> CHECKED</TMPL_IF>>
                                        <label for="out_area"><b>Customer's batch output area</b></label>                                    
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <span>
                                    <input aria-labelledby="sel_out_to" id="ftp_usr_id" type="RADIO" name="SEND_OUTPUT_RADIO" value="FTPUSERID" size="50" <TMPL_IF FTPUSERID_CHECKED> CHECKED</TMPL_IF>>
                                        <label for="ftp_usr_id"><b>Customer's FTP UserID</b></label>
                                </span>
                                <label for="ftp_job_nm" style="display: none">batch job</label>
								<select id="ftp_job_nm" name="<TMPL_VAR __BATCHFTP_FTPJOBS_NAME__>">
                				    <option value="">-- Choose One --</option>
                                    <TMPL_LOOP __BATCHFTP_FTPJOBS_LOOP__>
                				    <option value="<TMPL_VAR FTP_USERID>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR FTP_USERID> (created: <TMPL_VAR DATECREATED>)</option>
                                    </TMPL_LOOP>
                				</select>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            </TMPL_UNLESS>
        </TMPL_IF>
        <tr>
            <td>
                <label for="not_eml_adr"><b>Notification Email Address:</b></label>
            </td>
            <td>
                <input id="not_eml_adr" type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>">
            </td>
        </tr>
        
        <TMPL_IF SHOW_BATCH_UPDATE>
            <tr>
                <td>
                    <label for="conf_eml_adr"><b>Confirm Email Address:</b></label>
                </td>
                <td>
                    <input id="conf_eml_adr" type=text size="45" name="BATCH_EMAIL_TO_CONFIRM" value="<TMPL_VAR BATCH_EMAIL_TO_CONFIRM>">
                </td>
            </tr>
        </TMPL_IF>
        
        <TMPL_UNLESS SHOW_BATCH_UPDATE>
            <tr>
                <td class="batchfilealert batchsmallfont" colspan="2">
                    <br>
                    <TMPL_IF FILE_UPLOADED>
                        NOTE:
                        &nbsp;&nbsp;
                        File <b><TMPL_VAR USER_FILE_NAME></b> has already been uploaded.&nbsp;&nbsp;Select a new file if you wish to replace it.
                        <INPUT TYPE=HIDDEN NAME="FILE_UPLOADED" VALUE="1">
                    </TMPL_IF>
                </td>
            </tr>
        </TMPL_UNLESS>
        
        <TMPL_IF SHOW_BATCH_UPDATE>
            <TMPL_UNLESS IRS>
                <tr>
                    <td class="batchfilealert batchsmallfont" nowrap="nowrap" colspan="2">
                        <br>
                        NOTE:&nbsp;&nbsp;Maximum record count of 200,000 per file. Please verify number of records prior to submission.
                    </td>
                </tr>
            </TMPL_UNLESS>
        </TMPL_IF>
    </table>
</fieldset>
<!-- END v3/batch/shared/file_select_update.tpl -->
