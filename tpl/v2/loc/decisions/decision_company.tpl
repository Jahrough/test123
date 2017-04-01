<!-- BEGIN decision_company.tpl -->
<table border="0" cellpadding="5" cellspacing="0" width="600">
  <tr>
     <td valign="top" id="searchPop">
     <ul>

	<TMPL_UNLESS DISABLE_BUS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent()">Find a Business</a></li>
	</TMPL_UNLESS>
	</ul>
    </td>

     <td valign="top" id="searchPop">
     <ul>
	<TMPL_UNLESS DISABLE_DA_BASIC>
    <li><a href="javascript:setevent('SEARCH/SEARCH_DA_BASIC');submitevent();">Find a Phone</a></li>
	</TMPL_UNLESS>
    </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_company.tpl -->
