<!-- begin disclosed_entity_report.tpl -->
<div style="padding: 0px; float:right;">
    <b>&nbsp;*&nbsp;Required Fields</b>&nbsp; -- &nbsp;Note: The Company Name, Address (street and city/state or zip) and NPI Number fields are required.
</div>

<div>
   <input type="text" class="w222px" id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR NAME=COMPANY_NAME>" placeholder="*Company Name">
   <input type="text" class="w150px" id="FEIN" name="FEIN" value="<TMPL_VAR NAME=FEIN>" placeholder="FEIN">
</div>

<div>
   <input type="text" class="w222px" maxlength="50" id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR NAME=STREET_ADDRESS>" placeholder="*Street Address">
   <input type="text" class="w150px" id="CITY" name="CITY"  value="<TMPL_VAR NAME=CITY>" placeholder="*City">
   <input type="text" class="w80px" id="STATE" name="STATE" maxlength="2" value="<TMPL_VAR NAME=STATE>" placeholder="*State">
   <input type="text" class="w80px" id="ZIP" name="ZIP"  value="<TMPL_VAR NAME=ZIP>" placeholder="*ZIP Code">
</div>

<div>
   <input type="text" class="w150px" id="NPI_NUMBER" name="NPI_NUMBER" maxlength="15" value="<TMPL_VAR NAME=NPI_NUMBER>" placeholder="*NPI">
   <input type="text" class="w120px" id="PHONE" value="<TMPL_VAR NAME=PHONE>" name="PHONE" placeholder="Phone Number">
</div>

 <div id="lineVertGrayDot"></div> 

<!-- first (static) Associated Individual row -->
<div class="expandFormRow">
<div class="expandForm" style="padding:0px; ">
  <a href="javascript:void(0);" onclick="unhide_div( 'ASSOC_IND' );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 2px;">+ Add Associated Individual</div>
  </a>
</div>
<div style="padding: 4px; float:right;">
    &nbsp;*&nbsp;Required Fields (for each relevant Associated Individual)
</div>
</div>
<div style="overflow-y: auto; height:110px">
<div style="float:left; padding: 0px 0px 4px 0px;">
         <input type="text" class="w160px" id="ASSOC_IND_LAST_NAME_1" name="ASSOC_IND_LAST_NAME_1" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_1>" placeholder="*Last Name">
         <input type="text" class="w140px" id="ASSOC_IND_FIRST_NAME_1" name="ASSOC_IND_FIRST_NAME_1" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_1>" placeholder="*First Name">
         <input type="text" class="w140px" id="ASSOC_IND_MIDDLE_NAME_1" name="ASSOC_IND_MIDDLE_NAME_1" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_1>" placeholder="Middle Name">
         <input type="text" class="w100px" id="ASSOC_IND_DOB_1" name="ASSOC_IND_DOB_1" value="<TMPL_VAR NAME=ASSOC_IND_DOB_1>" placeholder="DOB">
</div>
<div style="float:left; padding: 4px 0px;">
   <input type="text" class="w222px" maxlength="50" id="ASSOC_IND_STREET_ADDRESS_1" name="ASSOC_IND_STREET_ADDRESS_1" value="<TMPL_VAR NAME=STREET_ADDRESS_1>" placeholder="*Street Address">
   <input type="text" class="w150px" id="ASSOC_IND_CITY_1" name="ASSOC_IND_CITY_1"  value="<TMPL_VAR NAME=ASSOC_IND_CITY_1>" placeholder="*City">
   <input type="text" class="w80px" id="ASSOC_IND_STATE_1" name="ASSOC_IND_STATE_1" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_1>" placeholder="*State">
   <input type="text" class="w80px" id="ASSOC_IND_ZIP_1" name="ASSOC_IND_ZIP_1"  value="<TMPL_VAR NAME=ASSOC_IND_ZIP_1>" placeholder="*ZIP Code">
</div>
    
<div style="float:left; padding: 4px 180px 4px 0px;">
   <input type="text" class="w150px" id="ASSOC_IND_SSN_1" name="ASSOC_IND_SSN_1" value="<TMPL_VAR NAME=ASSOC_IND_SSN_1>" placeholder="*Tax ID (SSN)" autocomplete="off">
   <input type="text" class="w120px" id="ASSOC_IND_PHONE_1" name="ASSOC_IND_PHONE_1" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_1>" placeholder="Phone Number">
