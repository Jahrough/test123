<!-- Additional Batch Search Options.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT>

<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="title_line.tpl"></td>
      </tr>
      <TMPL_IF SHOW_BATCH_UPDATE>
      <tr>
        <td class="wizardcounter" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
      </tr>
      </TMPL_IF>
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
    <td class="unifont2"><br><b>Please verify that the options shown below are the options you have chosen for your batch process:</b><br><br></td>
  </tr>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
  <tr>
    <td>
    <table width="500" border="0" cellpadding="2" cellspacing="2">
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Batch Type/Search Template Selected:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        <td valign="top" class="unifont1"><b>Phones Plus Batch</b></td>
      </tr>
      <tr>        
        <td class="unifont1" align="left" valign="top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Additional Batch Search Options:</td>
        <td class="unifont1" align="left"><b><TMPL_VAR APPEND_OPTIONS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Job Name:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input File Name:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR FILE_NAME></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Input File Format:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR FILE_TYPE></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Number of Records in File:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR NUM_RECS></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Email Address for Batch Notification:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR BATCH_EMAIL_TO></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GLB Purpose:</td>
        <td valign="top" class="unifont1"><b><TMPL_VAR GLB></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DPPA Purpose:</td>
        <td valign="top" class="unifont1"><b> <TMPL_VAR DPPA> </b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DMF Purpose:</td>
        <td valign="top" class="unifont1"><b> <TMPL_VAR DMF> </b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" NOWRAP>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Output File Format:</td>
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
        <td valign="top" class="unifont1" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum price per record charge is:</td>
        <td valign="top" class="unifont1"><b>$<TMPL_VAR REC_CHARGE></b></td>
      </tr>
      <tr>
        <td valign="top" class="unifont1" nowrap="nowrap">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Maximum possible charge for the batch is:</td>
        <td valign="top" class="unifont1"><b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
  </TMPL_UNLESS>
	  <TMPL_IF IS_BATCH_ADMIN>
	  <tr>
	  <td class="smallfont1" colspan="2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Run this Batch Free of Charge</b>&nbsp;&nbsp;<input type=checkbox name="FREE_FLAG" value="1"<TMPL_IF FREE_FLAG> CHECKED</TMPL_IF>></td>
	  </tr>
	  </TMPL_IF>
    </table>
    </td>
  </tr>
</table>

<table border="0" width="600">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="60" border="0"></td>
  </tr>
  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('PHONESPLUSBATCH/<TMPL_IF SHOULD_BATCH_DMF>DMF<TMPL_ELSE>DPPA</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_please_wait_event('PHONESPLUSBATCH/CONFIRM')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/autorder.gif" width="87" height="29" border="0"></a></td>
  </tr>
</table>

</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END summary.tpl -->
