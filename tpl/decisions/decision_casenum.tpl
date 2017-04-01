<!-- BEGIN decision_casenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();"><script>write_image('bankruptcy_pull');</script>&nbsp;BANKRUPTCY SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_BANKRUPTCY>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_casenum.tpl -->
