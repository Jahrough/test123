<!-- BEGIN decision_proflicensenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <ul>
	<TMPL_IF DISABLE_PROF_LICENSE>
    		<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	<TMPL_ELSE>
		<li><a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();"><span id="professional_licenses"></span></a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_proflicensenum.tpl -->
