<!-- BEGIN decision_charternum.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
	<TMPL_UNLESS DISABLE_CORPORATION>
		<li><a href="javascript:setevent('WS_SEARCH/SEARCH_CORPORATION');submitevent()"><span id="corporations"></span></a></li>
	</TMPL_UNLESS>

	<TMPL_IF DISABLE_CORPORATION>
    		<li><a class="unifont1" href="javascript:window.close();"><b>No Searches Available</b></a></li>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_charternum.tpl -->