</div>

<div name="ASSOC_IND_DIV_2" id="ASSOC_IND_DIV_2" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 0px 4px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_IND', 2 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Individual Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w160px" id="ASSOC_IND_LAST_NAME_2" name="ASSOC_IND_LAST_NAME_2" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_2>" placeholder="*Last Name">
   <input type="text" class="w140px" id="ASSOC_IND_FIRST_NAME_2" name="ASSOC_IND_FIRST_NAME_2" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_2>" placeholder="*First Name">
   <input type="text" class="w140px" id="ASSOC_IND_MIDDLE_NAME_2" name="ASSOC_IND_MIDDLE_NAME_2" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_2>" placeholder="Middle Name">
   <input type="text" class="w100px" id="ASSOC_IND_DOB_2" name="ASSOC_IND_DOB_2" value="<TMPL_VAR NAME=ASSOC_IND_DOB_2>" placeholder="DOB">
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w222px" maxlength="50" id="ASSOC_IND_STREET_ADDRESS_2" name="ASSOC_IND_STREET_ADDRESS_2" value="<TMPL_VAR NAME=STREET_ADDRESS_2>" placeholder="*Street Address">
   <input type="text" class="w150px" id="ASSOC_IND_CITY_2" name="ASSOC_IND_CITY_2"  value="<TMPL_VAR NAME=ASSOC_IND_CITY_2>" placeholder="*City">
   <input type="text" class="w80px" id="ASSOC_IND_STATE_2" name="ASSOC_IND_STATE_2" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_2>" placeholder="*State">
   <input type="text" class="w80px" id="ASSOC_IND_ZIP_2" name="ASSOC_IND_ZIP_2"  value="<TMPL_VAR NAME=ASSOC_IND_ZIP_2>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 180px 5px 0px;">
   <input type="text" class="w150px" id="ASSOC_IND_SSN_2" name="ASSOC_IND_SSN_2" value="<TMPL_VAR NAME=ASSOC_IND_SSN_2>" placeholder="*Tax ID (SSN)" autocomplete="off">
   <input type="text" class="w120px" id="ASSOC_IND_PHONE_2" name="ASSOC_IND_PHONE_2" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_2>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_IND_DIV_3" id="ASSOC_IND_DIV_3" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 0px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_IND', 3 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Individual Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w160px" id="ASSOC_IND_LAST_NAME_3" name="ASSOC_IND_LAST_NAME_3" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_3>" placeholder="*Last Name">
   <input type="text" class="w140px" id="ASSOC_IND_FIRST_NAME_3" name="ASSOC_IND_FIRST_NAME_3" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_3>" placeholder="*First Name">
   <input type="text" class="w140px" id="ASSOC_IND_MIDDLE_NAME_3" name="ASSOC_IND_MIDDLE_NAME_3" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_3>" placeholder="Middle Name">
   <input type="text" class="w100px" id="ASSOC_IND_DOB_3" name="ASSOC_IND_DOB_3" value="<TMPL_VAR NAME=ASSOC_IND_DOB_3>" placeholder="DOB">
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w222px" maxlength="50" id="ASSOC_IND_STREET_ADDRESS_3" name="ASSOC_IND_STREET_ADDRESS_3" value="<TMPL_VAR NAME=STREET_ADDRESS_3>" placeholder="*Street Address">
   <input type="text" class="w150px" id="ASSOC_IND_CITY_3" name="ASSOC_IND_CITY_3"  value="<TMPL_VAR NAME=ASSOC_IND_CITY_3>" placeholder="*City">
   <input type="text" class="w80px" id="ASSOC_IND_STATE_3" name="ASSOC_IND_STATE_3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_3>" placeholder="*State">
   <input type="text" class="w80px" id="ASSOC_IND_ZIP_3" name="ASSOC_IND_ZIP_3"  value="<TMPL_VAR NAME=ASSOC_IND_ZIP_3>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 180px 5px 0px;">
   <input type="text" class="w150px" id="ASSOC_IND_SSN_3" name="ASSOC_IND_SSN_3" value="<TMPL_VAR NAME=ASSOC_IND_SSN_3>" placeholder="*Tax ID (SSN)" autocomplete="off">
   <input type="text" class="w120px" id="ASSOC_IND_PHONE_3" name="ASSOC_IND_PHONE_3" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_3>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_IND_DIV_4" id="ASSOC_IND_DIV_4" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 0px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_IND', 4 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Individual Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w160px" id="ASSOC_IND_LAST_NAME_4" name="ASSOC_IND_LAST_NAME_4" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_4>" placeholder="*Last Name">
   <input type="text" class="w140px" id="ASSOC_IND_FIRST_NAME_4" name="ASSOC_IND_FIRST_NAME_4" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_4>" placeholder="*First Name">
   <input type="text" class="w140px" id="ASSOC_IND_MIDDLE_NAME_4" name="ASSOC_IND_MIDDLE_NAME_4" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_4>" placeholder="Middle Name">
   <input type="text" class="w100px" id="ASSOC_IND_DOB_4" name="ASSOC_IND_DOB_4" value="<TMPL_VAR NAME=ASSOC_IND_DOB_4>" placeholder="DOB">
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w222px" maxlength="50" id="ASSOC_IND_STREET_ADDRESS_4" name="ASSOC_IND_STREET_ADDRESS_4" value="<TMPL_VAR NAME=STREET_ADDRESS_4>" placeholder="*Street Address">
   <input type="text" class="w150px" id="ASSOC_IND_CITY_4" name="ASSOC_IND_CITY_4"  value="<TMPL_VAR NAME=ASSOC_IND_CITY_2>" placeholder="*City">
   <input type="text" class="w80px" id="ASSOC_IND_STATE_4" name="ASSOC_IND_STATE_4" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_4>" placeholder="*State">
   <input type="text" class="w80px" id="ASSOC_IND_ZIP_4" name="ASSOC_IND_ZIP_4"  value="<TMPL_VAR NAME=ASSOC_IND_ZIP_4>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 180px 5px 0px;">
   <input type="text" class="w150px" id="ASSOC_IND_SSN_4" name="ASSOC_IND_SSN_4" value="<TMPL_VAR NAME=ASSOC_IND_SSN_4>" placeholder="*Tax ID (SSN)" autocomplete="off">
   <input type="text" class="w120px" id="ASSOC_IND_PHONE_4" name="ASSOC_IND_PHONE_4" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_4>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_IND_DIV_5" id="ASSOC_IND_DIV_5" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 0px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_IND', 5 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Individual Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w160px" id="ASSOC_IND_LAST_NAME_5" name="ASSOC_IND_LAST_NAME_5" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_5>" placeholder="*Last Name">
   <input type="text" class="w140px" id="ASSOC_IND_FIRST_NAME_5" name="ASSOC_IND_FIRST_NAME_5" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_5>" placeholder="*First Name">
   <input type="text" class="w140px" id="ASSOC_IND_MIDDLE_NAME_5" name="ASSOC_IND_MIDDLE_NAME_5" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_5>" placeholder="Middle Name">
   <input type="text" class="w100px" id="ASSOC_IND_DOB_5" name="ASSOC_IND_DOB_5" value="<TMPL_VAR NAME=ASSOC_IND_DOB_5>" placeholder="DOB">
