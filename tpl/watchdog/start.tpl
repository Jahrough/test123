<!-- BEGIN start.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

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
                  <div align=center><span class="reportselectorinfo"><b>NOTICE:</span>&nbsp; Effective May 1st, this product will no longer be available via the Batch Wizard</b></div><div>&nbsp;</div>
                  In an effort to streamline processes and deliver the very best information LexisNexis® has to offer, access to this product via the Batch Wizard will be deactivated on May 1st.
		  </TMPL_IF>
		  </TMPL_IF>
		  </TMPL_IF>
		  Accurint® offers flexible batch processes to monitor accounts.&nbsp; A dedicated Batch Consultant is available to help you customize your requirements from data needs, to input and output delivery methods, so you're assured of a solution best suited to the way you do business.&nbsp; <a href="javascript:show_post_popup('MYACCOUNT/SHOW_BATCH_CONSULTANT_EMAIL','ContactUs',450,500);"><b>Click here</b></a> to contact your Batch Consultant today!</td>
                </tr>
              </table>
              </td>
            </tr>
          </table>
        </div>

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/SAVE_START">

<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Watchdog <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Welcome to Accurint's Watchdog Wizard</b></td>
  </tr>

  <tr>
    <td align="center" class="unifont2"><br><table><tr><td class="unifont2">The Accurint Watchdog will continuously monitor a group of people you are interested in and notify you when Accurint detects a new phone, address, name, property transaction, vehicle change or bankruptcy filing.  You will get the information you need faster and with less work than manually searching. 
	
	<p>
	
	Simply upload a file and let us know what you want us to watch for.  We do the rest and send you the new information by email.</td></tr></table>
  </tr>
  
  <tr>
    <td align="center" class="unifont2"><br><b>Would you like to create a new Watchdog order or edit an existing order?</b><P>
		<input type="radio" name="EDIT_ORDER" value="0"<TMPL_UNLESS EDIT_ORDER> CHECKED</TMPL_UNLESS>>&nbsp;Create New Order&nbsp;&nbsp;&nbsp;<input type="radio" name="EDIT_ORDER" value="1"<TMPL_IF EDIT_ORDER> CHECKED</TMPL_IF>>&nbsp;Edit Existing Order</td>
  </tr>
  <TMPL_IF IS_WATCHDOG_ADMIN>  
  <tr>
    <td align="center" class="unifont2"><br><br><b>Enter the company ID for this order</b><P>
		<input type="text" name="COMPANY_ID" size=10 value="<TMPL_VAR COMPANY_ID>">
    </td>
  </tr>
  </TMPL_IF
  >
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="150" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WATCHDOG/SAVE_START')" onClick="if(!validate()){return false;}"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>
    
<TMPL_INCLUDE NAME="footer.tpl">

<!-- END start.tpl -->
