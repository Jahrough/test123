<!-- begin inputs_fields/provider_report_card.tpl -->

<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>

<script>
// _max is total number of expandable file
//     First is fixed
//     _1 .. _N are unhide-able
var license_div_max  = 5;

// Number of divs that are currently visable
var license_div_used = 1;
var license_div_field_names=["LICENSE_NUMBER","LICENSE_STATE"];

function report_card_setup() {
  var   license_initial_div = 1;

// unhide fields onLoad
// this can be due to populated fields
// or user setting
//
  for(var j = 1; j < license_initial_div; j++) {
    unhide_div( 'LICENSE' );
  }

}

function get_div_field_length( div_name ) {
   if ( 'LICENSE' == div_name ) {
      return license_div_field_names.length;
   }
}

function get_div_field_name( div_name, pos ) {
   if ( 'LICENSE' == div_name ) {
      return license_div_field_names[pos];
   }
}


function set_div_used( div_name, value ) {
   if ( 'LICENSE' == div_name ) {
      license_div_used = value;
   }
}

function get_div_used( div_name ) {
   if ( 'LICENSE' == div_name ) {
      return license_div_used.valueOf();
   }
}

function get_div_max( div_name ) {
   if ( 'LICENSE' == div_name ) {
      return license_div_max.valueOf();
   }
}


function unhide_div( in_div_name ) {
   if (0) {
      var field_name_count = get_div_field_length( in_div_name );
      for(var i = 0; i < field_name_count; i++) {
         var this_field_name = get_div_field_name( in_div_name, i );
   
         var var1 = document.getElementById( this_field_name );
   
      }
   }

   var in_div_max  = get_div_max( in_div_name );
   var in_div_used = get_div_used( in_div_name );

   var lic_name = in_div_name + '_NUMBER_' + in_div_used;
   var lic_elem = document.getElementById( lic_name );
   var state_name = in_div_name + '_STATE_' + in_div_used;
   var state_elem = document.getElementById( state_name );

   if (!(/\S/.test(lic_elem.value)) || !(/\S/.test(state_elem.value)) || (/License Number/.test(lic_elem.value)) || (/License State/.test(state_elem.value))) {
      alert ('Current License Number and/or State fields are empty. Please enter valid data in License Number and License State fields before adding another license.');
      return 0;
   }

   if ( in_div_used < in_div_max ) {
      in_div_used++;
      set_div_used( in_div_name, in_div_used );
      var div_name = in_div_name + '_DIV_' + in_div_used.toString();
      var elem = document.getElementById( div_name );
      elem.style.visibility = 'visible';
      elem.style.display    = 'block';
   }


}


function hide_div(in_div_name, in_div_num) {


   var in_div_max  = get_div_max( in_div_name );
   var in_div_used = get_div_used( in_div_name );

   var field_name_count = get_div_field_length( in_div_name );

   if (in_div_num > 1) {

// First, clear the inputs in this div
if (1){
      for(var i = 0; i < field_name_count; i++) {
         var input_name = get_div_field_name( in_div_name, i ) + '_'  + in_div_num.toString();
         var var1 = document.getElementById( input_name );
         var1.value = '';
      }
}


// Second, Shift up subsequent inputs
if (1) {
      for(var j = in_div_num; j < in_div_max; j++) {
         var this_index = j;
         var next_index = j + 1;

         for(var i = 0; i < field_name_count; i++) {


            var this_name = get_div_field_name( in_div_name, i ) + '_' + this_index.toString();
            var next_name = get_div_field_name( in_div_name, i ) + '_' + next_index.toString();
            var this_elem = document.getElementById( this_name );
            var next_elem = document.getElementById( next_name );
            this_elem.value = next_elem.value;

         }

      }
}


// Third, clear the last element used - which is now unused
if (1) {
      for(var i = 0; i < field_name_count; i++) {
         var input_name = get_div_field_name( in_div_name, i ) + '_'  + in_div_used.toString();
         var var1 = document.getElementById( input_name );
         var1.value = '';
      }
}


// Fourth, hide the div of the last element used
      if (in_div_used > 1) {
         var div_name = in_div_name + '_DIV_' + in_div_used.toString();


         var elem = document.getElementById( div_name );
         if (1) {
            elem.style.visibility = 'hidden';
            elem.style.display    = 'none';
         }
      }

// Fifth, decrement the div used count
      in_div_used--;
      set_div_used( in_div_name, in_div_used );
   }

}


