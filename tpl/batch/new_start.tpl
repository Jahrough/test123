<!-- BEGIN new_start.tpl -->
<TMPL_INCLUDE NAME="_new_header.tpl">

<TMPL_IF IS_INSTANTID_BATCH><!--IID-->
        <br>
        <div align="center">
          <table border="0" cellpadding="2" cellspacing="0" width="600" class="myaccountborder">
            <tr>
              <td valign="top">
              <table border="0" cellpadding="5" cellspacing="0" width="100%" class="reportselectbody">
                <tr>
                  <td class="smallfont1">
                  <TMPL_IF IRS><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <TMPL_IF GOV><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <TMPL_IF LE><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <div align=center><span class="reportselectorinfo"><b>NOTICE:</span>&nbsp; Effective May 1st, this product will no longer be available via the Batch Wizard</b></div>
                  <div>&nbsp;</div>
		  In an effort to streamline processes and deliver the very best information LexisNexis® has to offer, access to this product via the Batch Wizard will be deactivated on May 1st.
		  </TMPL_IF>
		  </TMPL_IF>
		  </TMPL_IF>
		  Accurint® offers multiple batch processes to help increase right-party contact.&nbsp; A dedicated Batch Consultant is available to help you customize your requirements from data needs, to input and output delivery methods so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> to contact your Batch Consultant today!</td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </div>
<TMPL_ELSE>
<TMPL_IF IS_PATRIOTACT_BATCH><!--PA-->
        <br>
        <div align="center">
          <table border="0" cellpadding="2" cellspacing="0" width="600" class="myaccountborder">
            <tr>
              <td valign="top">
              <table border="0" cellpadding="5" cellspacing="0" width="100%" class="reportselectbody">
                <tr>
                  <td class="smallfont1">
                  <TMPL_IF IRB><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <TMPL_IF GOV><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <TMPL_IF LE><div><span class="reportselectorinfo"><b>HELPFUL TIP:</b></span></div><TMPL_ELSE>
                  <div align=center><span class="reportselectorinfo"><b>NOTICE:</span>&nbsp; Effective March 27th, this product will no longer be available via the Batch Wizard</b></div>
                  <div>&nbsp;</div>
                  In an effort to streamline processes and deliver the very best information LexisNexis® has to offer, access to this product via the Batch Wizard will be deactivated on March 27th.
		  </TMPL_IF>
		  </TMPL_IF>
		  </TMPL_IF>
		  Accurint® offers multiple batch processes to help increase right-party contact.&nbsp; A dedicated Batch Consultant is available to help you customize your requirements from data needs, to input and output delivery methods so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> to contact your Batch Consultant today!</td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </div>
</TMPL_IF>
</TMPL_IF>

<input type="hidden" name="EVENT" value="<TMPL_VAR NEXT_EVENT>">
<input type="hidden" name="EVENTARGUMENT">

<div align="center">

<table border="0" width="600">
	<tr>
		<td width="600">
		<br>
<TMPL_INCLUDE NAME="_new_navigation.tpl">
		<br>
		</td>
	</tr>
	<tr>
		<td class="batchbanner" align="center"><b><TMPL_VAR START_PAGE_TITLE></b></td>
	</tr>
  
<TMPL_IF FREE_TRIAL_CREDITS>

	<tr>
		<td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
	</tr>

</TMPL_IF>
  
	<tr>
		<td align="left" class="unifont2"><br><b>Enter a name for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_NAME" value="<TMPL_VAR BATCH_NAME>"></td>
	</tr>

	<tr>
		<td align="left" class="smallfont1"><br><b>Note</b>: This name will be used on all correspondence related to this batch job and will become the name of your output file.</td>
	</tr>
  
<TMPL_IF IS_BATCH_ADMIN>

	<tr>
		<td align="left" class="unifont2"><br><b>Enter the Company ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_COMPANY_ID" value="<TMPL_VAR BATCH_COMPANY_ID>"></td>
	</tr>
	<tr>
		<td align="left" class="unifont2"><br><b>Enter the Login ID for your batch job:</b>&nbsp;&nbsp;<input type=text name="BATCH_LOGIN_ID" value="<TMPL_VAR BATCH_LOGIN_ID>"></td>
	</tr>
	<tr>
		<td align="center" class="unifont2"><br></td>
	</tr>
	<tr>
		<td align="left" class="unifont2">
		

		</td>
	</tr>

</TMPL_IF>

	<tr>
		<td><hr></td>
	</tr>
	<tr>
		<td valign="bottom" align="right" width="550"><a href="javascript:send_event('<TMPL_VAR NEXT_EVENT>')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
	</tr>

<TMPL_IF IS_BATCH_ADMIN>
<TMPL_IF TEMP>
	<tr><td>
<TMPL_INCLUDE NAME="_new_admin_menu.tpl">
	</td></tr>
</TMPL_IF>
</TMPL_IF>
</table>
</div>

<script>
document.BATCH.BATCH_NAME.focus();
<TMPL_IF ERROR_MESG>alert('<TMPL_VAR ERROR_MESG>\n\n');</TMPL_IF>
</script>

<TMPL_INCLUDE NAME="_new_footer.tpl">

<!-- END new_start.tpl -->
