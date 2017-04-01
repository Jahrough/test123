<!-- BEGIN v2/decisions/decision_bankruptcy $ -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <thead style="display: none">
    <tr>
      <th aria-label="Menu">&nbsp;</th>
    </tr>
  </thead>
  <tr>
     <td valign="top" id="searchPop">
     <ul>
		<TMPL_UNLESS DISABLE_BANKRUPTCY>
			<TMPL_IF NAME="HYBRID_BLJ">
			<li><a href="javascript:setevent('SEARCH/SEARCH_BLJB');submitevent();window.close();">Bankruptcy Search</a></li>
			<TMPL_ELSE>
			<TMPL_UNLESS NAME="COMBINED_BLJ">
			<li><a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();">Bankruptcy Search</a></li>
			</TMPL_UNLESS>
			</TMPL_IF>
		</TMPL_UNLESS>
		
      <TMPL_IF DISABLE_BANKRUPTCY>
        <li><a title="Close this window" class="unifont1" href="javascript:window.close();"><strong>No Searches Available</strong></a></li>
      </TMPL_IF>
    </ul>
    </td>
  </tr>   
</table>
<script>get_search_labels();</script>
<!-- END v2/decisions/decision_bankruptcy $ -->
