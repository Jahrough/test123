<!-- begin comp_court_invoices.tpl -->

    <table border="0" cellpadding="3" cellspacing="2" width="100%">
      <tr bgcolor="#cfcfcf">
        <td width="20%" class="unifont1" align="center"><b>Invoice#</b></td>
        <td width="20%" class="unifont1" align="center"><b>Invoice Date</b></td>
        <td width="20%" class="unifont1" align="center"><b>LoginID</b></td>
        <td width="20%" class="unifont1" align="center"><b>Reference</b></td>
        <td width="20%" class="unifont1" align="center"><b>Amount</b></td>
        <td width="20%" class="unifont1" align="center"><b>Description</b></td>
        <td width="20%" class="unifont1" align="center"><b>View Invoice</b></td>
      </tr>
      <TMPL_LOOP NAME=COURT_ORDER_DATA>
	<TMPL_IF NAME=court_invoice>
	  <tr bgcolor="#ffffff">
	    <td class="smallfont1" align="center" nowrap><TMPL_IF NAME=invoice_id><TMPL_VAR NAME=invoice_id><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	    <td class="smallfont1" align="left" nowrap><TMPL_VAR NAME=invoice_date>&nbsp;<TMPL_VAR NAME=DISPLAY_TZ></td>
	    <td class="smallfont1" align="center"><TMPL_IF NAME=loginid><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'MANAGE/UPDATE_USER'; this.document.forms[0].LOGINID.value = '<TMPL_VAR NAME=loginid>'; this.document.forms[0].submit();"><TMPL_VAR NAME=loginid></a><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	    <td class="smallfont1" align="left" nowrap>&nbsp;<TMPL_VAR NAME=reference></td>
	    <td class="smallfont1" align="right" nowrap><font color=green><TMPL_VAR NAME=amount></font></td>
	    <td class="smallfont1" align="center" nowrap><TMPL_VAR NAME=desc></td>
	    <td class="smallfont1" align="center"><a class="mainmenu" href="javascript:var postWindow=general_win('','Court_Search_Invoice','','',1,1,1,1,1,1);void(0);openWindowWithPost(postWindow,'<TMPL_VAR NAME=ACTION>?EVENT=BILLING/SHOW_COURT_ORDER_INVOICE&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&SUBJECT_ID=<TMPL_VAR NAME=invoice_id>','Court_Search_Invoice');postWindow.focus();">View</a></td>
	  </tr>
	<TMPL_ELSE>
	  <TMPL_IF NAME=INVOICE_URL>
	    <tr>
	      <td class="smallfont1" align="center" nowrap><TMPL_IF NAME=invoice_id><TMPL_VAR NAME=invoice_id><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	      <td class="smallfont1" align="left" nowrap><TMPL_VAR NAME=invoice_date></td>
	      <td class="smallfont1" align="center"><TMPL_IF NAME=loginid><a class="mainmenu" href="javascript:this.document.forms[0].EVENT.value = 'MANAGE/UPDATE_USER'; this.document.forms[0].LOGINID.value = '<TMPL_VAR NAME=loginid>'; this.document.forms[0].submit();"><TMPL_VAR NAME=loginid></a><TMPL_ELSE>&nbsp;</TMPL_IF></td>
	      <td class="smallfont1" align="left" nowrap>&nbsp;<TMPL_VAR NAME=reference></td>
	      <td class="smallfont1" align="right" nowrap><font color=green><TMPL_VAR NAME=amount></font></td>
	      <td class="smallfont1" align="center" nowrap><TMPL_VAR NAME=desc></td>
	      <td class="smallfont1" align="center"><a class="mainmenu" href="javascript:general_win('<TMPL_VAR NAME=INVOICE_URL>'); void(0);">View</a></td>
	    </tr>
	  </TMPL_IF>
	</TMPL_IF>
      </TMPL_LOOP>
      <tr>
        <td colspan="4" align="right" valign="middle" class="unifont1"><b>Total:</b></td>
        <td align="right" valign="middle" class="smallfont1"><font color=green><TMPL_VAR NAME=TOTAL_INVOICE></font></td>
        <td colspan="2" align="right" valign="middle" class="smallfont1">&nbsp;</td>
      </tr>
    </table>
    
    <br>

<!-- end comp_court_invoices.tpl -->
