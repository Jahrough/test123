<!-- BEGIN decision_ssn.tpl -->
<table border="0" cellpadding="5" cellspacing="0" width="600">
  <tr>
     <td valign="top" id="searchPop">
    <ul>
	<TMPL_UNLESS DISABLE_PERSON>
          <li><a href="javascript:setevent('SEARCH/SEARCH');submitevent();window.close();">Find a Person</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();">Find a Business</a></li>
	</TMPL_UNLESS>

    </ul>
    </td>

     <td valign="top" id="searchPop">
     <ul>
    </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_ssn.tpl -->
