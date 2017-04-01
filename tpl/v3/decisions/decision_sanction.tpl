<!-- END v3/decisions/decision_sanction.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <thead style="display: none">
    <tr>
      <th aria-label="Menu">&nbsp;</th>
    </tr>
  </thead>
  <tr>
    <td valign="top" id="searchPop">
      <ul>
		<TMPL_UNLESS DISABLE_SANCTION>
		<li><a href="javascript:setevent('SEARCH/SEARCH_SANCTION');submitevent();window.close();">Provider Sanction Search</a></li>
		</TMPL_UNLESS>
        <TMPL_IF DISABLE_SANCTION>
          <li><a title="Close this window" class="unifont1" href="javascript:window.close();"><strong>No Searches Available</strong></a></li>
        </TMPL_IF>
      </ul>
    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END v3/decisions/decision_sanction.tpl -->
