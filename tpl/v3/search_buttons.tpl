    <div>
        <div id="srch_button_only" style="display: block;">
            <TMPL_IF USE_MISC_PROCESS>
              <input type="button" class="btn redBtn" tabindex="101" id="searchBtn" value="Search"  onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_loading(); send_event('<TMPL_VAR NAME=SEARCH_EVENT>'<TMPL_IF POWER_BOOLEAN_SEARCH>,'<TMPL_VAR NAME=ACTION_REPORT>'<TMPL_ELSE><TMPL_UNLESS IRB>,'<TMPL_VAR NAME=ACTION_MISC>'</TMPL_UNLESS></TMPL_IF>);}">
            <TMPL_ELSE> 
                 <TMPL_IF REPORT_EVENT>
                      <input type="button" class="btn redBtn" tabindex="101" id="searchBtn" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{<TMPL_UNLESS NAME=DEMO>show_loading();</TMPL_UNLESS> show_report_win('<TMPL_VAR NAME=REPORT_EVENT>');}">
                 <TMPL_ELSE>
                      <input type="button" class="btn redBtn" tabindex="101" id="searchBtn" value="Search" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_loading(); send_event('<TMPL_VAR NAME=SEARCH_EVENT>');}">
                </TMPL_IF>
            </TMPL_IF>
        </div>
        <div id="rpt_button_only" style="display: none;">
            <input type="button" class="btn redBtn" tabindex="101" value="Report" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="javascript:placeholder_clear(); if(!validate()){ placeholders_reset();return false;}else{show_report_win('<TMPL_VAR NAME=REPORT_EVENT>');}"  class="isnotlink">
        </div>
        <div>
            <input type="button" class="btn darkBtn" onClick="javascript:clearAll();placeholders_reset();return false;" value="Clear Form"/>
        </div>
    </div>
    <div>
    <input type=text placeholder="Reference" class="refInput" name="REFERENCE_CODE" id="REF_CODE" value="<TMPL_VAR NAME=REFERENCE_CODE>"<TMPL_IF DISABLE_REF_CODE> DISABLED</TMPL_IF>><TMPL_IF REF_CODE_DROP_DOWN><br>&nbsp; <a style="color:#ed1c24;" href="javascript:void(0);" title="Select Reference Number" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','440','120',0,0,0,0,0,0,'','client_number');">Select Reference Number</a></TMPL_IF>
    </div>
