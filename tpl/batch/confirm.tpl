<!-- BEGIN confirm.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Thank you for using Accurint</b></td>
  </tr>
  <tr>
    <td class="largefont1" align="center"><br><b>Your batch job confirmation number is:&nbsp;&nbsp;<TMPL_VAR CONFIRM_NUM></b></td>
  </tr>

  <TMPL_UNLESS FTP>
  <tr>
    <td class="unifont2" align="center"><br>Results will be e-mailed to: <b><TMPL_VAR BATCH_EMAIL_TO></b><br><br></td>
  </tr>
  </TMPL_UNLESS>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR BATCH_NAME></b></td>
      </tr>
	  <TMPL_UNLESS FTP>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File to Process:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR FILE_NAME><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(<TMPL_VAR FILE_TYPE>)</b></td>
      </tr>
	  </TMPL_UNLESS>
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
	  <TMPL_UNLESS FTP>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Approx. # of Records in File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR NUM_RECS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Results will be sent to:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR BATCH_EMAIL_TO></b></td>
      </tr>
	  </TMPL_UNLESS>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GLB Purpose:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR GLB> - 
		<TMPL_IF GLB_1>
Necessary to Effect, Administer<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;or Enforce a Transaction (Collections)
		<TMPL_ELSE>
		<TMPL_IF GLB_2>
Law Enforcement Investigations
		<TMPL_ELSE>
		<TMPL_IF GLB_3>
Law Firm and Attorneys - Beneficial<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Interest/Fiduciary
		<TMPL_ELSE>
		<TMPL_IF GLB_4>
Insurance
		<TMPL_ELSE>
		<TMPL_IF GLB_5>
Fraud Detection and Prevention
		<TMPL_ELSE>
		<TMPL_IF GLB_6>
Required Institutional Risk<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Control/Dispute Resolution
		<TMPL_ELSE>
None of the uses apply
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DPPA Purpose:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR DPPA></b>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DMF Purpose:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR DMF></b>
      </tr>
      <tr>
        <td class="unifont1" align="left" valign="top" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Append Options Selected:</td>
      </tr>
      <tr>
        <td align="center" valign="top" colspan="2">
        <table border="0" cellpadding="3" cellspacing="0" width="400">
          <tr>
            <td class="unifont1"><b><TMPL_VAR APPEND_OPTIONS></b></td>
          </tr>
        </table>
        </td>
      </tr>
      <TMPL_UNLESS HIDE_PRICES>
	  <TMPL_UNLESS FTP>
      <tr>
        <td valign="top" class="unifont1" colspan="2"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum possible charge for the batch is:&nbsp;&nbsp;<b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
	  <TMPL_UNLESS IS_BUS_BATCH>
      <tr>
        <td valign="top" class="smallfont1" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Note:</b>&nbsp;&nbsp;Special Value offer not included in estimate.</td>
      </tr>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>
     </TMPL_UNLESS>
    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
  </tr>
  <TMPL_IF IS_BUS_BATCH>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/BUS_START_BATCH');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
  </tr>
  <TMPL_ELSE>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/<TMPL_UNLESS SHOW_BATCH_UPDATE>START_BATCH<TMPL_ELSE>SERVICES</TMPL_UNLESS>');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
  </tr>
  </TMPL_IF>
</table>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END confirm.tpl -->
