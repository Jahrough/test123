<!-- BEGIN decision_phone.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
	<TMPL_UNLESS SSN_ONLY_SEARCH>
	<TMPL_UNLESS DISABLE_PERSON>
    <li><a href="javascript:setevent('SEARCH/SEARCH');submitevent();">Find a Person</a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();">Find a Business</a></li>
	</TMPL_UNLESS>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_phone.tpl -->
