<!-- END decision_domains.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_WHOIS>
        <a href="javascript:setevent('SEARCH/SEARCH_WHOIS');submitevent();window.close();"><script>write_image('internet_domains_pull');</script>&nbsp;INTERNET DOMAIN SEARCH</a><br>
        <a href="javascript:opener.general_win('http://www.<TMPL_VAR NAME=DOMAIN_NAME>','GotoWindow','','',1,1,1,1,1,1);void(0);window.close();"><script>write_image('internet_domains_pull');</script>&nbsp;GO TO WEBSITE</a><br>
    </script>
	</TMPL_UNLESS>
	<TMPL_IF DISABLE_WHOIS>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_domains.tpl -->
