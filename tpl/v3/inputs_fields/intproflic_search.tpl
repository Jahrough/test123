<!-- begin inputs_fields/intproflic_search.tpl -->
<div>
    <input type="text" class="w250px" id="INT_FULL_NAME" name="INT_FULL_NAME" value="<TMPL_VAR NAME=INT_FULL_NAME>" placeholder="Full Name">
</div>
<div>
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w150px" id="PATERNAL_LAST_NAME" name="PATERNAL_LAST_NAME" value="<TMPL_VAR NAME=PATERNAL_LAST_NAME>" placeholder="Paternal Last Name">
    <input type="text" class="w150px" id="MATERNAL_LAST_NAME" name="MATERNAL_LAST_NAME" value="<TMPL_VAR NAME=MATERNAL_LAST_NAME>" placeholder="Maternal Last Name">
</div>
<div>
    <div class="form-label-font">Certification Type:</div>
</div>
<div>
    <select name="LICENSE_TYPE">
        <TMPL_LOOP NAME=LICENSE_TYPE_LOOP>
            <option value="<TMPL_VAR NAME=VALUE>"<TMPL_IF NAME=SELECTED> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
        </TMPL_LOOP>
    </select>
</div>
<div>
    <div class="checkboxAndText">
        <div id="chk_similarNames" class="customCheckbox">
            <input type="checkbox" name="PHONETICS" style="display:none;" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>>
        </div>
        <span>Include similar-sounding names</span>
    </div>
    <div class="helpQtnIcon">i</div>
    <div class="checkboxAndText">
        <div id="chk_strict" class="customCheckbox">
            <input type="checkbox" name="STRICT" style="display:none;" value="1"<TMPL_IF NAME="STRICT">checked="checked"</TMPL_IF>>
        </div>
        <span>Strict Search</span>
    </div>
    <div class="helpQtnIcon">i</div>
</div>
<!-- end inputs_fields/intproflic_search.tpl -->
