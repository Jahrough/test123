<!-- END decision_accident.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
   <td valign="top" id="searchPop">
    <ul>
	<TMPL_UNLESS DISABLE_ACCIDENT>
		<TMPL_IF NAME="NAT_ACC_ENABLE">
			<li><a href="javascript:setevent('SEARCH/SHOW_ACCIDENT');submitevent();window.close();">National Motor Vehicle Accidents</a></li>
		<TMPL_ELSE>
	    	<li><a href="javascript:setevent('SEARCH/SEARCH_ACCIDENT');submitevent();window.close();">Florida Accidents</a></li>
	   	</TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_ACCIDENT>
	    <li><a href="javascript:window.close();"><b><li>No Searches Available</b></a></li>
	</TMPL_IF>
    </td>
  </tr>
</table>
<!-- END decision_accident.tpl -->
