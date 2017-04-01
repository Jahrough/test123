<!-- BEGIN decision_charternum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_CORPORATION>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent()"><script>write_image('corp_filings_pull');</script>&nbsp;CORPORATIONS</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CORPORATION>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_charternum.tpl -->
