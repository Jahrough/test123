<INPUT type=hidden NAME="DPPA_VALUE" VALUE=<TMPL_VAR NAME=DPPA_VALUE>>
<INPUT type=hidden NAME="INIT_MAKE_MODEL" VALUE="1">
<INPUT type=hidden NAME="SELECTED_MAKE" VALUE=<TMPL_VAR NAME=SELECTED_MAKE>>
<INPUT type=hidden NAME="SELECTED_MODEL" VALUE=<TMPL_VAR NAME=SELECTED_MODEL>>
<INPUT type=hidden NAME="DEMO" VALUE=<TMPL_VAR NAME=DEMO>>
<!-- <INPUT type=hidden NAME="RECID" VALUE="<TMPL_VAR NAME=RECID>"> -->
<INPUT type=hidden NAME="RECID_OVERRIDE" VALUE="">
<INPUT type=hidden NAME="LOCAL_ONLY" VALUE="0">
<INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION>">
<INPUT type=hidden NAME="PRESENT_LOCAL_ONLY_OPTION_SSN" VALUE="<TMPL_VAR NAME=PRESENT_LOCAL_ONLY_OPTION_SSN>">
<INPUT type=hidden NAME="PREVIOUS_SEARCH_WAS_LOCAL_ONLY" VALUE="<TMPL_VAR NAME=PREVIOUS_SEARCH_WAS_LOCAL_ONLY>">
<INPUT type=hidden NAME="POLK_GATEWAY" VALUE="<TMPL_VAR NAME=POLK_GATEWAY>">
 <div class="radioRow combinedMotorVehicle" style="margin-bottom:5px; margin-top:-10px">
    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" style="display:none;" NAME="SRCH_TYPE" id="USE_MVR_RADIO" value='MVR' <TMPL_IF USE_MVR> checked="checked"</TMPL_IF> />
        </div>
        <span class="font-Arial12" style="margin-top:2px;"><b>Motor Vehicles Search</b>&nbsp;(Motor Vehicles &amp; Real-Time Motor Vehicles)</span>
    </div>

    <div class="checkboxAndText">
        <div class="customRadio">
            <div class="radioFiller"></div>
            <input type="radio" style="display:none;" NAME="SRCH_TYPE" id="USE_WC_RADIO" value='MVR_WC' <TMPL_IF USE_MVR_WC> checked="checked"</TMPL_IF>/>
        </div>
        <span class="font-Arial12" style="margin-top:2px; margin-right:190px;"><b>Motor Vehicle Wildcard Search &nbsp; &nbsp; &nbsp; &nbsp;</b></span>
    </div>

    <div class="checkboxAndText">
         <div id="chk_similarNames" class="customCheckbox" style="margin-top:5px;">
            <input type="checkbox" name="SAVE_SRCH" value="1" />
         </div>
         <span style="margin-top:7px;">Set Selected Search form as default</span>
    </div>
</div>
<div class="searchNotesCon">
    <span class="textWithHover notes">
        <span class="baseText">
            Note: The Advanced Motor Vehicles Search includes data from ...
        </span>
        <span class="hoverText">
            various data providers. Some data providers may require a Name and Address <br>
            to be included in your search. If you conduct a search without Name and <br>
            Address and do not receive a match (or the match you were expecting), you <br>
            may want to run another search including Name, Street Address, Zip Code or Name, <br>
            Street Address and City/State. Not all of the information contained in these <br>
            search results is derived from governmental agencies. Some information may have been<br>
            enhanced by additional sources.
        </span>
    </span>
</div>

<div>
    <div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
        <input type="text" class="w120px" style="margin-right:5px;" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="SSN" autocomplete="off">
    </div>
    <div class="motorVehicleSearch wildcardSearch" style="display:block">
       <input type="text" class="w160px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
       <input type="text" class="w140px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
       <input type="text" class="w140px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    </div>
</div>

<div>
   <div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
       <div class="checkboxAndText">
           <div id="chk_similarNames" class="customCheckbox">
               <input type="checkbox" name="PHONETICS" value="1"<TMPL_IF NAME="PHONETICS">checked="checked"</TMPL_IF>/>
           </div>
           <span>Include similar-sounding names</span>
       </div>
       <div class="helpQtnIcon">i</div>
   </div>
   <div class="checkboxAndText">
           <div id="CHK_NONGOVSOURCES" class="customCheckbox">
                   <input type="checkbox" name="CHK_NONGOVSOURCES" value="1" CHECKED>
           </div>
           <span>Include Non-Governmental Sources</span>
   </div>
   <div class="helpQtnIcon">i</div>
</div>

<div>
   <div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
      <input type="text" class="w200px" id="COMPANY_NAME" name="COMPANY_NAME" placeholder="Company Name">
      <input type="text" class="w120px" style="margin-right:5px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
   </div>
   <div class="wildcardSearch" style="display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
      <input type="text" class="w80px" id="AGE_LOW"  value="<TMPL_VAR NAME=AGE_LOW>" name="AGE_LOW" placeholder="Age Min">
      <span class="hyphen">-</span>
      <input type="text" class="w80px" id="AGE_HIGH" name="AGE_HIGH" value="<TMPL_VAR NAME=AGE_HIGH>" placeholder="Age Max">
   </div>
</div>

<div>
   <div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
     <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
     <div class="helpQtn"><div class="helpIcon"></div></div>
     <input type="text" class="w100px" style="margin-right:5px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
   </div>
   <div class="motorVehicleSearch wildcardSearch" style="display:block">
     <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
     <div class="helpQtn"><div class="pickerIcon"></div></div>
     <input type="text" class="w80px" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
   </div>
