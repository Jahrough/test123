<!-- BEGIN decision_canadian_names.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_CANADIAN_PHONES>
    <a href="javascript:<TMPL_UNLESS COL>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH2/SEARCH_CANADIAN_PHONES');submitevent();window.close();"><script>write_image('canadian_phones_pull');</script>&nbsp;CANADIAN PHONES SEARCH</a><br>
	</TMPL_UNLESS>	
    </td>
  </tr>	  
</table>
<!-- END decision_canadian_names.tpl -->
