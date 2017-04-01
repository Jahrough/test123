<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="PHONEBATCH/SAVE_START">


<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_INCLUDE NAME="../../help_contact_line.tpl"></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Welcome to the <TMPL_IF FCOL_TCOL>Contact &amp; Locate<TMPL_ELSE>Accurint<small><sup>&reg;</sup></small></TMPL_IF> Phone and Address Batch Submission Wizard</b></td>
  </tr>
  
  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Enter a name for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
  </tr>

  <tr>
    <td align="center" class="smallfont1"><br>Note: This name will be used on all correspondence related to this batch job and will become the name of your output file.</td>
  </tr>
  
  <TMPL_IF IS_BATCH_ADMIN>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Company ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>"></td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br>&nbsp;&nbsp;<b>Enter the Login ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>"></td>
  </tr>
  <tr>
    <td align="center" class="unifont2"><br></td>
  </tr>
    <INPUT TYPE="HIDDEN" NAME="BATCH_TYPE" VALUE="PHONE">
  <tr>
    <td align="center" class="unifont2"><br><b></b></td>
  </tr>
  <tr>
    <td align="left" class="unifont2"><br></td>
  </tr>
  </TMPL_IF>

  <tr>
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="<TMPL_IF IS_BATCH_ADMIN>100<TMPL_ELSE>180</TMPL_IF>" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('PHONEBATCH/SAVE_START')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<script>
document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<!-- Temporary Pricing Layer - Remove When Not Needed -->
<div align="center" id="pricenotice" style="position: absolute; top: 170px; right: 100px;">
<table border="0" cellpadding="2" cellspacing="0" bgcolor="#ed1c24">
  <tr>
    <td>
    <table border="0" cellpadding="0" cellspacing="10" width="600" bgcolor="#cccccc">
      <tr>
        <td class="unifont2" valign="top" colspan="3">
	<br><br>
	<b>Pricing Notice:</b>
	</td>
      </tr>
      <tr>
        <td class="unifont1" valign="top" width="60%">
	<br><br>
	Address(Per Hit)<br>
	EDA(Directory Assistance) Phones(Per Hit)<br>
	Waterfall Phones Process (Per Hit)<br>
	Address and Phones (Per Hit)<br>
	Address and/or Phone Dedupe(Per Input)<br>
	</td>
	<td class="unifont1" valign="top" width="10%">
	Single<br><br>
	$0.13<br>
	$0.10<br>
	$0.23<br>
	$0.25<br>
	$0.03<br>
	</td>
	<td class="unifont1" valign="top" width="30%">
	<b>Multiple**</b><br><br>
	$0.16<br>
	$0.12<br>
	$0.25<br>
	$0.30<br>
	$0.04<br>
	</td>
      </tr>
      <tr>
        <td class="unifont1" valign="top" colspan="3">
	<b>**Multiple</b> = Total charge for 2 or more phones/addresses returned.
	</td>
      <tr>
      <tr>
        <td class="unifont1" valign="top" colspan="3" align="center">
	<br>
	<input name="CONTINUE_BATCH" type="button" value="Continue >>>" onclick="pricenotice.style.display = 'none';document.BATCH.BATCH_NAME.focus();">
	<br><br><br>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>
</div>
<script>document.BATCH.CONTINUE_BATCH.focus();</script>
<!-- End Temporary Pricing Layer -->

<TMPL_INCLUDE NAME="batch_footer.tpl">

<!-- END start.tpl -->