</div>
<div style="float:left; padding: 5px 0px;">
   <input type="text" class="w222px" maxlength="50" id="ASSOC_IND_STREET_ADDRESS_5" name="ASSOC_IND_STREET_ADDRESS_5" value="<TMPL_VAR NAME=STREET_ADDRESS_5>" placeholder="*Street Address">
   <input type="text" class="w150px" id="ASSOC_IND_CITY_5" name="ASSOC_IND_CITY_5"  value="<TMPL_VAR NAME=ASSOC_IND_CITY_5>" placeholder="*City">
   <input type="text" class="w80px" id="ASSOC_IND_STATE_5" name="ASSOC_IND_STATE_5" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_5>" placeholder="*State">
   <input type="text" class="w80px" id="ASSOC_IND_ZIP_5" name="ASSOC_IND_ZIP_5"  value="<TMPL_VAR NAME=ASSOC_IND_ZIP_5>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 180px 0px 0px;">
   <input type="text" class="w150px" id="ASSOC_IND_SSN_5" name="ASSOC_IND_SSN_5" value="<TMPL_VAR NAME=ASSOC_IND_SSN_5>" placeholder="*Tax ID (SSN)" autocomplete="off">
   <input type="text" class="w120px" id="ASSOC_IND_PHONE_5" name="ASSOC_IND_PHONE_5" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_5>" placeholder="Phone Number">
