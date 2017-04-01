<!-- BEGIN decision_casenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_CRIM>
	    <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CRIM');submitevent();window.close();">Criminal Records</a></li>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CRIM>
    		<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_casenum.tpl -->
