<!-- BEGIN decision_parcel.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	<TMPL_UNLESS DISABLE_ASSESSMENT>
    <a href="javascript:setevent('SEARCH/SEARCH_PROP');submitevent()"><script>write_image('prop_ass_pull');</script>&nbsp;PROPERTY ASSESSMENT</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEEDS>
    <a href="javascript:setevent('SEARCH/SEARCH_PROP_DEED');submitevent()"><script>write_image('prop_deeds_pull');</script>&nbsp;PROPERTY DEEDS</a><br>
	</TMPL_UNLESS>

	<TMPL_IF SHOW_AVM>
	<TMPL_UNLESS DISABLE_AVM>
	  <li><a href="javascript:setevent('SEARCH/SHOW_AVM');submitevent();">AUTOMATED VALUATION MODELS</a></li>
	</TMPL_UNLESS>
	</TMPL_IF>

	<TMPL_IF DISABLE_DEEDS>
	  <TMPL_IF DISABLE_ASSESSMENT>
    	<a class="unifont1" href="javascript:window.close();"><b><li>No Searches Available</b></a><br>
	  </TMPL_IF>
	</TMPL_IF>
    </td>
  </tr>	  
</table>
<!-- END decision_parcel.tpl -->
