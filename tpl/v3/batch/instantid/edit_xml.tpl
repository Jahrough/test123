<!DOCTYPE html>
<!-- BEGIN v3/batch/instantid/edit_xml.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<script type="text/javascript">
	var session_id = '<TMPL_VAR SESSION_ID>';
	var csrf_token = '<TMPL_VAR CSRF_TOKEN>';	
	var xml_view_event = '<TMPL_VAR XML_VIEW_EVENT>';
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<INPUT TYPE=HIDDEN NAME=EVENT>

<TMPL_INCLUDE NAME="new_navigation.tpl">

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Edit the XML Below</b></td>
  </tr>

  
    <tr>
        <td class="largefont1" colspan="2"><br><b>Select the options to apply to your XML:</b></td>
    </tr>

    <TMPL_IF CONTROLS_LOOP>
    <TMPL_LOOP CONTROLS_LOOP>
            <TMPL_IF IS_YES_NO_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><span id="desc-[<TMPL_VAR NAME>]"><TMPL_VAR DESCRIPTION></span>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td><INPUT aria-labelledby="desc-[<TMPL_VAR NAME>]" id="id[<TMPL_VAR NAME>]-yes" TYPE=RADIO NAME="CONTROLS[<TMPL_VAR NAME>]" VALUE="yes" <TMPL_IF NAME=CHECKED_Y>CHECKED</TMPL_IF>></td>
                        <td class="unifont1"><label for="id[<TMPL_VAR NAME>]-yes">Yes</label>&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT aria-labelledby="desc-[<TMPL_VAR NAME>]" id="id[<TMPL_VAR NAME>]-no" TYPE=RADIO NAME="CONTROLS[<TMPL_VAR NAME>]" VALUE="no" <TMPL_IF NAME=CHECKED_N>CHECKED</TMPL_IF>></td>
                        <td class="unifont1"><label for="id[<TMPL_VAR NAME>]-no">No</label></td>
                    </tr>
                </table>
                </td>
            </tr>
            </TMPL_IF>
            <TMPL_IF IS_FREE_FORM_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><label for="id[<TMPL_VAR NAME>]"><TMPL_VAR DESCRIPTION></label>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                    <td>
                        <INPUT TYPE="TEXT" NAME="CONTROLS[<TMPL_VAR NAME>]" id="id[<TMPL_VAR NAME>]" VALUE="<TMPL_VAR VALUE>">
                    </td>
                    </tr>
                </table>
                </td>
            </tr>
            </TMPL_IF>
            <TMPL_IF IS_DROP_DOWN_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><label for="id[<TMPL_VAR NAME>]"><TMPL_VAR DESCRIPTION></label>:<br><i>(<b>Node</b>: <TMPL_VAR NAME>)</i></TD>
                <td align="left" valign="top" width="40%">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                <TMPL_IF TAGS_LOOP>
                <select id="id[<TMPL_VAR NAME>]" name="CONTROLS[<TMPL_VAR NAME>]">
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

<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:send_event('<TMPL_VAR PREV_EVENT>')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('<TMPL_VAR NEXT_EVENT>')">
            Next
        </a>
    </div>
</div>


</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END v3/batch/instantid/edit_xml.tpl -->
