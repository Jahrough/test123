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

</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR BATCH_NAME></b></td>
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

      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output Layout:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR OUTPUT_LAYOUT></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use Output Trigger File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF OUTPUT_TRIGGER>Yes<TMPL_ELSE>No</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use Input Trigger File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF INPUT_TRIGGER>Yes<TMPL_ELSE>No</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Send Job Statistics to:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR SENDSTATISTICS></b></td>
      </tr>

	  <TMPL_IF PUSH_FTP>
      <tr>
        <td valign="top" class="unifont1" colspan="2"NOWRAP><b>Retrieve Input File:</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hostname:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PUSH_HOSTNAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PUSH_USERNAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PUSH_PASSWORD></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Path:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PUSH_PATH></b></td>
      </tr>
	  </TMPL_IF>

	  <TMPL_IF PULL_FTP>
      <tr>
        <td valign="top" class="unifont1" colspan="2"NOWRAP><b>Send Output File:</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hostname:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PULL_HOSTNAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PULL_USERNAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PULL_PASSWORD></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Path:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PULL_PATH></b></td>
      </tr>
	  </TMPL_IF>

      <tr>
        <td valign="top" class="unifont1" colspan="2"NOWRAP><b>PGP Encryption:</b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Decrypt Input File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF PGP_DECRYPT>Yes<TMPL_ELSE>No</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Encrypt Output File:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF PGP_ENCRYPT>Yes<TMPL_ELSE>No</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Use Binary Encryption:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_IF PGP_ENCRYPT_BINARY>Yes<TMPL_ELSE>No</TMPL_IF></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PGP Key Name (recipient):</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PGP_RECIPIENT></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;File Containing PGP Key:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR PGP_FILE></b></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCH/START_BATCH');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END confirm.tpl -->
