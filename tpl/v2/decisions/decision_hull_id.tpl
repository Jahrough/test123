<!-- BEGIN decision_firearms.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_VESSEL>
		<li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();">Watercraft Search</a></li>
	</TMPL_UNLESS>	
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_firearms.tpl -->
