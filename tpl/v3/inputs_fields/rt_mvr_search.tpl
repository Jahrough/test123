<INPUT type=hidden NAME="RT_MVR_SEARCH_BOTH" VALUE="<TMPL_VAR NAME=RT_MVR_SEARCH_BOTH>">
<INPUT type=hidden NAME="DPPA_VALUE" VALUE="<TMPL_VAR NAME=DPPA_VALUE>">
<INPUT type=hidden NAME="INIT_MAKE_MODEL" VALUE="1">
<INPUT type=hidden NAME="SELECTED_MAKE" VALUE="<TMPL_VAR NAME=SELECTED_MAKE>">
<INPUT type=hidden NAME="SELECTED_MODEL" VALUE="<TMPL_VAR NAME=SELECTED_MODEL>">
<INPUT type=hidden NAME="DEMO" VALUE="<TMPL_VAR NAME=DEMO>">
<INPUT type=hidden NAME="RT_MVR_RECID" VALUE="<TMPL_VAR NAME=RT_MVR_RECID>">
<INPUT type=hidden NAME="RECID_OVERRIDE" VALUE="">
<INPUT type=hidden NAME="LOCAL_ONLY" VALUE="0">
<INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION>">
<INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION_SSN" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION_SSN>">
<INPUT type=hidden NAME="PREVIOUS_SEARCH_WAS_LOCAL_ONLY" VALUE="<TMPL_VAR NAME=PREVIOUS_SEARCH_WAS_LOCAL_ONLY>">
<INPUT type=hidden NAME="POLK_GATEWAY" VALUE="<TMPL_VAR NAME=POLK_GATEWAY>">
<TMPL_IF DEMO><INPUT type=hidden NAME="HTMLPATH" VALUE=<TMPL_VAR NAME=HTMLPATH>></TMPL_IF>

<div class="searchNotesCon">
    <span class="textWithHover notes">
        <span class="baseText">
            Note: The Real-Time Vehicle Registration Search includes data from ...
        </span>
        <span class="hoverText">
            various data providers. Some data providers may require a Name and Address <br>
            to be included in your search. If you conduct a search without Name and <br>
            Address and do not receive a match (or the match you were expecting), you <br>
            may want to run another search including Name, Street Address, Zip Code or Name, <br>
            Street Address and City/State.
        </span>
    </span>
</div>

<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <TMPL_IF RT_MVR_SHOW_ALL_INPUTS><input type="text" class="w150px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off"></TMPL_IF>
</div>
<TMPL_IF RT_MVR_SHOW_ALL_INPUTS>
    <div>
        <input type="text" class="w150px" id="COMPANY_NAME" name="COMPANY_NAME" placeholder="Company Name">
    </div>
</TMPL_IF>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <div class="helpQtn"><div class="helpIcon"></div></div>
    <input type="text" class="w100px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w100px" id="YEAR_MAKE" name="YEAR_MAKE" onkeyup='enable_rt_mvr_fields()' value="<TMPL_VAR NAME=YEAR_MAKE>" placeholder="Year">&nbsp;
    <select class="w100px" id="MAKE" name="MAKE" onChange="init_rt_mvr_model()" placeholder="Make">
    <option value="" selected>   Make   </option>
    </select>
    &nbsp;<select class="w100px" id="MODEL" name="MODEL" onChange="set_rt_mvr_model()" placeholder="Model">
    <option value="" selected>  Model   </option>
    </select>
</div>
<div>
    <input type="text" class="w150px" id="VIN" name="VIN" value="<TMPL_VAR NAME=VIN>" placeholder="VIN">
    <input type="text" class="w100px" id="LICENSE_PLATE" name="LICENSE_PLATE"  value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Tag Number">
</div>