</div>
</div>
</div>


 <div id="lineVertGrayDot"></div>

<!-- first (static) Associated Company row -->
<div class="expandFormRow">
<div class="expandForm" style="padding:0px;">
  <a href="javascript:void(0);" onclick="unhide_div( 'ASSOC_COMPANY' );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 2px;">+ Add Associated Company</div>
  </a>
</div>
<div style="padding: 4px; float:right;">
    &nbsp;*&nbsp;Required Fields (for each relevant Associated Company)
</div>
</div>
<div style="overflow-y: auto; height:102px">
<div style="float:left; padding: 0px 0px 4px 0px;">
         <input type="text" class="w150px" id="ASSOC_COMPANY_NAME_1" name="ASSOC_COMPANY_NAME_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_1>" placeholder="*Company Name"> 
         <input type="text" class="w150px" id="ASSOC_COMPANY_FEIN_1" name="ASSOC_COMPANY_FEIN_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_1>" placeholder="*FEIN"> 
</div>
<div style="float:left; padding: 4px 0px;">
         <input type="text" class="w222px" maxlength="50" id="ASSOC_COMPANY_STREET_ADDRESS_1" name="ASSOC_COMPANY_STREET_ADDRESS_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_1>" placeholder="*Street Address">
         <input type="text" class="w150px" id="ASSOC_COMPANY_CITY_1" name="ASSOC_COMPANY_CITY_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_1>" placeholder="*City">
         <input type="text" class="w80px" id="ASSOC_COMPANY_STATE_1" name="ASSOC_COMPANY_STATE_1" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_1>" placeholder="*State">
         <input type="text" class="w80px" id="ASSOC_COMPANY_ZIP_1" name="ASSOC_COMPANY_ZIP_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_1>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 200px 4px 0px;">
         <input type="text" class="w329px" id="ASSOC_COMPANY_PHONE_1" name="ASSOC_COMPANY_PHONE_1" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_1>" placeholder="Phone Number">
</div>

