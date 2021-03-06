<!-- BEGIN v3/batch/new_summary.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">

<div class="fieldset-title">Order Confirmation Summary</div>
<fieldset class="batchFieldset" style="padding-top:0;border-top:0;">
    <table style="width:100%;">
        <tr>
            <td class="batchsubheader">Please verify that the options shown below are the options you have chosen for your batch process</td>
        </tr>
    </table>
    <br>
    <table style="width:100%;">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Batch Type/Search Template Selected:</td>
        <td class="unifont1">
            <b>
                <TMPL_IF APPEND_TITLE_STRING>
                    <TMPL_VAR APPEND_TITLE_STRING>
                </TMPL_IF>
                <TMPL_IF APPEND_STRING>
                    <TMPL_VAR APPEND_STRING>
                </TMPL_IF>
            </b>
        </td>
      </tr>
      <tr>        
        <td class="unifont1" align="left" valign="top">Additional Batch Search Options:</td>
        <td class="unifont1" align="left"><b><TMPL_VAR APPEND_OPTIONS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Job Name:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Input File Name:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR FILE_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Input File Format:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR FILE_TYPE></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Number of Records in File:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR NUM_RECS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Email Address for Batch Notification:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_EMAIL_TO></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>GLB Purpose:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR GLB></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>DPPA Purpose:</td>
        <td valign="top" class="unifont1"><b> <TMPL_VAR DPPA> </b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>Output File Format:</td>
        <td valign="top" class="unifont1" nowrap="nowrap"><b>
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
        <td valign="top" class="unifont1" nowrap="nowrap">Maximum price per record charge is:</td>
        <td valign="top" class="unifont1"><b>$<TMPL_VAR REC_CHARGE></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" nowrap="nowrap">Maximum possible charge for the batch is:</td>
        <td valign="top" class="unifont1"><b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
  </TMPL_UNLESS>
	  <TMPL_IF IS_BATCH_ADMIN>
	  <tr>
	  <td class="smallfont1" colspan="2"><b>Run this Batch Free of Charge</b><input type=checkbox name="FREE_FLAG" value="1"<TMPL_IF FREE_FLAG> CHECKED</TMPL_IF>></td>
	  </tr>
	  </TMPL_IF>
    </table>
</fieldset>

<div class="section-row child-divs-right">
    <div>
        <a class="btn darkgrey-btn" href="javascript:show_batch_event('<TMPL_VAR PREV_EVENT>')">
            Back
        </a>
        <a class="btn red-btn" href="javascript:send_please_wait_event('<TMPL_VAR NEXT_EVENT>')">
            Authorize Order
        </a>
    </div>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch/batch_footer.tpl">
<!-- END v3/batch/new_summary.tpl -->
