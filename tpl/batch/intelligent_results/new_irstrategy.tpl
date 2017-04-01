<!-- BEGIN new_irstrategy.tpl -->
<TMPL_INCLUDE NAME='../_new_header.tpl'>

<style>
.err_msg .mark {
    font-size: 3em;
    font-family:Sans-serif;
    font-weight:bold;
    color:#ffffff;
    background-color:#660000;
    float:left;
    margin-right:10px;
}

.infobox, .infobox2, .infobox3 {
    border: 1px solid #000066;
    padding:10px;
    background-color: red;
/* background-color: #ffff99; */
    font-family:Verdana,Arial,Helvetica,sans-serif;
    font-size:14pt;
    width:75%;
    text-align:left;
}
</style>

<input type="hidden" name="EVENT" value="<TMPL_VAR EVENT>">
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
                                                                                                                                        
                                                                                                                                        
<table border="0" width="600">
    <tr>
        <td class="batchbanner" colspan="2" align="center"><br><b>Accurint Hosted Analytics Solutions</b></td>
    </tr>
    <tr>
    	<td colspan="2"><hr></td>
    </tr>
</table>

<TMPL_IF ERROR_MESGXX><div class="infobox"><TMPL_VAR ERROR_MESG></div></TMPL_IF>
                                                                                                                                        
<table border="0" width="600">
    <tr>
        <td>
            <table border="0" width="600" cellpadding="5">
                <tr>
                    <td>
                    <table>
                        <tr>
                            <td class="largefont1" valign="top"><b>Choose a Score to apply</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="largefont1" valign="top"><TMPL_INCLUDE NAME="_new_selector_ir_scores.tpl">&nbsp;&nbsp;&nbsp;<A HREF="javascript:send_please_wait_event('<TMPL_VAR GO_SCORE>')"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" WIDTH="87" HEIGHT="29" BORDER="0"></A>
                            </td>
                        </tr>
                    </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    <table>
                        <tr>
                            <td class="largefont1" valign="top"><b>Choose a Strategy to apply</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="largefont1" valign="top"><TMPL_INCLUDE NAME="_new_selector_ir_strategies.tpl">&nbsp;&nbsp;&nbsp;<A HREF="javascript:send_please_wait_event('<TMPL_VAR GO_STRATEGY>')"><IMG SRC="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" WIDTH="87" HEIGHT="29" BORDER="0"></A>
                            </td>
                        </tr>
                    </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    <table>
                        <tr>
                            <td class="largefont1" valign="top"><b><u>Build a custom strategy</u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="largefont1" valign="top"><font color="gray"><b>Coming Soon!</b></font></td>
                        </tr>
                    </table>
                    </td>
                </tr>
                <tr>
                    <td>
                    <table>
                        <tr>
                            <td class="largefont1" valign="top"><b><u>View reports</u></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td class="largefont1" valign="top"><font color="gray"><b>Coming Soon!</b></font></td>
                        </tr>
                    </table>
                    </td>
                </tr>
                </tr>
            </table>
                                                                                                                                        
        </td>
    </tr>
</table>

<table border="0" width="600">
	<tr>
    	<td><hr><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
	</tr>

	<tr>
		<td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR PREV_EVENT>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a></td>
	</TR>
</TABLE>

</DIV>

                                                                                                                                        
<script>
// document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>


<TMPL_INCLUDE NAME='../_new_footer.tpl'>
<!-- END new_irstrategy.tpl -->
