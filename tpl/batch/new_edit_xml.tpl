<!-- BEGIN new_edit_xml.tpl -->
<TMPL_INCLUDE NAME='_new_header.tpl'>

<script type="text/javascript">
	var session_id = '<TMPL_VAR SESSION_ID>';
	var csrf_token = '<TMPL_VAR CSRF_TOKEN>';
	var xml_view_event = '<TMPL_VAR XML_VIEW_EVENT>';
</script>

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">
                                                                                                                                        
<div align="center">
                                                                                                                                        
<table border="0" width="600">
    <tr>
        <td width="600">
        <br>
        <table border="0" cellpadding="0" cellspacing="0" width="600">
            <tr>
                <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="_new_navigation.tpl"></b></td>
            </tr>
	<TMPL_IF IS_BATCH_ADMIN>
            <tr>
                <td class="wizardcounter" width="100%" align="left">:. <a class="mainmenu" href="javascript:open_xml('session');">XML View</a>
				</td>
            </tr>
	</TMPL_IF>
        </table>
        </td>
    </tr>
</table>

<table border="0" width="600" cellpadding="4">
    <tr>
        <td class="batchbanner" align="center" colspan="2"><br><b>Edit the XML Below</b></td>
    </tr>
    <tr>
        <td class="largefont1" colspan="2"><br><b>Select the options to apply to your XML:</b></td>
    </tr>

    <TMPL_IF CONTROLS_LOOP>
    <TMPL_LOOP CONTROLS_LOOP>
            <TMPL_IF IS_YES_NO_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DESCRIPTION>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td><INPUT TYPE=RADIO NAME="CONTROLS[<TMPL_VAR NAME>]" VALUE="yes" <TMPL_IF NAME=CHECKED_Y>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="CONTROLS[<TMPL_VAR NAME>]" VALUE="no" <TMPL_IF NAME=CHECKED_N>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                    </tr>
                </table>
                </td>
            </tr>
            </TMPL_IF>
            <TMPL_IF IS_FREE_FORM_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DESCRIPTION>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                    <td>
                        <INPUT TYPE="TEXT" NAME="CONTROLS[<TMPL_VAR NAME>]" VALUE="<TMPL_VAR VALUE>">
                    </td>
                    </tr>
                </table>
                </td>
            </tr>
            </TMPL_IF>
            <TMPL_IF IS_DROP_DOWN_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DESCRIPTION>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                <TMPL_IF TAGS_LOOP>
                <select name="CONTROLS[<TMPL_VAR NAME>]">
                <option value="">-- Choose One --</option>
                <TMPL_LOOP TAGS_LOOP>
                <option value="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR VALUE></option>
                </TMPL_LOOP>
                </select>
                </TMPL_IF>
                        </td>
                    </tr>
                </table>
                </td>
            </tr>
            </TMPL_IF>
    </TMPL_LOOP>
    <TMPL_ELSE>
    <tr>
        <td><br><br><h2>Sorry, no options are available for this JobSpec XML.</h2></td>
    </tr>
    </TMPL_IF>
</table>


<table border="0" width="600">
	<tr>
	</tr>
</table>


<TABLE BORDER="0" WIDTH="600">
	<TMPL_IF IS_BATCH_ADMIN>
	<tr>
		<td class="smallfont1" colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Skip the Edit XML process</b>&nbsp;&nbsp;<input type=checkbox name="SKIP_XML" value="1"<TMPL_IF SKIP_XML> CHECKED</TMPL_IF>></td>
	</tr>
	</TMPL_IF>
	<tr>
    	<td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
	</tr>
	<tr>
		<td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('<TMPL_VAR NEXT_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" WIDTH="87" HEIGHT="29" BORDER="0"></A></TD>
	</TR>
</TABLE>

</DIV>

<TMPL_INCLUDE NAME='_new_footer.tpl'>
<!-- END new_edit_xml.tpl -->
