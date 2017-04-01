<!-- BEGIN new_irstrategy_options.tpl -->
<TMPL_INCLUDE NAME='../_new_header.tpl'>

<script language="javascript">
function check_send_please_wait_event(event){
                                                                                                                                        
    var elements = document.getElementsByTagName('input');

    var patterns = new Array;
    patterns["TEXT"] = /^[\w\s.'',`&-]+$/;
    patterns["INTEGER"] = /^[0-9]*$/;
    patterns["DECIMAL"] = /^[0-9]*(\.[0-9]+)?$/;

    for(var i = 0; i < elements.length; i++) {
		var value = trim(elements.item(i).value);
		var name = trim(elements.item(i).name);

		// check if element is mandatory; ie has a pattern
		var display_name = elements.item(i).getAttribute('display_name');
		var _pattern = elements.item(i).getAttribute('pattern');
		var pattern = patterns[_pattern];
                                                                                                                                        
        // validate the value of this element, using its defined pattern
        var match = value.match(pattern);

    	// if no value and this is optional, go on check next element
    	if (value == '') {
        	continue;
		}

        if (_pattern == 'DECIMAL' && match == null) {
        	alert('Invalid decimal in: '+ display_name);
			return;
    	}
        if (_pattern == 'INTEGER' && match == null) {
        	alert('Invalid integer in: '+ display_name);
			return;
    	}
        if (_pattern == 'TEXT' && match == null) {
        	alert('Invalid text in: '+ display_name);
			return;
    	}
    }
                                                                                                                                        
    send_please_wait_event(event);
}
</script>

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">
<input type="hidden" name="EVENTARGUMENT">

<div align="center">

<table border="0" width="600">
    <tr>
        <td width="600">
        <br>
        <table border="0" cellpadding="0" cellspacing="0" width="600">
            <tr>
				<td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="../_new_navigation.tpl"></b></td>
            </tr>
        </table>
        </td>
    </tr>
</table>

<table border="0" width="600" cellpadding="4">
<TMPL_IF IS_STRATEGY>
    <tr>
        <td class="batchbanner" align="center" colspan="2"><br><b>Strategy Options</b></td>
    </tr>
  
	<tr>
    	<td class="largefont1" colspan="2"><br><b>Select the options to apply to your strategy:</b></td>
	</tr>
<TMPL_ELSE>
    <tr>
        <td class="batchbanner" align="center" colspan="2"><br><b>Score Options</b></td>
    </tr>
  
	<tr>
    	<td class="largefont1" colspan="2"><br><b>Select the options to apply to your score:</b></td>
	</tr>
</TMPL_IF>
                                                                                                                                        
	<tr>
		<td>
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" width="600" border="1" bordercolor="#000000">
						<tr>
							<td>
								<table cellpadding="5" cellspacing="2" width="600" border="0">
    <TMPL_IF CONTROLS_LOOP>
    <TMPL_LOOP CONTROLS_LOOP>
	<TMPL_IF IS_BOOLEAN_CONTROL>
            <tr>
                <td colspan="2" class="unifont1" align="left" valign="top" width="60%"><INPUT TYPE="CHECKBOX" NAME="CONTROLS[<TMPL_VAR INTERNAL_NAME>]" VALUE="<TMPL_VAR VALUE>" PATTERN="BOOLEAN" DISPLAY_NAME="<TMPL_VAR DISPLAY_NAME>" <TMPL_IF NAME=CHECKED>CHECKED</TMPL_IF>> <TMPL_VAR DISPLAY_NAME>
                </td>
            </tr>
	</TMPL_IF>
	<TMPL_IF IS_DECIMAL_CONTROL>
            <tr>
                <td colspan="2" class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DISPLAY_NAME> <INPUT TYPE="TEXT" NAME="CONTROLS[<TMPL_VAR INTERNAL_NAME>]" VALUE="<TMPL_VAR VALUE>" PATTERN="DECIMAL" DISPLAY_NAME="<TMPL_VAR DISPLAY_NAME>" SIZE="<TMPL_VAR MAXLEN>">
                </td>
            </tr>
	</TMPL_IF>
	<TMPL_IF IS_INT_CONTROL>
            <tr>
                <td colspan="2" class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DISPLAY_NAME> <INPUT TYPE="TEXT" NAME="CONTROLS[<TMPL_VAR INTERNAL_NAME>]" VALUE="<TMPL_VAR VALUE>" PATTERN="INTEGER" SIZE="<TMPL_VAR MAXLEN>" DISPLAY_NAME="<TMPL_VAR DISPLAY_NAME>">
                </td>
            </tr>
	</TMPL_IF>
	<TMPL_IF IS_TEXT_CONTROL>
            <tr>
                <td colspan="2" class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DISPLAY_NAME> <INPUT TYPE="TEXT" NAME="CONTROLS[<TMPL_VAR INTERNAL_NAME>]" VALUE="<TMPL_VAR VALUE>" PATTERN="TEXT" DISPLAY_NAME="<TMPL_VAR DISPLAY_NAME>" SIZE="<TMPL_VAR MAXLEN>">
                </td>
            </tr>
	</TMPL_IF>
	<TMPL_IF IS_LIST_CONTROL>
            <tr>
                <td class="unifont1" align="left" valign="top" width="60%"><TMPL_VAR DISPLAY_NAME> 
                <TMPL_IF LIST_LOOP>
                <select name="CONTROLS[<TMPL_VAR INTERNAL_NAME>]">
                <option value="0">-- Choose One --</option>
                <TMPL_LOOP LIST_LOOP>
                <option value="<TMPL_VAR OPTION_LIST_ID>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR VALUE></option>
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
    </TMPL_IF>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</table>




<TABLE BORDER="0" WIDTH="600">
	<TR>
    	<TD><IMG SRC="<TMPL_VAR NAME=IMGPATH>/spacer.gif" WIDTH="1" HEIGHT="20" BORDER="0"></TD>
	</TR>
	<TR>
		<TD VALIGN="BOTTOM" ALIGN="RIGHT" WIDTH="550"><A HREF="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" WIDTH="87" HEIGHT="29" BORDER="0"></A>&nbsp;&nbsp;&nbsp;<A HREF="javascript:check_send_please_wait_event('<TMPL_VAR NEXT_EVENT>')"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" WIDTH="87" HEIGHT="29" BORDER="0"></A></TD>
	</TR>
</TABLE>

</DIV>

                                                                                                                                        
<script>
// document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>


<TMPL_INCLUDE NAME='../_new_footer.tpl'>
<!-- END new_irstrategy_options.tpl -->
