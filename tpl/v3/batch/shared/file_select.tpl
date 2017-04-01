<!-- BEGIN v3/batch/shared/file_select.tpl -->
<div class="fieldset-title">Select File</div>
<fieldset class="batchFieldset">
    <table class="batchInputTable">
        <tr>
            <td>
                <label for="id_batch_name"><b>Batch reference name:</b></label>
            </td>
            <td>
                <input id="id_batch_name" type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>">
            </td>
        </tr>

        <TMPL_IF IS_BATCH_ADMIN>
            <tr>
                <td>
                    <b><label for="id_batch_company">Enter the Company ID for your batch job:</label></b>
                </td>
                <td>
                    <input id="id_batch_company" type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>">
                </td>
            </tr>
            <tr>
                <td>
                    <b><label for="id_batch_login">Enter the Login ID for your batch job:</label></b>
                </td>
                <td>
                    <input id="id_batch_login" type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>">
                </td>
            </tr>
        <TMPL_ELSE>
            <INPUT TYPE=HIDDEN NAME=DUMMY_PARAM VALUE="0">
        </TMPL_IF>

        <tr>
            <td>
                <b><label for="id_batch_file">File to process:</label></b>
            </td>
            <td>
                <input id="id_batch_file" type="file" name="BATCH_FILE" size="50">
            </td>
        </tr>
        <tr>
            <td>
                <b><span id="fl_typ">File type:</span></b> 
            </td>
            <td>
                <table style="float:left;">
                    <tr>
                        <td>
                            <span>
                                <input aria-labelledby="fl_typ" id="id_fl_typ" type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>>
                                <label for="id_fl_typ"><b>ASCII Fixed Width</b> (usually .txt)</label>
                            </span>
                            &nbsp;
                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <span>
                                <input aria-labelledby="fl_typ" id="asc_del" type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>>
                                <label for="asc_del"><b>ASCII Delimited</b> (usually .csv or .txt)</label>
                            </span>
                            &nbsp;
                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16" alt="More Info"></a>
                            <label for="id_del_typ" style="display: none">Dummy</label>
                            <select aria-labelledby="fl_typ" id="id_del_typ" name="DELIMITER_TYPE" onChange="delimiter_selected(this,1);">
                                <option value="">Delimiter... </option>
                                <TMPL_LOOP DELIMITER_LOOP>
                                    <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DESC></option>
                                </TMPL_LOOP>
                            </select>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <b><label for="id_batch_email">Notification Email Address:</label></b>
            </td>
            <td>
                <input id="id_batch_email" type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>">
            </td>
        </tr>
        <tr>
            <td>
                <b><label for="id_batch_toconf">Confirm Email Address:</label></b>
            </td>
            <td>
                <input id="id_batch_toconf" type=text size="45" name="BATCH_EMAIL_TO_CONFIRM" value="<TMPL_VAR BATCH_EMAIL_TO_CONFIRM>">
            </td>
        </tr>
        <tr>
            <td class="batchfilealert" nowrap="nowrap" colspan="2">
                <b>NOTE:</b>&nbsp;&nbsp;Maximum record count of 200,000 per file. Please verify number of records prior to submission.
            </td>
        </tr>
    </table>

</fieldset>
<!-- END v3/batch/shared/file_select.tpl -->