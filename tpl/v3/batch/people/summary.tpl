<!DOCTYPE html>
<!-- BEGIN summary.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div class="fieldset-title">Batch Confirmation</div>
<fieldset class="batchFieldset">
    <table style="width:100%;">
  
  <tr>
    <td><br><b>Please verify the following information shown below are the options you have chosen for your batch process including the batch type and options selected:</b><br><br></td>
  </tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Batch Type/Search Template Selected:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td valign="top"><b>People Batching</b></td>
      </tr>
      <tr>        
        <td align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Additional Batch Search Options:</td>
        <td align="left"><b><TMPL_VAR APPEND_OPTIONS></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:</td>
        <td valign="top"><b><TMPL_VAR BATCH_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input File Name:</td>
        <td valign="top"><b><TMPL_VAR FILE_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input File Format:</td>
        <td valign="top"><b><TMPL_VAR FILE_TYPE></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Records in File:</td>
        <td valign="top"><b><TMPL_VAR NUM_RECS></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Address for Batch Notification:</td>
        <td valign="top"><b><TMPL_VAR BATCH_EMAIL_TO></b></td>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GLB Purpose:</td>
        <td valign="top"><b><TMPL_VAR GLB> - 
		<TMPL_IF GLB_1>
Transaction Authorized by Customer
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
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DPPA Purpose:</td>
        <td valign="top" nowrap="nowrap"><b><TMPL_VAR DPPA> </b>
      </tr>
     <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DMF Purpose:</td>
        <td valign="top" nowrap="nowrap"><b><TMPL_VAR DMF> </b>
      </tr>
      <tr>
        <td valign="top" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output File Format:</td>
        <td valign="top" nowrap="nowrap"><b>

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
      <TMPL_UNLESS HIDE_PRICES>
      <tr>
        <td valign="top" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum price per record charge is:</td>
        <td valign="top"><b>$<TMPL_VAR REC_CHARGE></b></td>
      </tr>
      <tr>
        <td valign="top" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum possible charge for the batch is:</td>
        <td valign="top"><b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
	  <TMPL_UNLESS IS_BUS_BATCH>
      <tr>
        <td valign="top" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Note:</b>&nbsp;&nbsp;Special Value offer not included in estimate.</td>
      </tr>
	  </TMPL_UNLESS>
      </TMPL_UNLESS>
	  <TMPL_IF IS_BATCH_ADMIN>
	  <tr>
	  <td colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Run this Batch Free of Charge</b>&nbsp;&nbsp;<input type=checkbox name="FREE_FLAG" value="1"<TMPL_IF FREE_FLAG> CHECKED</TMPL_IF>></td>
	  </tr>
	  </TMPL_IF>
    </table>
    </td>
  </tr>
</table>
</fieldset>
<TMPL_INCLUDE NAME="batch/shared/summary_buttons.tpl">

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
    <noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END summary.tpl -->
