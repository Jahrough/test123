<!-- END decision_domains.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
	<TMPL_UNLESS DISABLE_WHOIS>
        <li><a href="javascript:setevent('SEARCH/SEARCH_WHOIS');submitevent();window.close();">Internet Domain Search</a></li>
        <li><a href="javascript:opener.general_win('http://www.<TMPL_VAR NAME=DOMAIN_NAME>','GotoWindow','','',1,1,1,1,1,1);void(0);window.close();">Go to Website</a></li>
	</TMPL_UNLESS>
	<TMPL_IF DISABLE_WHOIS>
    	<li><a href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_domains.tpl -->
