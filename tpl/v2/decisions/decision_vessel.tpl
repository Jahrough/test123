<!-- BEGIN decision_vessel.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_VESSEL>
	    <li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();">Watercraft Search</a></li>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_VESSEL>
		<li><a href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_vessel.tpl -->
