<div class="radioRow virtualIdentity">
    <INPUT type=hidden NAME="SHOWING_SEARCH_RESULTS" ID="SHOWING_SEARCH_RESULTS" VALUE="<TMPL_VAR NAME=SHOWING_SEARCH_RESULTS>" />
    <INPUT type=hidden NAME="SHOW_EMAIL_FORM" ID="SHOW_EMAIL_FORM" VALUE="<TMPL_VAR NAME=SHOW_EMAIL_FORM>" />
    <input type="hidden" name="VIR_EMAIL_INPUTS" ID="VIR_EMAIL_INPUTS" value="0" />
    <div>
        <span class="font-Arial11" style="margin-top:4px;display:block;">Find Virtual Identity by&nbsp;</span>
    </div>

    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" name="CC_ALL" style="display:none;" id="ENABLE_ALL" value="1"<TMPL_IF DISABLED_ALL> disabled</TMPL_IF> <TMPL_IF CC_ALL> checked="checked"</TMPL_IF>/>
        </div>
        <span class="font-Arial12" style="margin-top:2px;">Name & Address</span>
    </div>
    
    <div>
        <span class="font-Arial12" style="margin:4px 0 0 5px;display:block;">OR</span>
    </div>
    
    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" style="display:none;" name="CC_ALL" id="DISABLE_ALL" value="0" <TMPL_IF
                DISABLED_ALL> disabled="true"</TMPL_IF>
            <TMPL_UNLESS CC_ALL> checked="checked"</TMPL_UNLESS>/>
        </div>
        <span class="font-Arial12" style="margin-top:2px;">Email Address</span>
    </div>
    
    <div id="CC_GROUP" style="display: <TMPL_IF CC_ALL>block<TMPL_ELSE>none</TMPL_IF>;margin-top:4px;">
        <input type="hidden" name="SHOW_REPORT_BUTTON" ID="SHOW_REPORT_BUTTON" value="0" />
        <span class="textWithHover" style="display:block;font-weight:bold;">
            <span class="baseText blueFont" style="font-size:12px;">Note</span>
            <span class="hoverText centerHover">
                The more criteria you provide the more precise (narrow) the<br/>results will be. Use less criteria to broaden results.
            </span>
        </span>
    </div>
</div>
<div id="CC_GROUP2" style="display: <TMPL_IF CC_ALL>block<TMPL_ELSE>none</TMPL_IF>;">
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div id="CC_GROUP3" style="display: <TMPL_IF CC_ALL>block<TMPL_ELSE>none</TMPL_IF>;">
    <input type="text" class="w150px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off">
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
</div>
<div id="CC_GROUP4" style="display: <TMPL_IF CC_ALL>block<TMPL_ELSE>none</TMPL_IF>;">
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div id="CC_GROUP5" style="display: <TMPL_IF CC_ALL>block<TMPL_ELSE>none</TMPL_IF>;">
    <input type="text" class="w150px" id="DOB" name="DOB" placeholder="DOB">
    <div class="helpQtn"><div class="helpIcon"></div></div>
</div>
<div id="CC_GROUP6" style="display: <TMPL_IF CC_ALL>none<TMPL_ELSE>block</TMPL_IF>;">
    <input type="text" class="w222px" id="EMAIL" name="EMAIL"  value="<TMPL_VAR NAME=EMAIL>" placeholder="Email Address">
    <input type="hidden" NAME="VIR_EMAIL_INPUTS" ID="VIR_EMAIL_INPUTS" value="<TMPL_UNLESS CC_ALL>1</TMPL_UNLESS>" />
    <input type="hidden" name="VIR_EMAIL_FORM" ID="VIR_EMAIL_FORM" value="1" />
    <input type="hidden" name="SHOW_REPORT_BUTTON" ID="SHOW_REPORT_BUTTON" value="1" />
</div>
