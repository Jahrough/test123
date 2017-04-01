<!-- begin inputs_fields/soc_search.tpl -->
<div>
    <input type="text" class="w329px" id="EMAIL" name="EMAIL" value="<TMPL_VAR NAME=EMAIL>" placeholder="Email">
</div>
<div>
	<div class="checkboxAndText">
		<div id="chk_enhancedLink" aria-label="Find all emails for Subject" class="customCheckbox">
			<input type="checkbox" aria-label="Find all emails for Subject - additional cost" name="ENHANCED_LINKING" style="display:none;" value="1"<TMPL_IF NAME="ENHANCED_LINKING">checked="checked"</TMPL_IF>>
		</div>
		<span>Find all emails for Subject - additional cost</span>
	</div>
</div>
<!-- end inputs_fields/soc_search.tpl -->
