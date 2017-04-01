<!-- BEGIN summary.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Watchdog Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner"><br><b>Order Confirmation Summary</b></td>
  </tr>

<TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
</TMPL_IF>
  
  <tr>
    <td class="unifont2"><br><b>Please verify that the options shown below are the options you have chosen for your Watchdog process:</b><br><br></td>
  </tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:</td>
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR ORDER_NAME></b></td>
      </tr>
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
        <td valign="top" class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><TMPL_VAR EMAIL></b></td>
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
        <td class="unifont1" align="left" valign="top" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Watch Options Selected:</td>
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
    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
<TMPL_UNLESS HIDE_PRICES>
  <tr>
    <td class="unifont1" align="right" width="550"><b>Monthly Watchdog Price: $<TMPL_VAR WEEKLY_PRICE></b>&nbsp;<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></td>
  </tr>
</TMPL_UNLESS>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="20" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WATCHDOG/DPPA')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('WATCHDOG/CONFIRM')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"></a><P></td>
  </tr>
<TMPL_UNLESS HIDE_PRICES>
  <tr>
    <td class="smallfont1" align="right" width="550">
		<img src="<TMPL_VAR NAME=IMGPATH>/star.gif" border="0" width="11" height="10">&nbsp;Does not include the updated data, which is provided at standard Accurint pricing.
	</td>
  </tr>
</TMPL_UNLESS>
  </table>
  </td>
  </tr>
</table>

</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="footer.tpl">
<!-- END summary.tpl -->