</div>

<div>
    <div class="motorVehicleSearch wildcardSearch" style="display:block">
       <input type="text" class="w180px" id="VIN" name="VIN" value="<TMPL_VAR NAME=VIN>" placeholder="VIN">
       <input type="text" class="w100px" id="LICENSE_PLATE" name="LICENSE_PLATE"  value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Tag Number *">
    </div>
    <div class="wildcardSearch" style="display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
       <div class="checkboxAndText" style="margin-top:6px;">
           <div id="chk_tagContains" class="customCheckbox">
               <input type="checkbox" id="TAG_CONTAINS" name="TAG_CONTAINS" <TMPL_IF NAME=TAG_CONTAINS>CHECKED</TMPL_IF> value="1">
           </div>
           <span>Tag Contains</span>
       </div>
    </div>
</div>

<div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
     * Tag Number search does not yield results in Nevada
</div>

<div>
   <div class="wildcardSearch" style="display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
    <input type="text" class="w100px" style="margin-right:5px" id="RADIUS" name="RADIUS" value="<TMPL_VAR NAME=RADIUS>" placeholder="Radius (miles)">
   </div>
   <div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR_WC>none<TMPL_ELSE>block</TMPL_IF>">
    <input type="text" class="w160px" id="LICENSE_NUMBER"  value="<TMPL_VAR NAME=LICENSE_NUMBER>" name="LICENSE_NUMBER" placeholder="Driver License #" autocomplete="off">
   </div>
   <div class="wildcardSearch" style="display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
     <div class="radioRow" style="margin-left:10px; margin-bottom:8px;">
        <div class="radioRowLabel">
            <span style="margin-left: 10px;">Gender:</span>
        </div>

        <input type="radio" name="SEX" value="All" <TMPL_IF NAME=SEX_All>checked="checked"</TMPL_IF>/>
        <span>All</span>

        <input type="radio" name="SEX" value="Male" <TMPL_IF NAME=SEX_Male>checked="checked"</TMPL_IF>/>
        <span>Male</span>

        <input type="radio" name="SEX" value="Female" <TMPL_IF NAME=SEX_Female>checked="checked"</TMPL_IF>/>
        <span>Female</span>
    </div>
   </div>
</div>

<div class="motorVehicleSearch" style="display:<TMPL_IF USE_MVR>block<TMPL_ELSE>none</TMPL_IF>">
    <input type="text" class="w100px" id="YEAR_MAKE" name="YEAR_MAKE" onkeyup='enable_rt_mvr_fields(1)' value="<TMPL_VAR NAME=YEAR_MAKE>" placeholder="Year">&nbsp;
    <select class="w100px" id="MAKE_ADV" name="MAKE_ADV" onChange="init_rt_mvr_model(1)" placeholder="Make">
    <option value="" selected>   Make   </option>
    </select>
    &nbsp;<select class="w100px" id="MODEL_ADV" name="MODEL_ADV" onChange="set_rt_mvr_model(1)" placeholder="Model">
    <option value="" selected>  Model   </option>
    </select>
    &nbsp;Make and Model require Year
</div>

<div class="wildcardSearch" style="display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
     <input type="text" class="w80px" id="YEAR_LOW" name="YEAR_LOW" value="<TMPL_VAR NAME=YEAR_LOW>" placeholder="Make Year">
     <span class="hyphen">-</span>
     <input type="text" class="w80px" id="YEAR_HIGH" name="YEAR_HIGH" value="<TMPL_VAR NAME=YEAR_HIGH>" placeholder="Make Year">
     <input type="hidden" class="w150px" readonly=true id="MAKE" name="MAKE" value="<TMPL_VAR NAME=MAKE>" placeholder="Make">
     <input type="text" class="w180px" onClick="show_vehicles_info(1);" readonly=true " id="MAKE_FAUX" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE></TMPL_IF>" placeholder="Make">
     <div class="helpQtn" onClick="show_vehicles_info(1);"><div class="pickerIcon"></div></div>
     <input type="hidden" class="w150px" readonly=true id="MODEL" name="MODEL" value="<TMPL_VAR NAME=MODEL>" placeholder="Models">
     <input type="text" class="w180px" onClick="checkMake();" readonly=true id="MODEL_FAUX" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL></TMPL_IF>" placeholder="Models">
     <div class="helpQtn" onClick="checkMake();"><div class="pickerIcon"></div></div>
</div>

<div class="wildcardSearch" style="margin-left:-5px; display:<TMPL_IF USE_MVR>none<TMPL_ELSE>block</TMPL_IF>">
       <input type="hidden" class="w150px" readonly=true id="MAJOR_COLOR" name="MAJOR_COLOR" value="<TMPL_VAR NAME=MAJOR_COLOR>" placeholder="Major Color">
       <input type="text" class="w250px" onClick="show_colors(1);" readonly=true id="MAJOR_COLOR_FAUX" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR></TMPL_IF>" placeholder="Major Color">
       <div class="helpQtn" onClick="show_colors(1);"><div class="pickerIcon"></div></div>
       <input type="hidden" class="w150px" readonly=true id="MINOR_COLOR" name="MINOR_COLOR" value="<TMPL_VAR NAME=MINOR_COLOR>" placeholder="Minor Color">
       <input type="text" class="w250px" onClick="show_colors(2);" readonly=true id="MINOR_COLOR_FAUX" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR></TMPL_IF>" placeholder="Minor Color">
       <div class="helpQtn" onClick="show_colors(2);"><div class="pickerIcon"></div></div>
</div>
