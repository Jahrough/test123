<!-- BEGIN decision_firearms.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_IF DISABLE_FIREARMS>
    		<li><a href="javascript:window.close();"><b>No Searches Available</b></a></li>
	<TMPL_ELSE>
		<li><a href="javascript:setevent('SEARCH/SEARCH_FIREARMS');submitevent();">Federal Firearms Search</a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_firearms.tpl -->