<div name="ASSOC_COMPANY_DIV_2" id="ASSOC_COMPANY_DIV_2" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 200px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_COMPANY', 2 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Company Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w150px" id="ASSOC_COMPANY_NAME_2" name="ASSOC_COMPANY_NAME_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_2>" placeholder="*Company Name"> 
         <input type="text" class="w150px" id="ASSOC_COMPANY_FEIN_2" name="ASSOC_COMPANY_FEIN_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_2>" placeholder="*FEIN"> 
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w222px" maxlength="50" id="ASSOC_COMPANY_STREET_ADDRESS_2" name="ASSOC_COMPANY_STREET_ADDRESS_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_2>" placeholder="*Street Address">
         <input type="text" class="w150px" id="ASSOC_COMPANY_CITY_2" name="ASSOC_COMPANY_CITY_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_2>" placeholder="*City">
         <input type="text" class="w80px" id="ASSOC_COMPANY_STATE_2" name="ASSOC_COMPANY_STATE_2" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_2>" placeholder="*State">
         <input type="text" class="w80px" id="ASSOC_COMPANY_ZIP_2" name="ASSOC_COMPANY_ZIP_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_2>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 200px 5px 0px;">
         <input type="text" class="w329px" id="ASSOC_COMPANY_PHONE_2" name="ASSOC_COMPANY_PHONE_2" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_2>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_COMPANY_DIV_3" id="ASSOC_COMPANY_DIV_3" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 200px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_COMPANY', 3 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Company Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w150px" id="ASSOC_COMPANY_NAME_3" name="ASSOC_COMPANY_NAME_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_3>" placeholder="*Company Name"> 
         <input type="text" class="w150px" id="ASSOC_COMPANY_FEIN_3" name="ASSOC_COMPANY_FEIN_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_3>" placeholder="*FEIN"> 
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w222px" maxlength="50" id="ASSOC_COMPANY_STREET_ADDRESS_3" name="ASSOC_COMPANY_STREET_ADDRESS_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_3>" placeholder="*Street Address">
         <input type="text" class="w150px" id="ASSOC_COMPANY_CITY_3" name="ASSOC_COMPANY_CITY_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_3>" placeholder="*City">
         <input type="text" class="w80px" id="ASSOC_COMPANY_STATE_3" name="ASSOC_COMPANY_STATE_3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_3>" placeholder="*State">
         <input type="text" class="w80px" id="ASSOC_COMPANY_ZIP_3" name="ASSOC_COMPANY_ZIP_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_3>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 200px 5px 0px;">
         <input type="text" class="w329px" id="ASSOC_COMPANY_PHONE_3" name="ASSOC_COMPANY_PHONE_3" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_3>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_COMPANY_DIV_4" id="ASSOC_COMPANY_DIV_4" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 200px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_COMPANY', 4 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Company Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w150px" id="ASSOC_COMPANY_NAME_4" name="ASSOC_COMPANY_NAME_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_4>" placeholder="*Company Name"> 
         <input type="text" class="w150px" id="ASSOC_COMPANY_FEIN_4" name="ASSOC_COMPANY_FEIN_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_4>" placeholder="*FEIN"> 
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w222px" maxlength="50" id="ASSOC_COMPANY_STREET_ADDRESS_4" name="ASSOC_COMPANY_STREET_ADDRESS_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_4>" placeholder="*Street Address">
         <input type="text" class="w150px" id="ASSOC_COMPANY_CITY_4" name="ASSOC_COMPANY_CITY_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_4>" placeholder="*City">
         <input type="text" class="w80px" id="ASSOC_COMPANY_STATE_4" name="ASSOC_COMPANY_STATE_4" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_4>" placeholder="*State">
         <input type="text" class="w80px" id="ASSOC_COMPANY_ZIP_4" name="ASSOC_COMPANY_ZIP_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_4>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 200px 5px 0px;">
         <input type="text" class="w329px" id="ASSOC_COMPANY_PHONE_4" name="ASSOC_COMPANY_PHONE_4" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_4>" placeholder="Phone Number">
</div>
</div>

<div name="ASSOC_COMPANY_DIV_5" id="ASSOC_COMPANY_DIV_5" style="display:none;visibility:hidden;">
<div style="float:left; padding: 10px 200px 5px 0px;" class="expandFormRow">
<div class="expandForm" style="padding: 0px;">
  <a href="javascript:void(0);" onclick="hide_div( 'ASSOC_COMPANY', 5 );" style="display: inline-block;padding: 3px 5px;">
    <div style="font-weight:bold; padding: 0px;">- Remove Associated Company Below</div>
  </a>
</div>
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w150px" id="ASSOC_COMPANY_NAME_5" name="ASSOC_COMPANY_NAME_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_5>" placeholder="*Company Name"> 
         <input type="text" class="w150px" id="ASSOC_COMPANY_FEIN_5" name="ASSOC_COMPANY_FEIN_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_5>" placeholder="*FEIN"> 
</div>
<div style="float:left; padding: 5px 0px;">
         <input type="text" class="w222px" maxlength="50" id="ASSOC_COMPANY_STREET_ADDRESS_5" name="ASSOC_COMPANY_STREET_ADDRESS_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_5>" placeholder="*Street Address">
         <input type="text" class="w150px" id="ASSOC_COMPANY_CITY_5" name="ASSOC_COMPANY_CITY_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_5>" placeholder="*City">
         <input type="text" class="w80px" id="ASSOC_COMPANY_STATE_5" name="ASSOC_COMPANY_STATE_5" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_5>" placeholder="*State">
         <input type="text" class="w80px" id="ASSOC_COMPANY_ZIP_5" name="ASSOC_COMPANY_ZIP_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_5>" placeholder="*ZIP Code">
</div>
<div style="float:left; padding: 5px 200px 5px 0px;">
         <input type="text" class="w329px" id="ASSOC_COMPANY_PHONE_5" name="ASSOC_COMPANY_PHONE_5" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_5>" placeholder="Phone Number">
</div>
</div>
</div>

<!-- end inputs_fields/disclosed_entity_report.tpl -->
