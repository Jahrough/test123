<!-- BEGIN new_define_file.tpl -->
<TMPL_INCLUDE NAME="../_new_header.tpl">
                                                                                                                                        
<input type=hidden name="EVENT">
                                                                                                                                        
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
    <tr>
        <td align="center" class="batchbanner"><br><b>Define Field Labels</b></td>
    </tr>
<TMPL_IF FREE_TRIAL_CREDITS>
    <tr>
        <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
    </tr>
</TMPL_IF>
                                                                                                                                        
<TMPL_INCLUDE NAME="new_define_file_body.tpl">
    <tr>
        <td valign="bottom" align="center" class="unifont1" class="nsinputs">
        <br>
        Output Type: 
        <select name="CRIM_OUTPUT_FILE">
				  <option value="1"<TMPL_IF CRIM_OUTPUT_FILE_1> SELECTED</TMPL_IF>>FULL</option>
				  <option value="2"<TMPL_IF CRIM_OUTPUT_FILE_2> SELECTED</TMPL_IF>>DAYTON</option>	
				</select>
        </td>
	</tr>
    
    
    <tr>
<TMPL_IF EXCEED_FREE_TRIAL>
        <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:alert('This file exceeds your free trial limit.\nPlease remove the necessary lines and try again.');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
<TMPL_ELSE>
        <td valign="bottom" align="right" class="unifont1"><br><br><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('<TMPL_VAR
NEXT_EVENT>')" onClick="if(!validate_selects()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
</TMPL_IF>
	</tr>
</table>
</div>

<script language="JavaScript">
guess_fields();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="../_new_footer.tpl">
<!-- END new_define_file.tpl -->
