    <TMPL_IF NAME=OPTION_USE_PHONETICS>
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Similar-Sounding Last Names</span>
            <input type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
    </TMPL_IF>

    <TMPL_IF NAME=OPTION_PHONETICS>
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Similar-Sounding Last Names</span>
            <input type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
    </TMPL_IF>

    <TMPL_IF NAME=OPTION_NICKNAMES>
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Nicknames of First Name</span>    
            <input type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
    </TMPL_IF>

    <TMPL_IF NAME=OPTION_SINGLE_CSZ>
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Single City, State, Zip Fields</span>
            <input class="only_one_field" type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">">    
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
    </TMPL_IF>

    <TMPL_IF NAME=OPTION_SINGLE_NAME>
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Single Name Entry Fields</span>
            <input class="only_one_field" type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">">
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
    </TMPL_IF>	
	
    <TMPL_IF NAME=OPTION_RADIUS_DROP>
        <label class="input block-display">
            <span class="form-control-label">Search Radius</span>
            <select id="RADIUS" name="RADIUS" class="form-control pull-right col-4">
                <option value=""></option>
                <option value="5" <TMPL_IF SELECTED_5>selected="selected"</TMPL_IF>>5 Miles</option>
                <option value="10" <TMPL_IF SELECTED_10>selected="selected"</TMPL_IF>>10 Miles</option>
                <TMPL_IF NAME="FAB_SEARCH">
                <option value="15" <TMPL_IF SELECTED_15>selected="selected"</TMPL_IF>>15 Miles</option>
                </TMPL_IF>
                <option value="20" <TMPL_IF SELECTED_20>selected="selected"</TMPL_IF>>20 Miles</option>
                <option value="30" <TMPL_IF SELECTED_30>selected="selected"</TMPL_IF>>30 Miles</option>
                <option value="40" <TMPL_IF SELECTED_40>selected="selected"</TMPL_IF>>40 Miles</option>
                <option value="50" <TMPL_IF SELECTED_50>selected="selected"</TMPL_IF>>50 Miles</option>
                <TMPL_UNLESS NAME="FAB_SEARCH">
                <option value="100" <TMPL_IF SELECTED_100>selected="selected"</TMPL_IF>>100 Miles</option>
                </TMPL_UNLESS>
            </select>
        </label>
    </TMPL_IF>
	
	<TMPL_IF NAME="OPTION_EXACT_PHONE_MATCH">
		<label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Only Include Exact Phone Matches</span>
			<input class="only_one_field" type="checkbox" id="<TMPL_VAR OPTION_NAME>" name="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> <TMPL_IF DATA_INPUTFIELD>data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">"</TMPL_IF>>
			<span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
		</label>
	</TMPL_IF>
	
	<TMPL_IF NAME="OPTION_NON_GOVERNMENTAL">
        <label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Non-Governmental Sources</span>
            <input class="only_one_field" type="checkbox" name="<TMPL_VAR OPTION_NAME>" id="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF>>    
            <span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>
        </label>
	</TMPL_IF>
	
	<TMPL_IF NAME="OPTION_CHK_NONGOVSOURCES">
		<label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Non-Governmental Sources</span>
			<input class="only_one_field" type="checkbox" id="<TMPL_VAR OPTION_NAME>" name="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> <TMPL_IF DATA_INPUTFIELD>data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">"</TMPL_IF>>
			<span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span>            
		</label>
	</TMPL_IF>
	<TMPL_IF NAME="OPTION_REGISTERED_AGENTS">
		<label class="checkbox-toggle input" for="<TMPL_VAR OPTION_NAME>">
            <span class="checkbox-text">Include Registered Agents </span>
			<input class="only_one_field" type="checkbox" id="<TMPL_VAR OPTION_NAME>" name="<TMPL_VAR OPTION_NAME>" <TMPL_IF CHECKED>checked="checked"</TMPL_IF> <TMPL_IF DATA_INPUTFIELD>data-inputfield="<TMPL_VAR NAME="DATA_INPUTFIELD">" data-altinputfield="<TMPL_VAR NAME="DATA_ALTINPUTFIELD">"</TMPL_IF>>
			<span class="toggle pull-right">
                <span class="toggle-on">ON</span>
                <span class="toggle-switch"></span>
                <span class="toggle-off">OFF</span>
            </span> 
		</label>
	</TMPL_IF>
    
