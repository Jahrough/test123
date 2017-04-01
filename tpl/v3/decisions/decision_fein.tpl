<!-- BEGIN decision_fein.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="375">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
	<TMPL_UNLESS DISABLE_BUS>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business Search</TMPL_IF></a></li>
	</TMPL_UNLESS>
	<TMPL_UNLESS DISABLE_CORPORATION>
	    <li><a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent();window.close();"><span id="corporations"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	    <TMPL_IF NAME="HYBRID_BLJ">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BLJL');submitevent();window.close();">Liens and Judgments Search</a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_BLJ">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();">Liens and Judgments Search</a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
	     <li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People at Work Locator<TMPL_ELSE>People at Work Search</TMPL_IF></a></li>
	</TMPL_UNLESS>
		
	<TMPL_UNLESS DISABLE_UCC>
	     <li><a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();window.close();">UCC Filings Search</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
	    <TMPL_IF NAME="HYBRID_BLJ">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BLJB');submitevent();window.close();">Bankruptcy Search</a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_BLJ">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();">Bankruptcy Search</a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BLJ>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BLJ');submitevent();window.close();">Bankruptcies, Liens and Judgments Search</a></li>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CORPORTION>
	<TMPL_IF DISABLE_BUS>
	<TMPL_IF DISABLE_PAW>
	<TMPL_IF DISABLE_UCC>
    	<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_fein.tpl -->
