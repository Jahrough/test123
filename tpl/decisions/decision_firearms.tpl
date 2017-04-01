<!-- BEGIN decision_firearms.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_IF DISABLE_FIREARMS>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	<TMPL_ELSE>
	<a href="javascript:setevent('SEARCH/SEARCH_FIREARMS');submitevent();"><script>write_image('federal_firearms_pull');</script>&nbsp;FEDERAL FIREARMS SEARCH</a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_firearms.tpl -->
