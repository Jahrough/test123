<!-- BEGIN decision_casenum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_CRIM>
    <a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_CRIM');submitevent();window.close();"><script>write_image('criminal_conv_pull');</script>&nbsp;CRIMINAL RECORDS</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CRIM>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_casenum.tpl -->
