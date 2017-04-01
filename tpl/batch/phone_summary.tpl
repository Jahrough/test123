<!-- BEGIN batch/phone_sumamry -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">

  <TMPL_IF CONFIRMATION>
  <tr>
	<td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
  <tr>
  <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="help_contact_line.tpl"></td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Thank you for using Accurint</b></td>
  </tr>
	<TMPL_ELSE>
  <tr>
	<td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
  </tr>
  <tr>
	<td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="help_contact_line.tpl"></td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Reverse Phone Append Summary</b></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont2" align="center"><br>Results will be e-mailed to: <b><TMPL_IF BATCH_EMAIL_TO><TMPL_VAR BATCH_EMAIL_TO><TMPL_ELSE>Not provided</TMPL_IF></b><br><br></td>
  </tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File to Process:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR FILE_NAME><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<TMPL_VAR FILE_TYPE>)</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output Format:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>
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
		</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Approx. # of Records in File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR NUM_RECS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Results will be sent to:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF BATCH_EMAIL_TO><TMPL_VAR BATCH_EMAIL_TO><TMPL_ELSE>Not provided</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" colspan="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum possible charge for the batch is:&nbsp;&nbsp;<b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
  </tr>
  <TMPL_IF CONFIRMATION>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/START_PHONE_BATCH');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
  </tr>
  <TMPL_ELSE>
  <tr>


    <td>
<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="60" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCH/DEFINE_FILE')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('BATCH/CONFIRM')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>
    </td>


  </tr>
  </TMPL_IF>
</table>

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
</TMPL_IF>