function hide_unhide_section ( in_div_name ) {


   var hide_section_div_name = in_div_name + '_SECTION_HIDE';
   var control_image = in_div_name + '_CONTROL_IMAGE';

   var elem;
   var div = document.getElementById( hide_section_div_name );
   if(div.style.visibility == 'visible') {
     elem = document.getElementById( hide_section_div_name );
     elem.style.visibility = 'hidden';
     elem.style.display    = 'none';
     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif";
   } else {
     elem = document.getElementById( hide_section_div_name );
     elem.style.visibility = 'visible';
     elem.style.display    = 'block';
     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/instant_id_cross.gif";
//     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/ico_nodata.gif";
   }
}
</script>



<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b></span></td>
            <td><b>Required Fields</b>&nbsp; -- &nbsp;Note: Name (First & Last or Company), Address, and at least one of SSN or NPI fields are required.</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b>&nbsp;*</td>
            <td><a href="javascript:void(0);" onClick="displayDatePicker('DOB','below');"><b>DOB<br>(mm/dd/yyyy)</b></a>&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI" size="10" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input id="SSN" type="text" name="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input onClick="displayDatePicker('DOB','below');" type="text" id="DOB" name="DOB" size="14" tabindex="5" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company or Organization name</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="TAXID">Tax ID (FEIN)</label></b></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="6" size="35" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="TAXID" name="TAXID" tabindex="7" size="11" maxlength="11" value="<TMPL_VAR NAME=TAXID>"></td>
            <td class="nsinputs">&nbsp;</td>
            <td class="nsinputs">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="CITY">City</label></b>&nbsp;*</td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a>&nbsp;*</td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b>&nbsp;*</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="8" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="CITY" name="CITY" tabindex="9" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="ZIP" name="ZIP" tabindex="11" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
         <td>
            <table border="0" cellpadding="2" cellspacing="0">
              <tr> 
                 <td>&nbsp;<b><label for="NPI_NUMBER">NPI</label></b>&nbsp;*</td>
                 <td>&nbsp;<b><label for="UNIQUEID">CLIA</label></b></td>
                 <td>&nbsp;<b><label for="UNIQUEID">DEA Number</label></b></td>
                 <td>&nbsp;<b><label for="UNIQUEID">Taxonomy</label></b></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" id="NPI_NUMBER" name="NPI_NUMBER" tabindex="12" size="10" maxlength="10" value="<TMPL_VAR NAME=NPI_NUMBER>"></td>
                <td class="nsinputs"><input type="text" id="CLIA_NUMBER" name="CLIA_NUMBER" tabindex="13" size="14" maxlength="15" value="<TMPL_VAR NAME=CLIA_NUMBER>"></td>
                <td class="nsinputs"><input type="text" id="DEA_NUMBER" name="DEA_NUMBER" tabindex="14" size="14" maxlength="15" value="<TMPL_VAR NAME=DEA_NUMBER>"></td>
                <td class="nsinputs"><input type="text" id="TAXONOMY" name="TAXONOMY" tabindex="15" size="14" maxlength="15" value="<TMPL_VAR NAME=TAXONOMY>"></td>
              </tr>
            </table>
         </td>
      </tr>


      <tr>
      <td>
        <div name="LICENSE_DIV" id="LICENSE_DIV">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
               <td>&nbsp;<b><label for="LICENSE_NUMBER_1">License Number</label></b></td>
               <td>&nbsp;<b><label for="LICENSE_STATE_1">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE_1');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
               <td>&nbsp;</td>
               <td class="nsinputs" valign="top"></td>
            </tr>
            <tr>
               <td class="nsinputs"><input type="text" id="LICENSE_NUMBER_1" name="LICENSE_NUMBER_1" tabindex="16" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER_1>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
               <td class="nsinputs"><input type="text" id="LICENSE_STATE_1" name="LICENSE_STATE_1" tabindex="17" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE_1>" onBlur="this.value=this.value.toUpperCase()"></td>
               <td class="nsinputs">&nbsp;</td>
               <td class="nsinputs" valign="top"><a title="Add Another License" href="javascript:void(0);" onClick="unhide_div( 'LICENSE' );"><img src="<TMPL_VAR NAME=IMGPATH>/plus.gif" alt="Expand" height="19" width="19"></a></td><td class="nsinputs" valign="center">Add License</td>
            </tr>
          </table>
        </div>
      </td>
      </tr>

      <tr>
      <td colspan="6">
        <div name="LICENSE_DIV_2" id="LICENSE_DIV_2" style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
               <td>&nbsp;<b><label for="LICENSE_NUMBER_2">License Number</label></b></td>
               <td>&nbsp;<b><label for="LICENSE_STATE_2">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE_2');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
               <td>&nbsp;</td>
               <td class="nsinputs" valign="top"><a title="Remove this license"href="javascript:void(0);" onClick="hide_div( 'LICENSE', 2 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td><td class="nsinputs" valign="center"></td>
            </tr>
            <tr>
               <td class="nsinputs"><input type="text" id="LICENSE_NUMBER_2" name="LICENSE_NUMBER_2" tabindex="18" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER_2>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
               <td class="nsinputs"><input type="text" id="LICENSE_STATE_2" name="LICENSE_STATE_2" tabindex="19" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE_2>" onBlur="this.value=this.value.toUpperCase()"></td>
               <td class="nsinputs">&nbsp;</td>
            </tr>
          </table>
        </div>
      </td>
      </tr>

      <tr>
      <td colspan="6">
        <div name="LICENSE_DIV_3" id="LICENSE_DIV_3" style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
               <td>&nbsp;<b><label for="LICENSE_NUMBER_3">License Number</label></b></td>
               <td>&nbsp;<b><label for="LICENSE_STATE_3">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE_3');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
               <td>&nbsp;</td>
               <td class="nsinputs" valign="top"><a title="Remove this license"href="javascript:void(0);" onClick="hide_div( 'LICENSE', 3 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
            </tr>
            <tr>
               <td class="nsinputs"><input type="text" id="LICENSE_NUMBER_3" name="LICENSE_NUMBER_3" tabindex="20" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER_3>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
               <td class="nsinputs"><input type="text" id="LICENSE_STATE_3" name="LICENSE_STATE_3" tabindex="21" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE_3>" onBlur="this.value=this.value.toUpperCase()"></td>
               <td class="nsinputs">&nbsp;</td>
            </tr>
          </table>
        </div>
      </td>
      </tr>

      <tr>
      <td colspan="6">
        <div name="LICENSE_DIV_4" id="LICENSE_DIV_4" style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
               <td>&nbsp;<b><label for="LICENSE_NUMBER_4">License Number</label></b></td>
               <td>&nbsp;<b><label for="LICENSE_STATE_4">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE_4');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
               <td>&nbsp;</td>
               <td class="nsinputs" valign="top"><a title="Remove this license"href="javascript:void(0);" onClick="hide_div( 'LICENSE', 4 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
            </tr>
            <tr>
               <td class="nsinputs"><input type="text" id="LICENSE_NUMBER_4" name="LICENSE_NUMBER_4" tabindex="22" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER_4>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
               <td class="nsinputs"><input type="text" id="LICENSE_STATE_4" name="LICENSE_STATE_4" tabindex="23" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE_4>" onBlur="this.value=this.value.toUpperCase()"></td>
               <td class="nsinputs">&nbsp;</td>
            </tr>
          </table>
        </div>
      </td>
      </tr>

      <tr>
      <td colspan="6">
        <div name="LICENSE_DIV_5" id="LICENSE_DIV_5" style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
               <td>&nbsp;<b><label for="LICENSE_NUMBER_5">License Number</label></b></td>
               <td>&nbsp;<b><label for="LICENSE_STATE_5">License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE_5');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
               <td>&nbsp;</td>
               <td class="nsinputs" valign="top"><a title="Remove this license"href="javascript:void(0);" onClick="hide_div( 'LICENSE', 5 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
            </tr>
            <tr>
               <td class="nsinputs"><input type="text" id="LICENSE_NUMBER_5" name="LICENSE_NUMBER_5" tabindex="24" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER_5>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
               <td class="nsinputs"><input type="text" id="LICENSE_STATE_5" name="LICENSE_STATE_5" tabindex="25" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE_5>" onBlur="this.value=this.value.toUpperCase()"></td>
               <td class="nsinputs">&nbsp;</td>
            </tr>
          </table>
        </div>
      </td>
      </tr>

<!-- end inputs_fields/provider_report_card.tpl -->
