        <div>
            <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
            <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
            <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
        </div>
        <div>
            <TMPL_IF NAME="SHOW_LINKID">
                <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
                <div class="helpQtn"><div class="helpIcon"></div></div>
            </TMPL_IF>  

            <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME"  value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="Company Name">
        </div>    
         
         <div>
            <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
            <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
            <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
            <div class="helpQtn"><div class="pickerIcon"></div></div>

            <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
         </div>    
         <div>
            <input type="text" class="w150px" id="HULL_ID" name="HULL_ID" value="<TMPL_VAR NAME=HULL_ID>" placeholder="Hull ID">
            <input type="text" class="w150px" id="VESSEL_NAME" name="VESSEL_NAME" value="<TMPL_VAR NAME=VESSEL_NAME>" placeholder="Vessel Name">
            <TMPL_IF GOV>
              <input type="text" class="w150px" id="VESSEL_MIN_LEN" name="VESSEL_MIN_LEN" value="<TMPL_VAR NAME=VESSEL_MIN_LEN>" placeholder="Vessel Length (ft.) Min">
              <input type="text" class="w150px" id="VESSEL_MAX_LEN" name="VESSEL_MAX_LEN" value="<TMPL_VAR NAME=VESSEL_MAX_LEN>" placeholder="Vessel Length (ft.) Max">
            </TMPL_IF>
            <TMPL_IF LE>
              <input type="text" class="w150px" id="VESSEL_MIN_LEN" name="VESSEL_MIN_LEN" value="<TMPL_VAR NAME=VESSEL_MIN_LEN>" placeholder="Vessel Length (ft.) Min">
              <input type="text" class="w150px" id="VESSEL_MAX_LEN" name="VESSEL_MAX_LEN" value="<TMPL_VAR NAME=VESSEL_MAX_LEN>" placeholder="Vessel Length (ft.) Max">
            </TMPL_IF>

        </div>
	<TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
		<div>
			<div class="checkboxAndText">
				<div id="CHK_NONGOVSOURCES" class="customCheckbox">
					<input type="checkbox" name="CHK_NONGOVSOURCES" value="1" CHECKED>
				</div>
				<span>Include Non-Governmental Sources</span>
			</div>
			<div class="helpQtnIcon">i</div>
		</div>
	</TMPL_IF>
