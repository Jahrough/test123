<div>* Required Fields</div>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name/Initial">
    <TMPL_IF NAME=MVR_REQUIREMENT_1><INPUT type=hidden NAME="MVR_REQUIREMENT_1" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_1>"></TMPL_IF>
    <TMPL_IF NAME=MVR_REQUIREMENT_2><INPUT type=hidden NAME="MVR_REQUIREMENT_2" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_2>"></TMPL_IF>
    <TMPL_IF NAME=MVR_REQUIREMENT_3><INPUT type=hidden NAME="MVR_REQUIREMENT_3" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_3>"></TMPL_IF>
    <TMPL_IF NAME=MVR_REQUIREMENT_4><INPUT type=hidden NAME="MVR_REQUIREMENT_4" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_4>"></TMPL_IF>
    <TMPL_IF NAME=MVR_REQUIREMENT_5><INPUT type=hidden NAME="MVR_REQUIREMENT_5" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_5>"></TMPL_IF>
    <TMPL_IF NAME=MVR_REQUIREMENT_7><INPUT type=hidden NAME="MVR_REQUIREMENT_7" VALUE="<TMPL_VAR NAME=MVR_REQUIREMENT_7>"></TMPL_IF>
</div>
<div>
    <input type="text" class="w150px" id="LICENSE_NUMBER" name="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" placeholder="License Number" autocomplete="off">
    <input type="text" class="w120px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
</div>
<div>
    <div>
        <div class="form-label-font mgb6">State:*</div>
        <div>
            <select name="MVR_STATE_ID" id="MVR_STATE_ID" onchange="javascript:send_event('SEARCH/SHOW_MVR')">
              <option value="0">Select a State</option>
              <TMPL_LOOP NAME=STATE_LIST>
              <option value="<TMPL_VAR NAME="mvr_info_id">"<TMPL_IF NAME="selected"> selected</TMPL_IF>>
              <TMPL_VAR NAME="description"><TMPL_UNLESS NAME="HIDE_MVR_PRICES">  -  $<TMPL_VAR NAME="price"></TMPL_UNLESS><TMPL_IF NAME="years">  -  <TMPL_VAR NAME="years"> years</TMPL_IF>
              </option>
              </TMPL_LOOP>
            </select>
        </div>
    </div>
</div>
