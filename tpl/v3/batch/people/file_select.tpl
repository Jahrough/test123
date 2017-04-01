<!DOCTYPE html>
<!-- BEGIN file_select.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="<tmpl_var name=BATCH_CONTROLLER>/SAVE_FILE">

<div class="fieldset-title">Select File</div>
<fieldset class="batchFieldset">
    <table class="batchInputTable">
        <tr>
            <td>
                <b>Batch reference name:</b>
            </td>
            <td>
                <input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>">
            </td>
        </tr>

        <TMPL_IF IS_BATCH_ADMIN>
            <tr>
                <td>
                    <b>Enter the Company ID for your batch job:</b>
                </td>
                <td>
                    <input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>">
                </td>
            </tr>
            <tr>
                <td>
                    <b>Enter the Login ID for your batch job:</b>
                </td>
                <td>
                    <input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>">
                </td>
            </tr>
        <TMPL_ELSE>
            <INPUT TYPE=HIDDEN NAME=DUMMY_PARAM VALUE="0">
        </TMPL_IF>

        <tr>
            <td>
                <b>File to process:</b>
            </td>
            <td>
                <input type="file" name="BATCH_FILE" size="50">
            </td>
        </tr>
        <tr>
            <td>
                <b>File type:</b> 
            </td>
            <td>
                <table style="float:left;">
                    <tr>
                        <td>
                            <label>
                                <input type=RADIO name="FILE_TYPE" value="1"<TMPL_IF CHECKED_COMMA> CHECKED</TMPL_IF>>
                                <b>Comma Delimited</b>
                            </label>
                            &nbsp;
                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Comma delimited files are created by using Microsoft Excel or other programs that produce a file format which contains a comma separating each field.&nbsp;&nbsp;Follow the five steps below to create your own comma delimited file using Excel.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;&nbsp;Create or open the excel file containing the subject records.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;&nbsp;On the <b>File</b> menu, click <b>Save As.</b><br><br>&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;&nbsp;In the <b>File name</b> box, type a new name for the file.<br><br>&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;&nbsp;In the <b>Save as type</b> list, click a \'CSV (Comma Delimited).\'<br><br>&nbsp;&nbsp;&nbsp;&nbsp;5.&nbsp;&nbsp;Click Save.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 10, STICKY, CAPTION, 'Definition of Comma Delimited file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>
                                <input type=RADIO name="FILE_TYPE" value="2"<TMPL_UNLESS CHECKED_COMMA> CHECKED</TMPL_UNLESS>>
                                <b>Fixed Width</b>
                            </label>
                            &nbsp;
                            <a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib_to_modal('<br>Fixed width files are those in which each column (or field) of data is a fixed number of characters wide.&nbsp;&nbsp;In a fixed width file, delimiters are not used to separate columns.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 500, FIXX, 100, FIXY, 100, STICKY, CAPTION, 'Definition of Fixed Width file', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <b>Notification Email Address:</b>
            </td>
            <td>
                <input type=text size="45" name="BATCH_EMAIL_TO" value="<TMPL_VAR BATCH_EMAIL_TO>">
            </td>
        </tr>
        <tr>
            <td>
                <b>Confirm Email Address:</b>
            </td>
            <td>
                <input type=text size="45" name="BATCH_EMAIL_TO_CONFIRM" value="<TMPL_VAR BATCH_EMAIL_TO_CONFIRM>">
            </td>
        </tr>
        <tr>
            <td class="batchfilealert" nowrap="nowrap" colspan="2">
                <b>NOTE:</b>&nbsp;&nbsp;Maximum record count of 200,000 per file. Please verify number of records prior to submission.
            </td>
        </tr>
    </table>
	</fieldset>
	<div class="section-row child-divs-right">
		<div>
			<TMPL_IF IS_BUS_BATCH>
				<a class="btn darkgrey-btn" href="javascript:send_event('BATCH/BUS_START_BATCH')">Back</a>
				<a class="btn red-btn" href="javascript:send_please_wait_event('BATCH/SAVE_FILE')" onClick="if(!validate()){return false;}">Next</a></td>
			<TMPL_ELSE>
				<a class="btn darkgrey-btn" href="javascript:send_event('BATCH/START_BATCH')">Back</a>
				<a class="btn red-btn" href="javascript:send_please_wait_event('BATCH/SAVE_FILE')" onClick="if(!validate()){return false;}">Next</a></td>
			</TMPL_IF>
		</div>
	</div>


	<script>
		document.BATCH.BATCH_FILE.focus();
		<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
	</script>
    <noscript>Your browser does not support JavaScript!</noscript>
	<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END file_select.tpl -->
