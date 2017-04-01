<div>
    <span class="textWithHover" style="display:block;font-weight:bold;">
        <span id="no_dmf_disclaimer" class="baseText blueFont" style="font-size:12px;" onclick="new_modal($j('#no_dmf_disclaimer').text(),$j('#no_dmf_disclaimer_contents').html())">Death Record Availability Notice</span>
        <span id="no_dmf_disclaimer_contents" class="hoverText centerHover" style="width:500px;">
        If you do not have a permissible purpose to access the NTIS Limited Access Death Master File (DMF) data, your deceased search results may be impacted.   Pursuant to law passed in December 2013 (Section 203 of the Bipartisan Budget Act of 2013), access to information contained in the Social Security Administration&#39;s Death Master File (DMF) is limited for a three year period beginning on the date of an individual&#39;s death.   As of March 26, 2014, access is limited to authorized users and recipients who qualify for certification. For individuals who have a date of death prior to 3/26/14 the DMF data is not restricted and will be shown in your results.   This law does not impact the non-DMF data contained in the LexisNexis deceased-records database.  
        <br/><br/>
        To request access to the Limited Access DMF data, please contact your account representative for a Contract Addendum.  NOTE: Not all who sign the contract addendum will be granted access to this data, it is limited to those with a permissible purpose and other requirements under the law.
        <br/>
        </span>
    </span>
</div>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w150px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
</div>
<div>
    <input type="text" class="w150px" id="SSN" name="SSN" placeholder="SSN" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
    <TMPL_IF NAME="SHOW_LINKID">
        <input type="text" class="w150px" id="UNIQUEID" name="UNIQUEID" value="<TMPL_VAR NAME=UNIQUEID>" placeholder="LexID">
        <div class="helpQtn"><div class="helpIcon"></div></div>
    </TMPL_IF>
</div>
<div>
    <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="Street Address">
    <input type="text" class="w120px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="City">
    <input type="text" class="w100px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
</div>
<div>
    <input type="text" class="w100px" id="DOB" name="DOB" placeholder="DOB" value="<TMPL_VAR NAME=DOB>">
    <input type="text" class="w100px" id="DOD" name="DOD" placeholder="DOD" value="<TMPL_VAR NAME=DOD>">
</div>
