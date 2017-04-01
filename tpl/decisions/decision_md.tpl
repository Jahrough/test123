<!-- BEGIN $RCSFile: $ -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_MARRIAGE>
    <a href="javascript:setevent('SEARCH/SEARCH_MARRIAGE');submitevent();window.close();"><script>write_image('marriage_pull');</script>&nbsp;MARRIAGES / DIVORCES</a><br>
	</TMPL_UNLESS>

	    <TMPL_IF DISABLE_MARRIAGE>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	    </TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END $RCSFile: $ -->
