<!-- begin comp_account_history.tpl -->

    <table border="0" cellpadding="3" cellspacing="2" width="100%">
    <tr bgcolor="#CFCFCF">
    <td colspan="9">
      <table width="100%">
      <tr>
      <td align="left" class="myaccountlabel">Account History</td>
      <td align="right" class="smallfont1">
      [<TMPL_IF NAME="SHOW_ALL_BILLING_PERIODS">
	<!-- Billing periods to display - display all periods -->
	    <a class="mainmenu" href="javascript:send_event('BILLING/SUMMARY')"><b>View last <TMPL_VAR NAME=BILLING_PERIODS_DEFAULT> Billing Periods</b></a>
      <!-- end: Post Payment -->
      <TMPL_ELSE>
        <!-- Billing periods to display - display n periods -->
	    <a class="mainmenu" href="javascript:send_event('BILLING/SUMMARY_FULL')"><b>View all Account History</b></a>
      </TMPL_IF>]
      </td>
      </tr>
      </table>
    </td>
    </tr>
      <tr bgcolor="#cfcfcf">
        <td width="20%" class="unifont1"><b>Period</b></td>
        <td width="25%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="left" class="unifont1" width="99%"><b>Billed</b>&nbsp;&nbsp;</td>
            <td width="1%"><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><input type="checkbox" name="checkallpaid" onClick="checkall(this,'BILLING','accbilled','billedtotal')"></TMPL_UNLESS></td>
          </tr>
        </table>
        </td>
        <td width="25%">
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td align="left" class="unifont1" width="99%"><b>Credits Posted</b>&nbsp;&nbsp;</td>
            <td width="1%"><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><input type="checkbox" name="checkallbilled" onClick="checkall(this,'BILLING','accpaid','billedtotal')"></TMPL_UNLESS></td>
          </tr>
        </table>
        </td>
	<td align="center" class="smallfont1"><b>Payments Received</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
	<td align="center" class="smallfont1"><b>Total</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
	<td align="center" class="smallfont1"><b>Activity Detail</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
	<td align="center" class="smallfont1"><b>Activity Detail</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
	<td align="center" class="smallfont1"><b>Monthly Statement</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
	<td align="center" class="smallfont1"><b>Invoices</b><br><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" height="1" width="55" border="0"></td>
      </tr>
      <TMPL_LOOP NAME=COMP_PAY_DATA>
      <tr bgcolor="#ffffff">
        <td class="unifont1" align="left" nowrap><TMPL_VAR NAME=start_date> - <TMPL_VAR NAME=end_date></td>
        <td class="unifont1" align="right" nowrap><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><font color=green><TMPL_VAR NAME=amount_billed_disp></font>&nbsp;&nbsp;<input type="checkbox" name="accbilled" value="<TMPL_VAR NAME=amount_billed>" onClick="sum_total(this,document.BILLING.billed_due,'billedtotal',document.BILLING.checkallpaid);"></TMPL_UNLESS></td>
        <td class="unifont1" align="right" nowrap><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><font color=red><TMPL_IF NAME=show_credit_link><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/CREDIT_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();"><TMPL_VAR NAME=amount_credit_disp></a><TMPL_ELSE><TMPL_VAR NAME=amount_credit_disp></TMPL_IF></font>&nbsp;&nbsp;<input type="checkbox" name="accpaid" value="<TMPL_VAR NAME=amount_credit>" onClick="sum_total(this,document.BILLING.billed_due,'billedtotal',document.BILLING.checkallbilled);"></TMPL_UNLESS></td>
	<td class="unifont1" align="center" nowrap><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_IF NAME=show_payment_link><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/PAYMENT_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();"><TMPL_VAR NAME=amount_payment></a><TMPL_ELSE>&nbsp;</TMPL_IF></TMPL_UNLESS></td>
	<td class="unifont1" align="center" nowrap><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_VAR NAME=amount_total></TMPL_UNLESS></td>
	<td class="smallfont1" align="center"><TMPL_UNLESS NAME="ACTIVITY_DISABLED"><TMPL_IF NAME=show_activity><TMPL_IF NAME=SA><a class="mainmenu" href="javascript:display_billing_activity('<TMPL_VAR NAME=start_date>','<TMPL_VAR NAME=end_date>');">View</a><TMPL_ELSE><TMPL_IF NAME=ACTIVITY_DETAIL><a class="mainmenu" href="javascript:display_billing_activity('<TMPL_VAR NAME=start_date>','<TMPL_VAR NAME=end_date>');">View</a></TMPL_IF></TMPL_IF><TMPL_ELSE>&nbsp;</TMPL_IF><TMPL_ELSE>Not Available</TMPL_UNLESS></td>
	<td class="smallfont1" align="center"><TMPL_UNLESS NAME="ACTIVITY_DISABLED"><TMPL_IF NAME=show_activity><TMPL_IF NAME=SA><a class="mainmenu" href="javascript:var postWindow=general_win('','DownloadBillingWin',600,400,0,0,0,1,1,0);void(0);openWindowWithPost(postWindow,'<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_DOWNLOAD&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&BILLING_DATE_FROM=<TMPL_VAR NAME=start_date>&BILLING_DATE_TO=<TMPL_VAR NAME=end_date>','DownloadBillingWin');postWindow.focus();">Download</a><TMPL_ELSE><TMPL_IF NAME=ACTIVITY_DETAIL><a class="mainmenu" href="javascript:var postWindow=general_win('','DownloadBillingWin',600,400,0,0,0,1,1,0);void(0);openWindowWithPost(postWindow,'<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_DOWNLOAD&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&BILLING_DATE_FROM=<TMPL_VAR NAME=start_date>&BILLING_DATE_TO=<TMPL_VAR NAME=end_date>','DownloadBillingWin');postWindow.focus();">Download</a></TMPL_IF></TMPL_IF><TMPL_ELSE>&nbsp;</TMPL_IF><TMPL_ELSE>Not Available</TMPL_UNLESS></td>
	<td class="smallfont1" align="center"><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><TMPL_IF NAME=statement_url><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=statement_url>','Statement','','',1,1,1,1,1); void(0);">View</a><TMPL_ELSE>&nbsp;</TMPL_IF></TMPL_UNLESS></td>
	<td class="smallfont1" align="center">
	  <TMPL_UNLESS NAME="HIDE_BILLING_DETAILS">
	  <TMPL_IF NAME=court_entries>
	    <a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'BILLING/INVOICE_DETAILS'; this.document.forms[0].BILLING_PERIOD_ID.value = '<TMPL_VAR NAME=billing_period_id>'; this.document.forms[0].submit();">View</a>
	  <TMPL_ELSE>
	    <TMPL_IF NAME=invoice_url><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=invoice_url>','Invoice','','',1,1,1,1,1); void(0);">View</a><TMPL_ELSE>&nbsp;</TMPL_IF>
	  </TMPL_IF>
	  </TMPL_UNLESS>
	</td>
      </tr>
      </TMPL_LOOP>
    </table>
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td width="36%" align="right" class="unifont1"><TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><b>Calculated Due:</b>&nbsp;&nbsp;</TMPL_UNLESS></td>
	<TMPL_UNLESS NAME="HIDE_BILLING_DETAILS"><script>if (document.getElementById) {document.write("<td width='11%' align='right' class='unifont1' nowrap><b><span id='billedtotal'>$0.00</span></b><input type='hidden' name='billed_due' size='12' value=''></td>");} else {document.write("<td width='11%' align='right' class='nsinputs' nowrap><input type='text' name='billed_due' size='12' value='' onFocus='this.blur()'></td>");}</script></TMPL_UNLESS>
        <td width="5%" align="right" class="unifont1">&nbsp;</td>
        <td width="48%" align="left" class="smallfont1"><TMPL_IF NAME="HIDE_BILLING_DETAILS">Billing Authority for this company is <b><TMPL_VAR NAME="BA_NAME"> (ID: <TMPL_VAR NAME="BA_ID">)</b> <TMPL_ELSE><b>Please Note:</b>&nbsp;&nbsp; Calculated Due is for display purposes only and does not represent an official invoice or statement.</TMPL_IF></td>
      </tr>
    </table>

<!-- end comp_account_history.tpl -->
