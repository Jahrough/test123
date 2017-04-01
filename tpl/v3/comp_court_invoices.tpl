<!-- begin comp_court_invoices.tpl -->

    <table style="width: 1150px;" role="grid" id="account-summary" class="fieldset-datatable w100pc display dataTable no-footer">
      <tr role="row" bgcolor="#CFCFCF">
        <th><b>Invoice#</b></th>
        <th><b>Invoice Date</b></th>
        <th><b>LoginID</b></th>
        <th><b>Reference</b></th>
        <th><b>Amount</b></th>
        <th><b>Description</b></th>
        <th><b>View Invoice</b></th>
      </tr>
      <TMPL_LOOP NAME=COURT_ORDER_DATA>
	<TMPL_IF NAME=court_invoice>
	  <tr role="row" bgcolor="#ffffff">
	    <td align="center" nowrap><TMPL_IF NAME=invoice_id><TMPL_VAR NAME=invoice_id><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	    <td align="left" nowrap><TMPL_VAR NAME=invoice_date>&nbsp;<TMPL_VAR NAME=DISPLAY_TZ></td>
	    <td align="center"><TMPL_IF NAME=loginid><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'MANAGE/UPDATE_USER'; this.document.forms[0].LOGINID.value = '<TMPL_VAR NAME=loginid>'; this.document.forms[0].submit();"><TMPL_VAR NAME=loginid></a><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	    <td align="left" nowrap>&nbsp;<TMPL_VAR NAME=reference></td>
	    <td align="right" nowrap><font color=green><TMPL_VAR NAME=amount></font></td>
	    <td align="center" nowrap><TMPL_VAR NAME=desc></td>
	    <td align="center"><a class="btn red-btn" href="javascript:var postWindow=general_win('','Court_Search_Invoice','','',1,1,1,1,1,1);void(0);openWindowWithPost(postWindow,'<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_COURT_ORDER_INVOICE&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&SUBJECT_ID=<TMPL_VAR NAME=invoice_id>','Court_Search_Invoice');postWindow.focus();">View</a></td>
	  </tr>
	<TMPL_ELSE>
	  <TMPL_IF NAME=INVOICE_URL>
	    <tr role="row" bgcolor="#ffffff">
	      <td align="center" nowrap><TMPL_IF NAME=invoice_id><TMPL_VAR NAME=invoice_id><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	      <td align="left" nowrap><TMPL_VAR NAME=invoice_date></td>
	      <td align="center"><TMPL_IF NAME=loginid><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'MANAGE/UPDATE_USER'; this.document.forms[0].LOGINID.value = '<TMPL_VAR NAME=loginid>'; this.document.forms[0].submit();"><TMPL_VAR NAME=loginid></a><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	      <td align="left" nowrap>&nbsp;<TMPL_VAR NAME=reference></td>
	      <td align="right" nowrap><font color=green><TMPL_VAR NAME=amount></font></td>
	      <td align="center" nowrap><TMPL_VAR NAME=desc></td>
	      <td align="center"><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=INVOICE_URL>'); void(0);">View</a></td>
	    </tr>
	  </TMPL_IF>
	</TMPL_IF>
      </TMPL_LOOP>
      <tr role="row" border="0">
        <td colspan="4" align="right" valign="middle" ><b>Total:</b></td>
        <td align="right" valign="middle"><font color=green><TMPL_VAR NAME=TOTAL_INVOICE></font></td>
        <td colspan="2" align="right" valign="middle" >&nbsp;</td>
      </tr>
    </table>
    
    <br>

<!-- end comp_court_invoices.tpl -->
