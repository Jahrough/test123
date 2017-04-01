<!-- BEGIN decision_filing_number.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">		
	<TMPL_UNLESS DISABLE_UCC>
    <a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();"><script>write_image('ucc_filings_pull');</script>&nbsp;UCC FILINGS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_UCC>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_filing_number.tpl -->
