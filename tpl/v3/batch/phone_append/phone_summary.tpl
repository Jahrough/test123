<!DOCTYPE html>
<!-- BEGIN batch/phone_sumamry -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div class="fieldset-title">Batch Confirmation</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
        <tr>
            <td class="unifont2">
                Results will be e-mailed to: <b><TMPL_IF BATCH_EMAIL_TO><TMPL_VAR BATCH_EMAIL_TO><TMPL_ELSE>Not provided</TMPL_IF></b>
                <br><br>
            </td>
        </tr>

        <tr>
            <td class="batchsubheader">
                <TMPL_IF CONFIRMATION>
                    Thank you for using Accurint
                <TMPL_ELSE>
                    Reverse Phone Append Summary
                </TMPL_IF>
            </td>
        </tr>
	</table>

        <table class="mgt6" style="width:100%;">
            <tr>
                <td valign="top" class="unifont1" style="width:220px;" NOWRAP>File to Process:</td>
                <td valign="top" class="unifont1">
                    <b>
                        <TMPL_VAR FILE_NAME>&nbsp;&nbsp;&nbsp;(<TMPL_VAR FILE_TYPE>)
                    </b>
                </td>
            </tr>
            <tr>
                <td valign="top" class="unifont1" NOWRAP>Output Format:</td>
                <td valign="top" class="unifont1">
                    <b>
                        <TMPL_IF OUTPUT_TYPE_1>
                            Comma Delimited 
                        <TMPL_ELSE>
                            <TMPL_IF OUTPUT_TYPE_2>
                                Microsoft Word 
                            <TMPL_ELSE>
                                <TMPL_IF OUTPUT_TYPE_3>
                                    HTML 
                                <TMPL_ELSE>
                                    <TMPL_IF OUTPUT_TYPE_4>
                                        Adobe Acrobat (pdf) 
                                    <TMPL_ELSE>
                                        Comma Delimited Output File
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>
                    </b>
                </td>
            </tr>
            <tr>
                <td valign="top" class="unifont1" NOWRAP>Approx. # of Records in File:</td>
                <td valign="top" class="unifont1"><b><TMPL_VAR NUM_RECS></b></td>
            </tr>
            <tr>
                <td valign="top" class="unifont1" NOWRAP>Results will be sent to:</td>
                <td valign="top" class="unifont1"><b><TMPL_IF BATCH_EMAIL_TO><TMPL_VAR BATCH_EMAIL_TO><TMPL_ELSE>Not provided</TMPL_IF></b></td>
            </tr>
            <tr>
                <td valign="top" class="unifont1" colspan="2">Maximum possible charge for the batch is:&nbsp;&nbsp;<b>$<TMPL_VAR MAX_CHARGE></b></td>
            </tr>
            </table>
</fieldset>



<div class="section-row child-divs-right">
	<div>
		<TMPL_IF CONFIRMATION>
			<a class="btn darkgrey-btn" href="javascript:window.close()">Close</a>&nbsp;&nbsp;&nbsp;<a class="btn red-btn" href="javascript:printit()">Print</a>&nbsp;&nbsp;&nbsp;<a class="btn red-btn" href="javascript:send_please_wait_event('BATCH/START_PHONE_BATCH');">Run Another Batch</a>
		<TMPL_ELSE>		
			<a class="btn darkgrey-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/DEFINE_FILE')">Back</a>	
			<a class="btn red-btn" href="javascript:show_batch_event('<tmpl_var name=BATCH_CONTROLLER>/CONFIRM')" onClick="if(!validate_selects()){return false;}">Authorize Order</a>
		</TMPL_IF>	
	</div>
</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END batch/phone_sumamry.tpl -->
<TMPL_IF CONFIRMATION>
  <script language="JavaScript">
    preloads = new Array(3);
    for (m=0; m<3; m++) {
	preloads[m] = new Image();
    }
    preloads[0].src = "<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif";
    preloads[1].src = "<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif";
    preloads[2].src = "<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif";

    send_event('BATCH/PROCESS_PHONE');
  </script>
  <noscript>Your browser does not support JavaScript!</noscript>  
</TMPL_IF>
