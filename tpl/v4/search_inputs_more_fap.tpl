
<div class="row">
    <button type="button" id="fap-more-options" class="btn btn-link<TMPL_UNLESS NAME="EXPAND_MORE_SEARCH_OPTIONS"> collapsed</TMPL_UNLESS>" data-toggle="collapse">
        <strong><TMPL_IF NAME="EXPAND_MORE_SEARCH_OPTIONS">Less<TMPL_ELSE>More</TMPL_IF> Options</strong> 
        <span class="show-hidden-data-icon"></span>
    </button>
    <INPUT type="hidden" NAME="EXPAND_MORE_SEARCH_OPTIONS" value="<TMPL_IF NAME="EXPAND_MORE_SEARCH_OPTIONS">yes<TMPL_ELSE>no</TMPL_IF>">
</div>
<div class="row more-inputs<TMPL_UNLESS NAME="EXPAND_MORE_SEARCH_OPTIONS"> hidden</TMPL_UNLESS>">
    <label class="col col-3">
        <input id="OTHER_LAST_NAME" name="OTHER_LAST_NAME" class="form-control" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" placeholder="Other Last Name" type="text">
        <span class="tooltip">Other Last Name</span> 
    </label>
    <label class="col col-3">
        <input id="RELATIVE_FIRST_NAME" name="RELATIVE_FIRST_NAME" class="form-control" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME>" placeholder="Relative First Name" type="text">
        <span class="tooltip">Relative First Name</span> 
    </label> 
    <label class="col col-3">
        <input id="RELATIVE_FIRST_NAME2" name="RELATIVE_FIRST_NAME2" class="form-control" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME2>" placeholder="Other Relative First Name" type="text">
        <span class="tooltip">Other Relative First Name</span> 
    </label>
</div>
<div class="row more-inputs<TMPL_UNLESS NAME="EXPAND_MORE_SEARCH_OPTIONS"> hidden</TMPL_UNLESS>">
    <label class="col col-3">
        <input id="OTHER_CITY" name="OTHER_CITY" class="form-control" value="<TMPL_VAR NAME=OTHER_CITY>" placeholder="Other City" type="text">
        <span class="tooltip">Other City</span> 
    </label> 
    <label class="col col-3">
        <select id="OTHER_STATE" class="form-control" name="OTHER_STATE">
            <option value="">All Previous States</option>
            <TMPL_INCLUDE NAME="all_states_options_list.tpl">
        </select>
        <span class="hidden-label">Previous States</span>
    </label>
    <label class="col col-3">
        <select id="OTHER_STATE2" class="form-control" name="OTHER_STATE2">
            <option value="">All Other Previous States</option>
            <TMPL_INCLUDE NAME="all_states_options_list.tpl">
        </select>
        <span class="hidden-label">Other Previous States</span>
    </label>
</div>
