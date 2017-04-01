<div class="row">
    <div class="input col col-10">
        <label>
            <input type="text" id="REFERENCE_CODE" class="form-control" name="REFERENCE_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>" maxlength="<TMPL_VAR NAME=REFERENCE_CODE_MAX_LENGTH>" <TMPL_IF NAME="GROUP_REFERENCE_CODE">readonly="readonly"</TMPL_IF> placeholder="Reference ID <TMPL_IF NAME="MARK_REF_CODE_AS_REQUIRED">*</TMPL_IF>">
            <span class="tooltip">Reference ID <TMPL_IF NAME="MARK_REF_CODE_AS_REQUIRED">*</TMPL_IF></span> 
        </label>
    </div>
    <TMPL_IF NAME=PORTAL_OTP_SEARCH>
        <div id="REFERENCE_CODE_LABEL" class="col col-10 hidden">
            <span id="ref_code_label">Reference ID:</span> <em><span id="ref_code_text">None.</span></em>
        </div>
    </TMPL_IF>
    <TMPL_IF NAME=IDM_QA>
        <div id="REFERENCE_CODE_LABEL" class="col col-10 hidden">
            <span id="ref_code_label">Reference ID:</span> <em><span id="ref_code_text">None.</span></em>
        </div>
    </TMPL_IF>

    <div id="REFERENCE_CODE_CRITERIA" class="col col-10">
        <span id="ref_code_criteria" class="textGray <TMPL_IF "REF_CODE_IS_STD">hidden</TMPL_IF>"><TMPL_VAR NAME=REF_CODE_ERR_MSG> </span>
    </div>
</div>
<hr>
