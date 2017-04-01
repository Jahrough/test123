<!-- BEGIN decision_all.tpl -->
<!-- PLEASE NOTE THAT CURRENTLY ONLY NAME Search IS ON EVERY Search -->
<script>
    window.resizeTo(600,680);
</script>

<table border="0" cellpadding="5" cellspacing="0" width="600">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	
  <TMPL_UNLESS SSN_ONLY_SEARCH>
    <TMPL_UNLESS DISABLE_PERSON>
      <li><a href="javascript:setevent('SEARCH/SEARCH');submitevent();">Find a Person</a></li>
    </TMPL_UNLESS>
  </TMPL_UNLESS>

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
<!-- END decision_all.tpl -->
