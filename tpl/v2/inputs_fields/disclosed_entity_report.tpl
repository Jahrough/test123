<!-- begin disclosed_entity_report.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>

<script>
// _max is total number of expandable file
//     First is fixed
//     _1 .. _N are unhide-able
var assoc_ind_div_max  = 5;
var assoc_company_div_max  = 5;


// Number of divs that are currently visable
var assoc_ind_div_used = 1;
var assoc_company_div_used = 1;

var assoc_company_div_field_names=["ASSOC_COMPANY_NAME", "ASSOC_COMPANY_FEIN", "ASSOC_COMPANY_STREET_ADDRESS", "ASSOC_COMPANY_CITY", "ASSOC_COMPANY_STATE", "ASSOC_COMPANY_ZIP", "ASSOC_COMPANY_PHONE"];
var assoc_ind_div_field_names=["ASSOC_IND_LAST_NAME","ASSOC_IND_FIRST_NAME","ASSOC_IND_MIDDLE_NAME", "ASSOC_IND_DOB", 
                               "ASSOC_IND_STREET_ADDRESS", "ASSOC_IND_CITY", "ASSOC_IND_STATE", "ASSOC_IND_ZIP", "ASSOC_IND_SSN", "ASSOC_COMPANY_PHONE"];


function disclosed_entity_setup() {

  var   assoc_ind_initial_div = 1;
  var   assoc_company_initial_div = 1;

// unhide fields onLoad
// this can be due to populated fields
// or user setting
//
  for(var j = 1; j < assoc_ind_initial_div; j++) {
    unhide_div( 'ASSOC_IND' );
  }
  for(var j = 1; j < assoc_company_initial_div; j++) {
    unhide_div( 'ASSOC_COMPANY' );
  }

}


function get_div_field_length( div_name ) {
   if ( 'ASSOC_IND' == div_name ) {
      return assoc_ind_div_field_names.length;
   }
   if ( 'ASSOC_COMPANY' == div_name ) {
      return assoc_company_div_field_names.length;
   }
}

function get_div_field_name( div_name, pos ) {
   if ( 'ASSOC_IND' == div_name ) {
      return assoc_ind_div_field_names[pos];
   }
   if ( 'ASSOC_COMPANY' == div_name ) {
      return assoc_company_div_field_names[pos];
   }
}


function set_div_used( div_name, value ) {
   if ( 'ASSOC_IND' == div_name ) {
      assoc_ind_div_used = value;
   }
   if ( 'ASSOC_COMPANY' == div_name ) {
      assoc_company_div_used = value;
   }
}

function get_div_used( div_name ) {
   if ( 'ASSOC_IND' == div_name ) {
      return assoc_ind_div_used.valueOf();
   }
   if ( 'ASSOC_COMPANY' == div_name ) {
      return assoc_company_div_used.valueOf();
   }
}

