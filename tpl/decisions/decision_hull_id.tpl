<!-- BEGIN decision_firearms.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_VESSEL>
    <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('WS_SEARCH/SEARCH_VESSEL');submitevent();window.close();"><script>write_image('merch_vessels_pull');</script>&nbsp;WATERCRAFT SEARCH</a><br>
	</TMPL_UNLESS>	
    </td>
  </tr>	  
</table>
<!-- END decision_firearms.tpl -->
