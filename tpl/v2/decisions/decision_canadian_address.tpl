<!-- BEGIN decision_canadian_names.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_CANADIAN_PHONES>
		<li><a href="javascript:<TMPL_UNLESS COL>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH2/SEARCH_CANADIAN_PHONES');submitevent();window.close();">Canadian Phones Search</a></li>
	</TMPL_UNLESS>	
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_canadian_names.tpl -->
