<!-- begin inputs_fields/provider_report_card.tpl -->
<div style="padding: 0px 0px 10px 8px; float:right;">
    <b>&nbsp;*&nbsp;Required Fields</b>&nbsp; -- &nbsp;Note: Name (First & Last or Company), Address, and at least one of SSN or NPI fields are required.<br />
</div>
<div>
    <input type="text" class="w125px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="*Last Name">
    <input type="text" class="w120px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="*First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w100px" id="SSN" name="SSN" value="<TMPL_VAR NAME=SSN>" placeholder="*SSN" autocomplete="off">
    <input type="text" class="w100px" id="DOB" name="DOB" value="<TMPL_VAR NAME=DOB>" placeholder="DOB" >
</div>
<div >
    <input type="text" class="w329px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="*Company or Organization Name">
    <input type="text" class="w150px" id="TAXID" name="TAXID" value="<TMPL_VAR NAME=TAXID>" placeholder="Tax ID (FEIN)">
</div>

<div>
    <input type="text" class="w250px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="*Street Address">
    <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="*City">
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="*ZIP Code">
</div>    
<div id="npi_div">
    <input type="text" class="w110px" id="NPI_NUMBER" name="NPI_NUMBER" value="<TMPL_VAR NAME=NPI_NUMBER>" placeholder="*NPI">
    <input type="text" class="w110px" id="CLIA_NUMBER" name="CLIA_NUMBER" value="<TMPL_VAR NAME=CLIA_NUMBER>" placeholder="CLIA">
    <input type="text" class="w110px" id="DEA_NUMBER" name="DEA_NUMBER" value="<TMPL_VAR NAME=DEA_NUMBER>" placeholder="DEA Number">
    <input type="text" class="w110px" id="TAXONOMY" name="TAXONOMY" value="<TMPL_VAR NAME=TAXONOMY>" placeholder="Taxonomy">
</div>
<!-- first (static) License row -->
<div style="overflow-y: auto; height:210px">
  <div style="float:left; padding: 0px 10px 4px 0px;">
         <input type="text" class="w250px" id="LICENSE_NUMBER_1" name="LICENSE_NUMBER_1" value="<TMPL_VAR NAME=LICENSE_NUMBER_1>" placeholder="License Number" autocomplete="off">
         <input type="text" class="w65px" id="LICENSE_STATE_1"  maxlength="2" name="LICENSE_STATE_1" value="<TMPL_VAR NAME=LICENSE_STATE_1>" placeholder="License State">
         <div class="helpQtn"><div class="pickerIcon"></div></div>
  </div>
  <div class="expandFormRow">
    <div class="expandForm" style="padding:0px; ">
    <a href="javascript:void(0);" onclick="unhide_div( 'LICENSE' );" style="display: inline-block;padding: 3px 5px;">
      <div style="font-weight:bold; padding: 2px;">+ Add Another License </div>
    </a>
    </div>
  </div>


  <div name="LICENSE_DIV_2" id="LICENSE_DIV_2" style="display:none;visibility:hidden;">
    <div style="float:left; padding: 5px 0px;">
      <input type="text" class="w250px" id="LICENSE_NUMBER_2" name="LICENSE_NUMBER_2" value="<TMPL_VAR NAME=LICENSE_NUMBER_2>" placeholder="License Number" autocomplete="off">
      <input type="text" class="w65px" id="LICENSE_STATE_2" maxlength="2"  name="LICENSE_STATE_2" value="<TMPL_VAR NAME=LICENSE_STATE_2>" placeholder="License State">
      <div class="helpQtn"><div class="pickerIcon"></div></div>
    </div>
    <div style="float:left; padding: 10px 0px 4px 10px;" class="expandFormRow">
      <div class="expandForm" style="padding: 0px;">
        <a href="javascript:void(0);" onclick="hide_div( 'LICENSE', 2 );" style="display: inline-block;padding: 3px 5px;">
          <div style="font-weight:bold; padding: 0px;">- Remove License</div>
        </a>
      </div>
    </div>
  </div>

  <div name="LICENSE_DIV_3" id="LICENSE_DIV_3" style="display:none;visibility:hidden;">
    <div style="float:left; padding: 5px 0px;">
      <input type="text" class="w250px" id="LICENSE_NUMBER_3" name="LICENSE_NUMBER_3" value="<TMPL_VAR NAME=LICENSE_NUMBER_3>" placeholder="License Number" autocomplete="off">
      <input type="text" class="w65px" id="LICENSE_STATE_3" maxlength="2"  name="LICENSE_STATE_3" value="<TMPL_VAR NAME=LICENSE_STATE_3>" placeholder="License State">
      <div class="helpQtn"><div class="pickerIcon"></div></div>
    </div>
    <div style="float:left; padding: 10px 0px 4px 10px;" class="expandFormRow">
      <div class="expandForm" style="padding: 0px;">
        <a href="javascript:void(0);" onclick="hide_div( 'LICENSE', 3 );" style="display: inline-block;padding: 3px 5px;">
          <div style="font-weight:bold; padding: 0px;">- Remove License</div>
        </a>
      </div>
    </div>
  </div>

  <div name="LICENSE_DIV_4" id="LICENSE_DIV_4" style="display:none;visibility:hidden;">
    <div style="float:left; padding: 5px 0px;">
      <input type="text" class="w250px" id="LICENSE_NUMBER_4" name="LICENSE_NUMBER_4" value="<TMPL_VAR NAME=LICENSE_NUMBER_4>" placeholder="License Number" autocomplete="off">
      <input type="text" class="w65px" id="LICENSE_STATE_4" maxlength="2"  name="LICENSE_STATE_4" value="<TMPL_VAR NAME=LICENSE_STATE_4>" placeholder="License State">
      <div class="helpQtn"><div class="pickerIcon"></div></div>
    </div>
    <div style="float:left; padding: 10px 0px 4px 10px;" class="expandFormRow">
      <div class="expandForm" style="padding: 0px;">
        <a href="javascript:void(0);" onclick="hide_div( 'LICENSE', 4 );" style="display: inline-block;padding: 3px 5px;">
          <div style="font-weight:bold; padding: 0px;">- Remove License</div>
        </a>
      </div>
    </div>
  </div>

  <div name="LICENSE_DIV_5" id="LICENSE_DIV_5" style="display:none;visibility:hidden;">
    <div style="float:left; padding: 5px 0px;">
      <input type="text" class="w250px" id="LICENSE_NUMBER_5" name="LICENSE_NUMBER_5" value="<TMPL_VAR NAME=LICENSE_NUMBER_5>" placeholder="License Number" autocomplete="off">
      <input type="text" class="w65px" id="LICENSE_STATE_5" maxlength="2"  name="LICENSE_STATE_5" value="<TMPL_VAR NAME=LICENSE_STATE_5>" placeholder="License State">
      <div class="helpQtn"><div class="pickerIcon"></div></div>
    </div>
    <div style="float:left; padding: 10px 0px 4px 10px;" class="expandFormRow">
      <div class="expandForm" style="padding: 0px;">
        <a href="javascript:void(0);" onclick="hide_div( 'LICENSE', 5 );" style="display: inline-block;padding: 3px 5px;">
          <div style="font-weight:bold; padding: 0px;">- Remove License</div>
        </a>
      </div>
    </div>
  </div>


</div>


<!-- end inputs_fields/provider_report_card.tpl -->
