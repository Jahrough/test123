<!-- BEGIN decision_fein.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
    <TMPL_UNLESS DISABLE_BUS>
    <a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent()"><script>write_image('bus_search_pull');</script>&nbsp;BUSINESS SEARCH</a><br>
    </TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_CORPORATION>
    <a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent()"><script>write_image('corp_filings_pull');</script>&nbsp;CORPORATIONS</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	  <a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();"><script>write_image('liens_judge_pull');</script>&nbsp;LIENS AND JUDGMENTS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
    <a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();"><script>write_image('people_pull');</script>&nbsp;PEOPLE AT WORK SEARCH</a><br>
	</TMPL_UNLESS>
		
	<TMPL_UNLESS DISABLE_UCC>
    <a href="javascript:setevent('SEARCH2/SEARCH_UCC');submitevent();"><script>write_image('ucc_filings_pull');</script>&nbsp;UCC FILINGS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();"><script>write_image('bankruptcy_pull');</script>&nbsp;BANKRUPTCY SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CORPORTION>
	<TMPL_IF DISABLE_BUS>
	<TMPL_IF DISABLE_PAW>
	<TMPL_IF DISABLE_UCC>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_fein.tpl -->
