<!-- BEGIN decision_proflicensenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_IF DISABLE_PROF_LICENSE>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	<TMPL_ELSE>
	<a href="javascript:setevent('SEARCH2/SEARCH_PROF_LICENSE');submitevent();"><script>write_image('pro_licenses_pull');</script>&nbsp;PROFESSIONAL LICENSE SEARCH</a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_proflicensenum.tpl -->
