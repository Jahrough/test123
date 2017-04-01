<!-- BEGIN decision_filing_number.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
	<TMPL_UNLESS DISABLE_UCC>
	    <li><a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();window.close();">UCC Filings Search</a></li>
	</TMPL_UNLESS>
	
	<TMPL_UNLESS DISABLE_FICTIOUS>
	    <li><a href="javascript:setevent('SEARCH2/SEARCH_FICTIOUS');submitevent();window.close();">Fictitious Business Search</a></li>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_UCC>
    <TMPL_IF DISABLE_FICTIOUS>
    	<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
    </TMPL_IF>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_filing_number.tpl -->
