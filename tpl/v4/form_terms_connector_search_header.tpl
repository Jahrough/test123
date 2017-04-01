<label class="col col-1_5">
    <input type="radio" id="FORM_SEARCH" name="input-group" <TMPL_IF NAME="FORM_SEARCH">checked="checked"</TMPL_IF> onclick="refresh_input_group()" data-idx="1" value="FORM_SEARCH">
	<span>Form Search</span>
</label>
<label class="col col-3">
    <input type="radio" id="BOOLEAN_SEARCH" name="input-group" <TMPL_UNLESS NAME="FORM_SEARCH">checked="checked"</TMPL_UNLESS> onclick="refresh_input_group()" data-idx="2" value="NOT_FORM_SEARCH">
    <span>Terms &amp; Connectors Search</span>
</label>
<div class="col col-10">
    <div id="input-group-1-subtext" class="input-group-subtext">The LexisNexis search engine will return the most relevant information. Multiple fields increase precision.</div>
    <div id="input-group-2-subtext" class="input-group-subtext hidden">Modify your search using connectors: "car and boat", "car or auto" - <a href="javascript:void(0);" id="search-connector-examples">More Examples</a></div>
</div>