function get_div_max( div_name ) {
   if ( 'ASSOC_IND' == div_name ) {
      return assoc_ind_div_max.valueOf();
   }
   if ( 'ASSOC_COMPANY' == div_name ) {
      return assoc_company_div_max.valueOf();
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
            <td><b>Required Fields</b>&nbsp; -- &nbsp;Note: Company or Organization Name, Street Address, City, State, Zip, and NPI Number are required.</td>
          </tr>
        </table>
        </td>
      </tr>
<tr>
  <td valign="top" align="left">
  <table border="0" cellpadding="2" cellspacing="0">
    <tr>
      <td>&nbsp;<b><label for="COMPANY_NAME">Company or Organization Name</label></b>&nbsp;*</td>
      <td>&nbsp;<b><label for="FEIN">TAXID/FEIN</label></b></td>
    </tr>
    <tr>
      <td class="nsinputs"><input type="text" name="COMPANY_NAME" tabindex="1" size="35" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      <td class="nsinputs"><input type="text" name="FEIN" tabindex="2" size="20" value="<TMPL_VAR NAME=FEIN>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
    </tr>
  </table>
  </td>
</tr>

<tr>
<td colspan="6">
  <div name="ADDRESS_DIV" id="ADDRESS_DIV">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b>&nbsp;*</td>
         <td>&nbsp;<b><label for="CITY">City</label></b>&nbsp;*</td>
         <td>&nbsp;<b><label for="STATE">State</label></b>&nbsp;*<a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ZIP">Zip</label></b>&nbsp;*</td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="STREET_ADDRESS" name="STREET_ADDRESS" tabindex="3" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="CITY" name="CITY"                     tabindex="4" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="STATE" name="STATE"                     tabindex="5" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ZIP" name="ZIP"           tabindex="6" size="6" maxlength="6" value="<TMPL_VAR NAME=ZIP>"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td valign="top" align="left">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="NPI_NUMBER">NPI Number</label></b>&nbsp;*</td>
         <td>&nbsp;<b><label for="PHONE">Phone Number</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="NPI_NUMBER" name="NPI_NUMBER" tabindex="7" size="15" value="<TMPL_VAR NAME=NPI_NUMBER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="PHONE" name="PHONE" tabindex="7" size="15" value="<TMPL_VAR NAME=PHONE>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
</td>
</tr>

<tr><td><br /><div id="lineVertGrayDot"></div></td></tr>

<!-- first (static) Associated Individual row -->
<tr>
  <td valign="top" align="left">
     <br />Associated Individual<a title="Add Another Individual" href="javascript:void(0);" onClick="unhide_div( 'ASSOC_IND' );"><img src="<TMPL_VAR NAME=IMGPATH>/plus.gif" alt="Expand" height="19"hspace="5" width="19"></a>
  </td>
</tr>
<tr>
<td colspan="6">
  <div name="ASSOC_IND_DIV" id="ASSOC_IND_DIV">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_LAST_NAME_1">Last Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_FIRST_NAME_1">First Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_MIDDLE_NAME_1">Middle Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_DOB_1">DOB<br>(mm/dd/yyyy)</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" name="ASSOC_IND_LAST_NAME_1" tabindex="7" size="35" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" name="ASSOC_IND_FIRST_NAME_1" tabindex="8" size="20" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_1>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" name="ASSOC_IND_MIDDLE_NAME_1" tabindex="9" size="20" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_1>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" name="ASSOC_IND_DOB_1" tabindex="10" size="12" value="<TMPL_VAR NAME=ASSOC_IND_DOB_1>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_STREET_ADDRESS_1">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_CITY_1">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_STATE_1">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_ZIP_1">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STREET_ADDRESS_1" name="ASSOC_IND_STREET_ADDRESS_1" tabindex="11" size="27" value="<TMPL_VAR NAME=ASSOC_IND_STREET_ADDRESS_1>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_CITY_1" name="ASSOC_IND_CITY_1" tabindex="12" size="15" value="<TMPL_VAR NAME=ASSOC_IND_CITY_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STATE_1" name="ASSOC_IND_STATE_1" tabindex="13" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_1>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_IND_ZIP_1" name="ASSOC_IND_ZIP_1" tabindex="14" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_IND_ZIP_1>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_SSN_1">SSN</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_PHONE_1">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_SSN_1" name="ASSOC_IND_SSN_1" tabindex="15" size="15" value="<TMPL_VAR NAME=ASSOC_IND_SSN_1>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_PHONE_1" name="ASSOC_IND_PHONE_1" tabindex="16" size="17" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>


<tr>
<td colspan="6">
  <div name="ASSOC_IND_DIV_2" id="ASSOC_IND_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_LAST_NAME_2">Last Name</label></b></td><a title="Remove this individual"href="javascript:void(0);" onClick="hide_div( 'ASSOC_IND', 2 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_FIRST_NAME_2">First Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_MIDDLE_NAME_2">Middle Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_DOB_2">DOB<br>(mm/dd/yyyy)</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_LAST_NAME_2" name="ASSOC_IND_LAST_NAME_2" tabindex="17" size="35" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_FIRST_NAME_2" name="ASSOC_IND_FIRST_NAME_2" tabindex="18" size="20" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_2>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_MIDDLE_NAME_2" name="ASSOC_IND_MIDDLE_NAME_2" tabindex="19" size="20" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_2>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_DOB_2" name="ASSOC_IND_DOB_2" tabindex="20" size="12" value="<TMPL_VAR NAME=ASSOC_IND_DOB_2>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_STREET_ADDRESS_2">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_CITY_2">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_STATE_2">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_ZIP_2">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STREET_ADDRESS_2"  name="ASSOC_IND_STREET_ADDRESS_2" tabindex="21" size="27" maxlength=50 value="<TMPL_VAR NAME=ASSOC_IND_STREET_ADDRESS_2>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_CITY_2"            name="ASSOC_IND_CITY_2"           tabindex="22" size="15" maxlength=255 value="<TMPL_VAR NAME=ASSOC_IND_CITY_2>"           onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STATE_2"           name="ASSOC_IND_STATE_2"          tabindex="23" size="3"  maxlength=2 value="<TMPL_VAR NAME=ASSOC_IND_STATE_2>"            onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_IND_ZIP_2" name="ASSOC_IND_ZIP_2"            tabindex="24" size="6"  maxlength=6 value="<TMPL_VAR NAME=ASSOC_IND_ZIP_2>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_SSN_2">SSN</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_PHONE_2">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_SSN_2" name="ASSOC_IND_SSN_2" tabindex="25" size="15" value="<TMPL_VAR NAME=ASSOC_IND_SSN_2>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_PHONE_2" name="ASSOC_IND_PHONE_2" tabindex="26" size="17" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>


<tr>
<td colspan="6">
  <div name="ASSOC_IND_DIV_3" id="ASSOC_IND_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_LAST_NAME_3">Last Name</label></b></td><a title="Remove this individual"href="javascript:void(0);" onClick="hide_div( 'ASSOC_IND', 3 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_FIRST_NAME_3">First Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_MIDDLE_NAME_3">Middle Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_DOB_3">DOB<br>(mm/dd/yyyy)</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_LAST_NAME_3" name="ASSOC_IND_LAST_NAME_3" tabindex="27" size="35" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_FIRST_NAME_3" name="ASSOC_IND_FIRST_NAME_3" tabindex="28" size="20" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_3>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_MIDDLE_NAME_3" name="ASSOC_IND_MIDDLE_NAME_3" tabindex="29" size="20" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_3>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_DOB_3" name="ASSOC_IND_DOB_3" tabindex="30" size="12" value="<TMPL_VAR NAME=ASSOC_IND_DOB_3>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_STREET_ADDRESS_3">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_CITY_3">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_STATE_3">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_ZIP_3">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STREET_ADDRESS_3" name="ASSOC_IND_STREET_ADDRESS_3" tabindex="31" size="27" value="<TMPL_VAR NAME=ASSOC_IND_STREET_ADDRESS_3>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_CITY_3" name="ASSOC_IND_CITY_3"                     tabindex="32" size="15" value="<TMPL_VAR NAME=ASSOC_IND_CITY_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STATE_3" name="ASSOC_IND_STATE_3"                     tabindex="33" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_3>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_IND_ZIP_3" name="ASSOC_IND_ZIP_3"           tabindex="34" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_IND_ZIP_3>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_SSN_3">SSN</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_PHONE_3">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_SSN_3" name="ASSOC_IND_SSN_3" tabindex="35" size="15" value="<TMPL_VAR NAME=ASSOC_IND_SSN_3>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_PHONE_3" name="ASSOC_IND_PHONE_3" tabindex="36" size="17" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>


<tr>
<td colspan="6">
  <div name="ASSOC_IND_DIV_4" id="ASSOC_IND_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_LAST_NAME_4">Last Name</label></b></td><a title="Remove this individual"href="javascript:void(0);" onClick="hide_div( 'ASSOC_IND', 4 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_FIRST_NAME_4">First Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_MIDDLE_NAME_4">Middle Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_DOB_4">DOB<br>(mm/dd/yyyy)</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_LAST_NAME_4" name="ASSOC_IND_LAST_NAME_4" tabindex="37" size="35" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_FIRST_NAME_4" name="ASSOC_IND_FIRST_NAME_4" tabindex="38" size="20" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_4>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_MIDDLE_NAME_4" name="ASSOC_IND_MIDDLE_NAME_4" tabindex="39" size="20" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_4>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_DOB_4" name="ASSOC_IND_DOB_4" tabindex="40" size="12" value="<TMPL_VAR NAME=ASSOC_IND_DOB_4>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_STREET_ADDRESS_4">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_CITY_4">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_STATE_4">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_ZIP_4">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STREET_ADDRESS_4" name="ASSOC_IND_STREET_ADDRESS_4" tabindex="41" size="27" value="<TMPL_VAR NAME=ASSOC_IND_STREET_ADDRESS_4>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_CITY_4" name="ASSOC_IND_CITY_4"                     tabindex="42" size="15" value="<TMPL_VAR NAME=ASSOC_IND_CITY_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STATE_4" name="ASSOC_IND_STATE_4"                     tabindex="43" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_4>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_IND_ZIP_4" name="ASSOC_IND_ZIP_4"           tabindex="44" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_IND_ZIP_4>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_SSN_4">SSN</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_PHONE_4">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_SSN_4" name="ASSOC_IND_SSN_4" tabindex="45" size="15" value="<TMPL_VAR NAME=ASSOC_IND_SSN_4>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_PHONE_4" name="ASSOC_IND_PHONE_4" tabindex="46" size="17" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>


<tr>
<td colspan="6">
  <div name="ASSOC_IND_DIV_5" id="ASSOC_IND_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_LAST_NAME_5">Last Name</label></b></td><a title="Remove this individual"href="javascript:void(0);" onClick="hide_div( 'ASSOC_IND', 5 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_FIRST_NAME_5">First Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_MIDDLE_NAME_5">Middle Name</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_DOB_5">DOB<br>(mm/dd/yyyy)</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_LAST_NAME_5" name="ASSOC_IND_LAST_NAME_5" tabindex="47" size="35" value="<TMPL_VAR NAME=ASSOC_IND_LAST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_FIRST_NAME_5" name="ASSOC_IND_FIRST_NAME_5" tabindex="48" size="20" value="<TMPL_VAR NAME=ASSOC_IND_FIRST_NAME_5>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_MIDDLE_NAME_5" name="ASSOC_IND_MIDDLE_NAME_5" tabindex="49" size="20" value="<TMPL_VAR NAME=ASSOC_IND_MIDDLE_NAME_5>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_DOB_5" name="ASSOC_IND_DOB_5" tabindex="50" size="12" value="<TMPL_VAR NAME=ASSOC_IND_DOB_5>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_STREET_ADDRESS_5">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_CITY_5">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_STATE_5">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_IND_ZIP_5">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STREET_ADDRESS_5" name="ASSOC_IND_STREET_ADDRESS_5" tabindex="51" size="27" value="<TMPL_VAR NAME=ASSOC_IND_STREET_ADDRESS_5>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_CITY_5" name="ASSOC_IND_CITY_5"                     tabindex="52" size="15" value="<TMPL_VAR NAME=ASSOC_IND_CITY_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_STATE_5" name="ASSOC_IND_STATE_5"                     tabindex="53" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_IND_STATE_5>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_IND_ZIP_5" name="ASSOC_IND_ZIP_5"           tabindex="54" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_IND_ZIP_5>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_IND_SSN_5">SSN</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_IND_PHONE_5">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_SSN_5" name="ASSOC_IND_SSN_5" tabindex="55" size="15" value="<TMPL_VAR NAME=ASSOC_IND_SSN_5>" autocomplete="off" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_IND_PHONE_5" name="ASSOC_IND_PHONE_5" tabindex="56" size="17" value="<TMPL_VAR NAME=ASSOC_IND_PHONE_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr><td><div id="lineVertGrayDot"></div></td></tr>

<!-- first (static) Associated Company row -->
<tr>
  <td valign="top" align="left">
     <br />Associated Company or Organization<a title="Add Another Company" href="javascript:void(0);" onClick="unhide_div( 'ASSOC_COMPANY' );"><img src="<TMPL_VAR NAME=IMGPATH>/plus.gif" alt="Expand" height="19"hspace="5" width="19"></a>
  </td>
</tr>
<tr>
<td colspan="6">
  <div name="ASSOC_COMPANY_DIV" id="ASSOC_COMPANY_DIV">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_NAME_1">Company Name</label></b></td>
         <td>&nbsp;<b><label for="FEIN_1">TAXID/FEIN</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" name="ASSOC_COMPANY_NAME_1" tabindex="57" size="35" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" name="ASSOC_COMPANY_FEIN_1" tabindex="58" size="20" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_1>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STREET_ADDRESS_1">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_CITY_1">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STATE_1">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_ZIP_1">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STREET_ADDRESS_1" name="ASSOC_COMPANY_STREET_ADDRESS_1" tabindex="59" size="27" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_1>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_CITY_1" name="ASSOC_COMPANY_CITY_1"                     tabindex="60" size="15" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STATE_1" name="ASSOC_COMPANY_STATE_1"                     tabindex="61" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_1>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_COMPANY_ZIP_1" name="ASSOC_COMPANY_ZIP_1"           tabindex="62" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_1>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_PHONE_1">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_PHONE_1" name="ASSOC_COMPANY_PHONE_1" tabindex="63" size="17" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="6">
  <div name="ASSOC_COMPANY_DIV_2" id="ASSOC_COMPANY_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_NAME_2">Company Name</label></b></td></td><a title="Remove this Company" href="javascript:void(0);" onClick="hide_div( 'ASSOC_COMPANY', 2 );"><br /><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_FEIN_2">TAXID/FEIN</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_NAME_2" name="ASSOC_COMPANY_NAME_2" tabindex="64" size="35" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_FEIN_2" name="ASSOC_COMPANY_FEIN_2" tabindex="65" size="20" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_2>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STREET_ADDRESS_2">Street Address</label></b>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_CITY_2">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STATE_2">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_ZIP_2">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STREET_ADDRESS_2" name="ASSOC_COMPANY_STREET_ADDRESS_2" tabindex="66" size="27" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_2>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_CITY_2" name="ASSOC_COMPANY_CITY_2" tabindex="67" size="15" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STATE_2" name="ASSOC_COMPANY_STATE_2" tabindex="68" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_2>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_COMPANY_ZIP_2" name="ASSOC_COMPANY_ZIP_2" tabindex="69" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_2>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_PHONE_2">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_PHONE_2" name="ASSOC_COMPANY_PHONE_2" tabindex="70" size="17" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="6">
  <div name="ASSOC_COMPANY_DIV_3" id="ASSOC_COMPANY_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_NAME_3">Company Name</label></b></td><a title="Remove this company" href="javascript:void(0);" onClick="hide_div( 'ASSOC_COMPANY', 3 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_FEIN_3">TAXID/FEIN</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_NAME_3" name="ASSOC_COMPANY_NAME_3" tabindex="71" size="35" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_FEIN_3" name="ASSOC_COMPANY_FEIN_3" tabindex="72" size="20" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_3>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STREET_ADDRESS_3">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_CITY_3">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STATE_3">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_ZIP_3">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STREET_ADDRESS_3" name="ASSOC_COMPANY_STREET_ADDRESS_3" tabindex="73" size="27" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_3>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_CITY_3" name="ASSOC_COMPANY_CITY_3" tabindex="74" size="15" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STATE_3" name="ASSOC_COMPANY_STATE_3" tabindex="75" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_3>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_COMPANY_ZIP_3" name="ASSOC_COMPANY_ZIP_3" tabindex="76" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_3>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_PHONE_3">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_PHONE_3" name="ASSOC_COMPANY_PHONE_3" tabindex="77" size="17" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="6">
  <div name="ASSOC_COMPANY_DIV_4" id="ASSOC_COMPANY_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_NAME_4">Company Name</label></b></td><a title="Remove this company" href="javascript:void(0);" onClick="hide_div( 'ASSOC_COMPANY', 4 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_FEIN_4">TAXID/FEIN</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_NAME_4" name="ASSOC_COMPANY_NAME_4" tabindex="78" size="35" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_FEIN_4" name="ASSOC_COMPANY_FEIN_4" tabindex="79" size="20" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_4>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STREET_ADDRESS_4">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_CITY_4">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STATE_4">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_ZIP_4">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STREET_ADDRESS_4" name="ASSOC_COMPANY_STREET_ADDRESS_4" tabindex="80" size="27" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_4>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_CITY_4" name="ASSOC_COMPANY_CITY_4" tabindex="81" size="15" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STATE_4" name="ASSOC_COMPANY_STATE_4" tabindex="82" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_4>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_COMPANY_ZIP_4" name="ASSOC_COMPANY_ZIP_4" tabindex="83" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_4>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_PHONE_4">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_PHONE_4" name="ASSOC_COMPANY_PHONE_4" tabindex="84" size="17" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="6">
  <div name="ASSOC_COMPANY_DIV_5" id="ASSOC_COMPANY_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_NAME_5">Company Name</label></b></td><a title="Remove this company" href="javascript:void(0);" onClick="hide_div( 'ASSOC_COMPANY', 5 );"><br /><img src="<TMPL_VAR NAME=IMGPATH>/minus.gif" alt="Expand" height="19" width="19"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_FEIN_5">TAXID/FEIN</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_NAME_5" name="ASSOC_COMPANY_NAME_5" tabindex="85" size="35" value="<TMPL_VAR NAME=ASSOC_COMPANY_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_FEIN_5" name="ASSOC_COMPANY_FEIN_5" tabindex="86" size="20" value="<TMPL_VAR NAME=ASSOC_COMPANY_FEIN_5>" maxlength=10 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STREET_ADDRESS_5">Street Address</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_CITY_5">City</label></b></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_STATE_5">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_ZIP_5">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STREET_ADDRESS_5" name="ASSOC_COMPANY_STREET_ADDRESS_5" tabindex="87" size="27" value="<TMPL_VAR NAME=ASSOC_COMPANY_STREET_ADDRESS_5>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_CITY_5" name="ASSOC_COMPANY_CITY_5" tabindex="88" size="15" value="<TMPL_VAR NAME=ASSOC_COMPANY_CITY_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_STATE_5" name="ASSOC_COMPANY_STATE_5" tabindex="89" size="3" maxlength="2" value="<TMPL_VAR NAME=ASSOC_COMPANY_STATE_5>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="ASSOC_COMPANY_ZIP_5" name="ASSOC_COMPANY_ZIP_5" tabindex="90" size="6" maxlength="6" value="<TMPL_VAR NAME=ASSOC_COMPANY_ZIP_5>"></td>
      </tr>
    </table>
    <table border="0" cellpadding="2" cellspacing="0">
      <tr>
         <td>&nbsp;<b><label for="ASSOC_COMPANY_PHONE_5">Phone</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="ASSOC_COMPANY_PHONE_5" name="ASSOC_COMPANY_PHONE_5" tabindex="91" size="17" value="<TMPL_VAR NAME=ASSOC_COMPANY_PHONE_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
      </tr>
    </table>
  </div>
</td>
</tr>

      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
        </table>
        </td>
      </tr>
<!-- end inputs_fields/disclosed_entity_report.tpl -->
