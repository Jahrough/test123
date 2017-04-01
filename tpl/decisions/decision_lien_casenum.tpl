<!-- BEGIN decision_casenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="middle" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_LIEN>
    <a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();"><script>write_image('liens_judge_pull');</script>&nbsp;LIENS AND JUDGMENTS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_LIEN>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_casenum.tpl -->
