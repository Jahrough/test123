<!-- BEGIN decision_casenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="375">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
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

	<TMPL_IF DISABLE_BLJ>
	<TMPL_IF DISABLE_BANKRUPTCY>
    		<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_casenum.tpl -->
