<!-- BEGIN $RCSFile: $ -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_MARRIAGE>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_MARRIAGE');submitevent();window.close();">Marriages / Divorces</a></li>
	</TMPL_UNLESS>

	    <TMPL_IF DISABLE_MARRIAGE>
    		<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	    </TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END $RCSFile: $ -->
