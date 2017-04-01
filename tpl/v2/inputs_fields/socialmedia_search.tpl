
<!-- start socialmedia_search.tpl -->

<!-- begin inputs_fields/sml_search.tpl -->
<!-- social media locator -->

<script>

function sml_term_tip () {
    build_tip('Additional Terms','Anything can be added that you may be specifically looking to \"include\" or \"exclude\" in your search.  If adding more than one term, the system looks for search terms as a phrase and treats each space as a space in that phrase.');
}


function sml_phone_tip_10 () {
    build_tip('Phone','There is no particular format for entering phone numbers.  You can enter 7 digit and 10 digit phone numbers in any format.');
}


function sml_dob_tip () {
    build_tip('Date of Birth format','A date of birth must be entered in the following format: mm/dd/yyyy<br><br>For Example:<br><br>&nbsp;&nbsp;Month, Day and Year: (04/23/1963)<br>');
}

function sml_username_tip () {
    build_tip('Username','A username is an identifier used by a subject with access to an online service. When entering a username, a site must be selected from the dropdown.  If a site is not selected, you will not be able to run the search until one is selected.  Unknown can be selected from the dropdown if a site is unknown.');
}

// _max is total number of expandable file
//     _1 is fixed
//     _2 .. _N are unhide-able
var address_div_max  = 5;
var assoc_div_max    = 5;
var company_div_max  = 5;
var email_div_max    = 5;
var phone_div_max    = 3;
var other_div_max    = 5;
var school_div_max   = 5;
var spouse_div_max   = 5;
var term_div_max     = 5;
var user_div_max     = 5;


// Number of divs that are currently visable
var address_div_used = 1;
var assoc_div_used   = 1;
var company_div_used = 1;
var email_div_used   = 1;
var phone_div_used   = 1;
var other_div_used   = 1;
var school_div_used  = 1;
var spouse_div_used  = 1;
var term_div_used    = 1;
var user_div_used    = 1;

var address_div_field_names=["SML_STREET_ADDRESS", "SML_CITY", "SML_STATE", "SML_ZIP"];
var assoc_div_field_names=["SML_ASSOC_LAST_NAME","SML_ASSOC_FIRST_NAME","SML_ASSOC_MIDDLE_NAME"];


var company_div_field_names=["SML_COMPANY"];
var email_div_field_names=["SML_EMAIL"];
var phone_div_field_names=["SML_PHONE"];
var other_div_field_names=["SML_OTHER_LAST_NAME", "SML_OTHER_FIRST_NAME", "SML_OTHER_MIDDLE_NAME"];
var school_div_field_names=["SML_SCHOOL"];
var spouse_div_field_names=["SML_SPOUSE_LAST_NAME", "SML_SPOUSE_FIRST_NAME", "SML_SPOUSE_MIDDLE_NAME", "SML_SPOUSE_MAIDEN_NAME"];
var term_div_field_names=["SML_TERM"];    // "TYPE"
var user_div_field_names=["SML_USER"];    // "TYPE"

function SML_onload() {
  var   email_initial_div = <TMPL_VAR NAME=EMAIL_INITIAL_DIV>;
  var   phone_initial_div = <TMPL_VAR NAME=PHONE_INITIAL_DIV>;
  var   school_initial_div = <TMPL_VAR NAME=SCHOOL_INITIAL_DIV>;
  var   company_initial_div = <TMPL_VAR NAME=COMPANY_INITIAL_DIV>;
  var   address_initial_div = <TMPL_VAR NAME=ADDRESS_INITIAL_DIV>;
  var   assoc_initial_div = <TMPL_VAR NAME=ASSOC_INITIAL_DIV>;
  var   other_initial_div = <TMPL_VAR NAME=OTHER_INITIAL_DIV>;
  var   spouse_initial_div = <TMPL_VAR NAME=SPOUSE_INITIAL_DIV>;
  var   term_initial_div = <TMPL_VAR NAME=TERM_INITIAL_DIV>;
  var   user_initial_div = <TMPL_VAR NAME=USER_INITIAL_DIV>;

  var   expand_assoc = <TMPL_VAR NAME=EXPAND_ASSOC>;
  var   expand_add_subject = <TMPL_VAR NAME=EXPAND_ADD_SUBJECT>;
  var   expand_terms = <TMPL_VAR NAME=EXPAND_TERMS>;

  setup_form();

// expand sections onLoad
// this can be due to populated fields
// or user setting
//  
  if (expand_assoc > 0)       { hide_unhide_section( 'ASSOC' ); }
  if (expand_add_subject > 0) { hide_unhide_section( 'OTHER' ); }
  if (expand_terms > 0)       { hide_unhide_section( 'TERMS' ); }


// unhide fields onLoad
// this can be due to populated fields
// or user setting
//  
  for(var j = 1; j < email_initial_div; j++)   { unhide_sml_div( 'EMAIL' ); }
  for(var j = 1; j < phone_initial_div; j++)   { unhide_sml_div( 'PHONE' ); }
  for(var j = 1; j < school_initial_div; j++)  { unhide_sml_div( 'SCHOOL' ); }
  for(var j = 1; j < company_initial_div; j++) { unhide_sml_div( 'COMPANY' ); }
  for(var j = 1; j < address_initial_div; j++) { unhide_sml_div( 'ADDRESS' ); }
  for(var j = 1; j < assoc_initial_div; j++)   { unhide_sml_div( 'ASSOC' ); }
  for(var j = 1; j < other_initial_div; j++)   { unhide_sml_div( 'OTHER' ); }
  for(var j = 1; j < spouse_initial_div; j++)  { unhide_sml_div( 'SPOUSE' ); }
  for(var j = 1; j < term_initial_div; j++)    { unhide_sml_div( 'TERM' ); }
  for(var j = 1; j < user_initial_div; j++)    { unhide_sml_div( 'USER' ); }
}


  //do onload
	  document.observe( 'dom:loaded', SML_onload );


function get_div_field_length( div_name ) {
   if ( 'ADDRESS' == div_name ) {
      return address_div_field_names.length;
   }
   if ( 'ASSOC' == div_name ) {
      return assoc_div_field_names.length;
   }
   if ( 'COMPANY' == div_name ) {
      return company_div_field_names.length;
   }
   if ( 'EMAIL' == div_name ) {
      return email_div_field_names.length;
   }
   if ( 'PHONE' == div_name ) {
      return phone_div_field_names.length;
   }
   if ( 'OTHER' == div_name ) {
      return other_div_field_names.length;
   }
   if ( 'SCHOOL' == div_name ) {
      return school_div_field_names.length;
   }
   if ( 'SPOUSE' == div_name ) {
      return spouse_div_field_names.length;
   }
   if ( 'TERM' == div_name ) {
      return term_div_field_names.length;
   }
   if ( 'USER' == div_name ) {
      return user_div_field_names.length;
   }
}

function get_div_field_name( div_name, pos ) {
   if ( 'ADDRESS' == div_name ) {
      return address_div_field_names[pos];
   }
   if ( 'ASSOC' == div_name ) {
      return assoc_div_field_names[pos];
   }
   if ( 'COMPANY' == div_name ) {
      return company_div_field_names[pos];
   }
   if ( 'EMAIL' == div_name ) {
      return email_div_field_names[pos];
   }
   if ( 'PHONE' == div_name ) {
      return phone_div_field_names[pos];
   }
   if ( 'OTHER' == div_name ) {
      return other_div_field_names[pos];
   }
   if ( 'SCHOOL' == div_name ) {
      return school_div_field_names[pos];
   }
   if ( 'SPOUSE' == div_name ) {
      return spouse_div_field_names[pos];
   }
   if ( 'TERM' == div_name ) {
      return term_div_field_names[pos];
   }
   if ( 'USER' == div_name ) {
      return user_div_field_names[pos];
   }
}


function set_div_used( div_name, value ) {
   if ( 'ADDRESS' == div_name ) {
      address_div_used = value;
   }
   if ( 'ASSOC' == div_name ) {
      assoc_div_used = value;
   }
   if ( 'COMPANY' == div_name ) {
      company_div_used = value;
   }
   if ( 'EMAIL' == div_name ) {
      email_div_used = value;
   }
   if ( 'PHONE' == div_name ) {
      phone_div_used = value;
   }
   if ( 'OTHER' == div_name ) {
      other_div_used = value;
   }
   if ( 'SCHOOL' == div_name ) {
      school_div_used = value;
   }
   if ( 'SPOUSE' == div_name ) {
      spouse_div_used = value;
   }
   if ( 'TERM' == div_name ) {
      term_div_used = value;
   }
   if ( 'USER' == div_name ) {
      user_div_used = value;
   }
}

function get_div_used( div_name ) {
   if ( 'ADDRESS' == div_name ) {
      return address_div_used.valueOf();
   }
   if ( 'ASSOC' == div_name ) {
      return assoc_div_used.valueOf();
   }
   if ( 'COMPANY' == div_name ) {
      return company_div_used.valueOf();
   }
   if ( 'EMAIL' == div_name ) {
      return email_div_used.valueOf();
   }
   if ( 'PHONE' == div_name ) {
      return phone_div_used.valueOf();
   }
   if ( 'OTHER' == div_name ) {
      return other_div_used.valueOf();
   }
   if ( 'SCHOOL' == div_name ) {
      return school_div_used.valueOf();
   }
   if ( 'SPOUSE' == div_name ) {
      return spouse_div_used.valueOf();
   }
   if ( 'TERM' == div_name ) {
      return term_div_used.valueOf();
   }
   if ( 'USER' == div_name ) {
      return user_div_used.valueOf();
   }
}

function get_div_max( div_name ) {
   if ( 'ADDRESS' == div_name ) {
      return address_div_max.valueOf();
   }
   if ( 'ASSOC' == div_name ) {
      return assoc_div_max.valueOf();
   }
   if ( 'COMPANY' == div_name ) {
      return company_div_max.valueOf();
   }
   if ( 'EMAIL' == div_name ) {
      return email_div_max.valueOf();
   }
   if ( 'PHONE' == div_name ) {
      return phone_div_max.valueOf();
   }
   if ( 'OTHER' == div_name ) {
      return other_div_max.valueOf();
   }
   if ( 'SCHOOL' == div_name ) {
      return school_div_max.valueOf();
   }
   if ( 'SPOUSE' == div_name ) {
      return spouse_div_max.valueOf();
   }
   if ( 'TERM' == div_name ) {
      return term_div_max.valueOf();
   }
   if ( 'USER' == div_name ) {
      return user_div_max.valueOf();
   }
}



function unhide_sml_div( in_div_name ) {
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


function hide_sml_div(in_div_name, in_div_num) {
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





function get_div_names( div_name ) {
   if ( 'OTHER' == div_name ) {
      return 'SML_OTHER_LAST_NAME_1|SML_OTHER_FIRST_NAME_1|SML_OTHER_MIDDLE_NAME_1|SML_OTHER_LAST_NAME_2|SML_OTHER_FIRST_NAME_2|SML_OTHER_MIDDLE_NAME_2|SML_OTHER_LAST_NAME_3|SML_OTHER_FIRST_NAME_3|SML_OTHER_MIDDLE_NAME_3|SML_OTHER_LAST_NAME_4|SML_OTHER_FIRST_NAME_4|SML_OTHER_MIDDLE_NAME_4|SML_OTHER_LAST_NAME_5|SML_OTHER_FIRST_NAME_5|SML_OTHER_MIDDLE_NAME_5|SML_SPOUSE_LAST_NAME_1|SML_SPOUSE_FIRST_NAME_1|SML_SPOUSE_MIDDLE_NAME_1|SML_SPOUSE_MAIDEN_NAME_1|SML_SPOUSE_LAST_NAME_2|SML_SPOUSE_FIRST_NAME_2|SML_SPOUSE_MIDDLE_NAME_2|SML_SPOUSE_MAIDEN_NAME_2|SML_SPOUSE_LAST_NAME_3|SML_SPOUSE_FIRST_NAME_3|SML_SPOUSE_MIDDLE_NAME_3|SML_SPOUSE_MAIDEN_NAME_3|SML_SPOUSE_LAST_NAME_4|SML_SPOUSE_FIRST_NAME_4|SML_SPOUSE_MIDDLE_NAME_4|SML_SPOUSE_MAIDEN_NAME_4|SML_SPOUSE_LAST_NAME_5|SML_SPOUSE_FIRST_NAME_5|SML_SPOUSE_MIDDLE_NAME_5|SML_SPOUSE_MAIDEN_NAME_5';
   }
   if ( 'ASSOC' == div_name ) {
      return 'SML_ASSOC_LAST_NAME_1|SML_ASSOC_FIRST_NAME_1|SML_ASSOC_MIDDLE_NAME_1|SML_ASSOC_LAST_NAME_2|SML_ASSOC_FIRST_NAME_2|SML_ASSOC_MIDDLE_NAME_2|SML_ASSOC_LAST_NAME_3|SML_ASSOC_FIRST_NAME_3|SML_ASSOC_MIDDLE_NAME_3|SML_ASSOC_LAST_NAME_4|SML_ASSOC_FIRST_NAME_4|SML_ASSOC_MIDDLE_NAME_4|SML_ASSOC_LAST_NAME_5|SML_ASSOC_FIRST_NAME_5|SML_ASSOC_MIDDLE_NAME_5';
   }
   if ( 'TERMS' == div_name ) {
      return 'SML_TERM_1|SML_TERM_2|SML_TERM_3|SML_TERM_4|SML_TERM_5';
   }
}


function hide_unhide_section ( in_div_name ) {
   var hide_section_div_name = in_div_name + '_SECTION_HIDE'; 
   var control_image = in_div_name + '_CONTROL_IMAGE';

   var elem;
   var div = document.getElementById( hide_section_div_name );
   if(div.style.visibility == 'visible') {
     var ans = confirm('When you close this section, all fields in the section\nwill be cleared.\n\n\tWould you like to continue?');
     if ( ans == true ) {
       var section_field_names = get_div_names( in_div_name );
       var section_fields = section_field_names.split(/\|/);
       var arrayLength = section_fields.length;

       for (var i = 0; i < arrayLength; i++) {
         var this_name = section_fields[i];
         var var1 = document.getElementById( this_name );
         var1.value = '';
       }
       if ( 'TERMS' == in_div_name ) {
          document.forms[0].SML_TYPE_1[0].selected=true;  
          document.forms[0].SML_TYPE_2[0].selected=true;  
          document.forms[0].SML_TYPE_3[0].selected=true;  
          document.forms[0].SML_TYPE_4[0].selected=true;  
          document.forms[0].SML_TYPE_5[0].selected=true;  
       }
     elem = document.getElementById( hide_section_div_name );
     elem.style.visibility = 'hidden';
     elem.style.display    = 'none';
     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif";
     }
   } else {
     elem = document.getElementById( hide_section_div_name );
     elem.style.visibility = 'visible';
     elem.style.display    = 'block';
     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/instant_id_cross.gif";
//     document.getElementById( control_image ).src="<TMPL_VAR NAME=IMGPATH>/ico_nodata.gif";
   }
}

function toggle_sml_row( in_id, in_count ) {
  for(var j = 1; j <= in_count; j++)   {
    var id_name = in_id + '_' + j;
    if (document.getElementById( id_name )) {
       if( document.getElementById( id_name ).style.display=='none' ){
               document.getElementById( id_name ).style.display = '';
       }else{
               document.getElementById( id_name ).style.display = 'none';
       }
    }
  }
}

function toggle_sml_all( in_setting, in_count ) {

// table row data
   var hide_elements = getElementsStartsWithId( 'SML_ROWHIDE_' );
   var arrayLength = hide_elements.length;
   for (var i = 0; i < arrayLength; i++) {
     if (in_setting == 'H') {
        hide_elements[i].style.display    = 'none';
     } else {
        hide_elements[i].style.display    = '';
     }
   }

// document.getElementById("SML_CHECKBOX_SOCIAL_NETWORK_PROFILES").checked = false;

//   elem = document.getElementById("SML_CHECKBOX_SOCIAL_NETWORK_PROFILES");
//   if (elem.disabled == false) {
//      elem.checked = check_status;
//   }   
//
//   elem = document.getElementById("SML_CHECKBOX_GEO_SOCIAL_NETWORK");
//   if (elem.disabled == false) {
//      elem.checked = check_status;
//   }   


   var check_status = true;
   if (in_setting == 'H') {
     check_status = false;
   }

   hide_elements = getElementsStartsWithId( 'SML_CHECKBOX_' );
   arrayLength = hide_elements.length;
   for (var i = 0; i < arrayLength; i++) {
//     elem - hide_elements[i];
     if (hide_elements[i].disabled == false) {
        hide_elements[i].checked = check_status;
     }   
     
//     hide_elements[i].checked = false;
   }



   
}

function getElementsStartsWithId( id ) {
  var children = document.body.getElementsByTagName('*');
  var elements = [], child;
  for (var i = 0, length = children.length; i < length; i++) {
    child = children[i];
    if (child.id.substr(0, id.length) == id)
      elements.push(child);
  }
  return elements;
}
</script>

<TMPL_IF NAME="SOCIALMEDIA_SEARCH">
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable2.js"></script>
</TMPL_IF>





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
            <td nowrap valign="top">&nbsp;</td>
            <td>Note: For optimal results Name, City, State, Phone and Email should be entered.</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td valign="top" nowrap="nowrap">&nbsp;<span class=unifont1boldred><b>*</b></span><b>&nbsp;Required Fields&nbsp;</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME"   tabindex="1"  size="20" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="2"  size="20" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI"                 tabindex="3" size="20" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      
<!-- ADDRESS_DIV    Street + CITY + state + ZIP -->
<!-- first (static) row -->
<tr>
<td colspan="6">
  <div name="ADDRESS_DIV_1" id="ADDRESS_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_STREET_ADDRESS">Street Address</label></b></td>
         <td>&nbsp;<b><label for="SML_CITY">City</label></b></td>
         <td>&nbsp;<b><label for="SML_STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('SML_STATE_1');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="SML_ZIP">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_STREET_ADDRESS_1" name="SML_STREET_ADDRESS_1" tabindex="10" size="27" value="<TMPL_VAR NAME=SML_STREET_ADDRESS_1>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_CITY_1" name="SML_CITY_1"                     tabindex="11" size="15" value="<TMPL_VAR NAME=SML_CITY_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_STATE_1" name="SML_STATE_1"                   tabindex="12" size="3" maxlength="2" value="<TMPL_VAR NAME=SML_STATE_1>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ZIP_1" name="SML_ZIP_1"           tabindex="13" size="6" maxlength="6" value="<TMPL_VAR NAME=SML_ZIP_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'ADDRESS' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="6">
  <div name="ADDRESS_DIV_2" id="ADDRESS_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
         <td>&nbsp;<b><label for="CITY">City</label></b></td>
         <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('SML_STATE_2');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_STREET_ADDRESS_2" name="SML_STREET_ADDRESS_2" tabindex="14" size="27" value="<TMPL_VAR NAME=SML_STREET_ADDRESS_2>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_CITY_2" name="SML_CITY_2"                     tabindex="15" size="15" value="<TMPL_VAR NAME=SML_CITY_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_STATE_2" name="SML_STATE_2"                   tabindex="16" size="3" maxlength="2" value="<TMPL_VAR NAME=SML_STATE_2>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ZIP_2" name="SML_ZIP_2"           tabindex="17" size="6" maxlength="6" value="<TMPL_VAR NAME=SML_ZIP_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ADDRESS', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ADDRESS_DIV_3" id="ADDRESS_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
         <td>&nbsp;<b><label for="CITY">City</label></b></td>
         <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('SML_STATE_3');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_STREET_ADDRESS_3" name="SML_STREET_ADDRESS_3" tabindex="18" size="27" value="<TMPL_VAR NAME=SML_STREET_ADDRESS_3>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_CITY_3" name="SML_CITY_3"                     tabindex="19" size="15" value="<TMPL_VAR NAME=SML_CITY_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_STATE_3" name="SML_STATE_3"                   tabindex="20" size="3" maxlength="2" value="<TMPL_VAR NAME=SML_STATE_3>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ZIP_3" name="SML_ZIP_3"           tabindex="21" size="6" maxlength="6" value="<TMPL_VAR NAME=SML_ZIP_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ADDRESS', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ADDRESS_DIV_4" id="ADDRESS_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
         <td>&nbsp;<b><label for="CITY">City</label></b></td>
         <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('SML_STATE_4');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_STREET_ADDRESS_4" name="SML_STREET_ADDRESS_4" tabindex="22" size="27" value="<TMPL_VAR NAME=SML_STREET_ADDRESS_4>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_CITY_4" name="SML_CITY_4"                     tabindex="23" size="15" value="<TMPL_VAR NAME=SML_CITY_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_STATE_4" name="SML_STATE_4"                   tabindex="24" size="3" maxlength="2" value="<TMPL_VAR NAME=SML_STATE_4>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ZIP_4" name="SML_ZIP_4"           tabindex="25" size="6" maxlength="6" value="<TMPL_VAR NAME=SML_ZIP_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ADDRESS', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ADDRESS_DIV_5" id="ADDRESS_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
         <td>&nbsp;<b><label for="CITY">City</label></b></td>
         <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('SML_STATE_5');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
         <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_STREET_ADDRESS_5" name="SML_STREET_ADDRESS_5" tabindex="26" size="27" value="<TMPL_VAR NAME=SML_STREET_ADDRESS_5>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_CITY_5" name="SML_CITY_5"                     tabindex="27" size="15" value="<TMPL_VAR NAME=SML_CITY_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_STATE_5" name="SML_STATE_5"                   tabindex="28" size="3" maxlength="2" value="<TMPL_VAR NAME=SML_STATE_5>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ZIP_5" name="SML_ZIP_5"           tabindex="29" size="6" maxlength="6" value="<TMPL_VAR NAME=SML_ZIP_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ADDRESS', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          
<!-- two inputs with vertical alignment -->




<TMPL_IF NAME=INSx>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SML_PHONE_1">Phone</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
            <td>&nbsp;<b><label for="SML_PHONE_2">Phone</label></b></td>
            <td>&nbsp;<b><label for="SML_PHONE_3">Phone</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="SML_PHONE_1" name="SML_PHONE_1"   tabindex="35" size="20" value="<TMPL_VAR NAME=SML_PHONE_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SML_PHONE_2" name="SML_PHONE_2"   tabindex="36" size="20" value="<TMPL_VAR NAME=SML_PHONE_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SML_PHONE_3" name="SML_PHONE_3"   tabindex="37" size="20" value="<TMPL_VAR NAME=SML_PHONE_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SML_PHONE_4" name="SML_PHONE_4"   tabindex="38" size="20" value="<TMPL_VAR NAME=SML_PHONE_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="SML_PHONE_5" name="SML_PHONE_5"   tabindex="39" size="20" value="<TMPL_VAR NAME=SML_PHONE_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
</TMPL_IF>



<!-- PHONE_DIV    PHONE -->
<!-- first (static) row -->
<tr>
<td colspan="4">
  <div name="PHONE_DIV_1" id="PHONE_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_PHONE_1">PHONE</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_PHONE_1" name="SML_PHONE_1" tabindex="35" size="15" maxlength="15" value="<TMPL_VAR NAME=SML_PHONE_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'PHONE' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="PHONE_DIV_2" id="PHONE_DIV_2"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_PHONE_2">PHONE</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_PHONE_2" name="SML_PHONE_2" tabindex="36" size="15" maxlength="15" value="<TMPL_VAR NAME=SML_PHONE_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'PHONE', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="PHONE_DIV_3" id="PHONE_DIV_3"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_PHONE_3">PHONE</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_PHONE_3" name="SML_PHONE_3" tabindex="37" size="15" maxlength="15" value="<TMPL_VAR NAME=SML_PHONE_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'PHONE', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="4">
  <div name="PHONE_DIV_4" id="PHONE_DIV_4"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_PHONE_4">PHONE</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_PHONE_4" name="SML_PHONE_4" tabindex="38" size="15" maxlength="15" value="<TMPL_VAR NAME=SML_PHONE_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'PHONE', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<tr>
<td colspan="4">
  <div name="PHONE_DIV_5" id="PHONE_DIV_5"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_PHONE_5">PHONE</label></b><a href="javascript:void(0);" onclick="sml_phone_tip_10();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_PHONE_5" name="SML_PHONE_5" tabindex="39" size="15" maxlength="15" value="<TMPL_VAR NAME=SML_PHONE_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'PHONE', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>










      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SML_DOB">DOB</label></b><a href="javascript:void(0);" onClick="sml_dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="SML_DOB"     name="SML_DOB"       tabindex="40"  size="10" maxlength="10" value="<TMPL_VAR NAME=SML_DOB>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      
<!-- EMAIL_DIV    EMAIL -->
<!-- first (static) row -->
<tr>
<td colspan="4">
  <div name="EMAIL_DIV_1" id="EMAIL_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_EMAIL_1">EMAIL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_EMAIL_1" name="SML_EMAIL_1" tabindex="41" size="60" maxlength="60" value="<TMPL_VAR NAME=SML_EMAIL_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'EMAIL' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="EMAIL_DIV_2" id="EMAIL_DIV_2"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_EMAIL_2">EMAIL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_EMAIL_2" name="SML_EMAIL_2" tabindex="42" size="60" maxlength="60" value="<TMPL_VAR NAME=SML_EMAIL_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'EMAIL', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="EMAIL_DIV_3" id="EMAIL_DIV_3"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_EMAIL_3">EMAIL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_EMAIL_3" name="SML_EMAIL_3" tabindex="43" size="60" maxlength="60" value="<TMPL_VAR NAME=SML_EMAIL_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'EMAIL', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="4">
  <div name="EMAIL_DIV_4" id="EMAIL_DIV_4"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_EMAIL_4">EMAIL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_EMAIL_4" name="SML_EMAIL_4" tabindex="44" size="60" maxlength="60" value="<TMPL_VAR NAME=SML_EMAIL_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'EMAIL', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<tr>
<td colspan="4">
  <div name="EMAIL_DIV_5" id="EMAIL_DIV_5"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_EMAIL_5">EMAIL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_EMAIL_5" name="SML_EMAIL_5" tabindex="45" size="60" maxlength="60" value="<TMPL_VAR NAME=SML_EMAIL_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'EMAIL', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<!-- one input -->

<TMPL_IF NAME=DELETE_FEATURE>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><input type="checkbox" name="SML_INCLUDE_EMAIL" id="SML_INCLUDE_EMAIL"           tabindex="46" value="1" <TMPL_IF NAME="SML_INCLUDE_EMAIL">CHECKED</TMPL_IF>  ></td>
            <td nowrap><label for="SML_INCLUDE_EMAIL">&nbsp; Find all emails for subject</label></td>
          </tr>
        </table>
        </td>
      </tr>
</TMPL_IF>



<tr>
<td colspan="6">
<table border="0" cellpadding="0" cellspacing="0">
      <tr>
         <td>&nbsp;</tb>
      </tr>


      <tr>
        <td valign="top" align="left">
        <div name="USER_DIV_1" id="USER_DIV_1">
        
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<b><label for="SML_USER_1">Username</label></b><a href="javascript:void(0);" onclick="sml_username_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
              <td class="nsinputs"><input type="text" name="SML_USER_1" id="SML_USER_1" tabindex="50" size="30" maxlength="255" value="<TMPL_VAR NAME=SML_USER_1>"></td>
              <td>&nbsp;<b><label for="SML_SITE_1"></label></b></td>
              <td class="nsinputs">
              <select name="SML_SITE_1"                                                 tabindex="51">
                <TMPL_LOOP NAME=SML_SITE_1_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select><a href="javascript:void(0);" onClick="unhide_sml_div( 'USER' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a>
              </td>
            </tr>
          </table>
          
        </div>
        </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="USER_DIV_2" id="USER_DIV_2"  style="display:none;visibility:hidden;">
        
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<b><label for="SML_USER_2">Username</label></b><a href="javascript:void(0);" onclick="sml_username_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
              <td class="nsinputs"><input type="text" name="SML_USER_2" id="SML_USER_2" tabindex="52" size="30" maxlength="255" value="<TMPL_VAR NAME=SML_USER_2>"></td>
              <td>&nbsp;<b><label for="SML_SITE_2"></label></b></td>
              <td class="nsinputs">
              <select name="SML_SITE_2"                                                 tabindex="53">
                <TMPL_LOOP NAME=SML_SITE_2_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select><a href="javascript:void(0);" onClick="hide_sml_div( 'USER', 2 )"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a>
              </td>
            </tr>
          </table>
          
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="USER_DIV_3" id="USER_DIV_3"  style="display:none;visibility:hidden;">
        
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<b><label for="SML_USER_3">Username</label></b><a href="javascript:void(0);" onclick="sml_username_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
              <td class="nsinputs"><input type="text" name="SML_USER_3" id="SML_USER_3" tabindex="54" size="30" maxlength="255" value="<TMPL_VAR NAME=SML_USER_3>"></td>
              <td>&nbsp;<b><label for="SML_SITE_3"></label></b></td>
              <td class="nsinputs">
              <select name="SML_SITE_3"                                                 tabindex="55">
                <TMPL_LOOP NAME=SML_SITE_3_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select><a href="javascript:void(0);" onClick="hide_sml_div( 'USER', 3 )"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a>
              </td>
            </tr>
          </table>
          
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="USER_DIV_4" id="USER_DIV_4"  style="display:none;visibility:hidden;">
        
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<b><label for="SML_USER_4">Username</label></b><a href="javascript:void(0);" onclick="sml_username_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
              <td class="nsinputs"><input type="text" name="SML_USER_4" id="SML_USER_4" tabindex="56" size="30" maxlength="255" value="<TMPL_VAR NAME=SML_USER_4>"></td>
              <td>&nbsp;<b><label for="SML_SITE_4"></label></b></td>
              <td class="nsinputs">
              <select name="SML_SITE_4"                                                 tabindex="57">
                <TMPL_LOOP NAME=SML_SITE_4_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select><a href="javascript:void(0);" onClick="hide_sml_div( 'USER', 4 )"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a>
              </td>
            </tr>
          </table>
          
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="USER_DIV_5" id="USER_DIV_5"  style="display:none;visibility:hidden;">
        
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td>&nbsp;<b><label for="SML_USER_5">Username</label></b><a href="javascript:void(0);" onclick="sml_username_tip();"><img src="<TMPL_VAR IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"/></a></td>
              <td class="nsinputs"><input type="text" name="SML_USER_5" id="SML_USER_5" tabindex="58" size="30" maxlength="255" value="<TMPL_VAR NAME=SML_USER_5>"></td>
              <td>&nbsp;<b><label for="SML_SITE_5"></label></b></td>
              <td class="nsinputs">
              <select name="SML_SITE_5"                                                 tabindex="59">
                <TMPL_LOOP NAME=SML_SITE_5_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select><a href="javascript:void(0);" onClick="hide_sml_div( 'USER', 5 )"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a>
              </td>
            </tr>
          </table>
          
         </div>
       </td>
      </tr>
      





</table>
</td>
</tr>

<!-- SML_COMPANY_DIV    COMPANY -->
<!-- first (static) row -->
<tr>
<td colspan="4">
  <div name="COMPANY_DIV_1" id="COMPANY_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_COMPANY_1">COMPANY</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_COMPANY_1" name="SML_COMPANY_1" tabindex="70" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_COMPANY_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'COMPANY' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="COMPANY_DIV_2" id="COMPANY_DIV_2"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_COMPANY_2">COMPANY</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_COMPANY_2" name="SML_COMPANY_2" tabindex="71" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_COMPANY_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'COMPANY', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="COMPANY_DIV_3" id="COMPANY_DIV_3"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_COMPANY_3">COMPANY</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_COMPANY_3" name="SML_COMPANY_3" tabindex="72" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_COMPANY_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'COMPANY', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="4">
  <div name="COMPANY_DIV_4" id="COMPANY_DIV_4"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_COMPANY_4">COMPANY</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_COMPANY_4" name="SML_COMPANY_4" tabindex="73" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_COMPANY_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'COMPANY', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<tr>
<td colspan="4">
  <div name="COMPANY_DIV_5" id="COMPANY_DIV_5"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_COMPANY_5">COMPANY</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_COMPANY_5" name="SML_COMPANY_5" tabindex="74" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_COMPANY_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'COMPANY', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<!-- one input -->

<!-- SML_SCHOOL_DIV    SCHOOL -->
<!-- first (static) row -->
<tr>
<td colspan="4">
  <div name="SCHOOL_DIV_1" id="SCHOOL_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_SCHOOL_1">SCHOOL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_SCHOOL_1" name="SML_SCHOOL_1" tabindex="80" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_SCHOOL_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'SCHOOL' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="SCHOOL_DIV_2" id="SCHOOL_DIV_2"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_SCHOOL_2">SCHOOL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_SCHOOL_2" name="SML_SCHOOL_2" tabindex="81" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_SCHOOL_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SCHOOL', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="4">
  <div name="SCHOOL_DIV_3" id="SCHOOL_DIV_3"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_SCHOOL_3">SCHOOL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_SCHOOL_3" name="SML_SCHOOL_3" tabindex="82" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_SCHOOL_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SCHOOL', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>

<tr>
<td colspan="4">
  <div name="SCHOOL_DIV_4" id="SCHOOL_DIV_4"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_SCHOOL_4">SCHOOL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_SCHOOL_4" name="SML_SCHOOL_4" tabindex="83" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_SCHOOL_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SCHOOL', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<tr>
<td colspan="4">
  <div name="SCHOOL_DIV_5" id="SCHOOL_DIV_5"  style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td colspan="1">&nbsp;<b><label for="SML_SCHOOL_5">SCHOOL</label></b></td>
      </tr>
      <tr>
         <td class="nsinputs" colspan="1"><input type="text" id="SML_SCHOOL_5" name="SML_SCHOOL_5" tabindex="84" size="40" maxlength="40" value="<TMPL_VAR NAME=SML_SCHOOL_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SCHOOL', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>
<!-- one input -->


<!-- first (static) row -->



<tr>
  <td colspan="6" height="20"><span class="medgray">Additional Subject Information</span>
    <div id="lineVertRedDot"></div>
  </td>
  <td>
    <a href="javascript:void(0);" onClick="hide_unhide_section( 'OTHER' );"><img id="OTHER_CONTROL_IMAGE" src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif" alt="Expand" height="10" hspace="0" width="10"></div>
  </td>
</tr>




<tr>
<td colspan="6">
<div name="OTHER_SECTION_HIDE" id="OTHER_SECTION_HIDE"  style="display:none;visibility:hidden;" >
<table border="0" cellpadding="0" cellspacing="0">






<tr>
<td colspan="6">
  <div name="OTHER_DIV_1" id="OTHER_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_OTHER_LAST_NAME">Other Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_FIRST_NAME">Other First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_MIDDLE_NAME">Other Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_OTHER_LAST_NAME_1" name="SML_OTHER_LAST_NAME_1"                 tabindex="90" size="20" value="<TMPL_VAR NAME=SML_OTHER_LAST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_OTHER_FIRST_NAME_1" name="SML_OTHER_FIRST_NAME_1"               tabindex="91" size="20" value="<TMPL_VAR NAME=SML_OTHER_FIRST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_OTHER_MIDDLE_NAME_1" name="SML_OTHER_MIDDLE_NAME_1" tabindex="92" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_OTHER_MIDDLE_NAME_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'OTHER' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="6">
  <div name="OTHER_DIV_2" id="OTHER_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_OTHER_LAST_NAME">Other Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_FIRST_NAME">Other First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_MIDDLE_NAME">Other Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_OTHER_LAST_NAME_2" name="SML_OTHER_LAST_NAME_2"                 tabindex="93" size="20" value="<TMPL_VAR NAME=SML_OTHER_LAST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_OTHER_FIRST_NAME_2" name="SML_OTHER_FIRST_NAME_2"               tabindex="94" size="20" value="<TMPL_VAR NAME=SML_OTHER_FIRST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_OTHER_MIDDLE_NAME_2" name="SML_OTHER_MIDDLE_NAME_2" tabindex="95" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_OTHER_MIDDLE_NAME_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'OTHER', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="OTHER_DIV_3" id="OTHER_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_OTHER_LAST_NAME">Other Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_FIRST_NAME">Other First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_MIDDLE_NAME">Other Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_OTHER_LAST_NAME_3" name="SML_OTHER_LAST_NAME_3"                 tabindex="96" size="20" value="<TMPL_VAR NAME=SML_OTHER_LAST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_OTHER_FIRST_NAME_3" name="SML_OTHER_FIRST_NAME_3"               tabindex="97" size="20" value="<TMPL_VAR NAME=SML_OTHER_FIRST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_OTHER_MIDDLE_NAME_3" name="SML_OTHER_MIDDLE_NAME_3" tabindex="98" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_OTHER_MIDDLE_NAME_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'OTHER', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="OTHER_DIV_4" id="OTHER_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_OTHER_LAST_NAME">Other Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_FIRST_NAME">Other First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_MIDDLE_NAME">Other Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_OTHER_LAST_NAME_4" name="SML_OTHER_LAST_NAME_4"                 tabindex="99" size="20" value="<TMPL_VAR NAME=SML_OTHER_LAST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_OTHER_FIRST_NAME_4" name="SML_OTHER_FIRST_NAME_4"               tabindex="100" size="20" value="<TMPL_VAR NAME=SML_OTHER_FIRST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_OTHER_MIDDLE_NAME_4" name="SML_OTHER_MIDDLE_NAME_4" tabindex="101" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_OTHER_MIDDLE_NAME_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'OTHER', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="OTHER_DIV_5" id="OTHER_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_OTHER_LAST_NAME">Other Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_FIRST_NAME">Other First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_OTHER_MIDDLE_NAME">Other Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_OTHER_LAST_NAME_5" name="SML_OTHER_LAST_NAME_5"                 tabindex="102" size="20" value="<TMPL_VAR NAME=SML_OTHER_LAST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_OTHER_FIRST_NAME_5" name="SML_OTHER_FIRST_NAME_5"               tabindex="103" size="20" value="<TMPL_VAR NAME=SML_OTHER_FIRST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_OTHER_MIDDLE_NAME_5" name="SML_OTHER_MIDDLE_NAME_5" tabindex="104" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_OTHER_MIDDLE_NAME_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'OTHER', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<!-- Spouse and Maiden names -->
<!-- first (static) row -->
<tr>
<td colspan="6">
  <div name="SPOUSE_DIV_1" id="SPOUSE_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_SPOUSE_LAST_NAME">Spouse Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_FIRST_NAME">Spouse First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MIDDLE_NAME">Spouse Middle Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MAIDEN">Maiden Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_LAST_NAME_1" name="SML_SPOUSE_LAST_NAME_1"                 tabindex="110" size="16"  value="<TMPL_VAR NAME=SML_SPOUSE_LAST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_FIRST_NAME_1" name="SML_SPOUSE_FIRST_NAME_1"               tabindex="111" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_FIRST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_MIDDLE_NAME_1" name="SML_SPOUSE_MIDDLE_NAME_1"             tabindex="112" size="16"  maxlength="2" value="<TMPL_VAR NAME=SML_SPOUSE_MIDDLE_NAME_1>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_SPOUSE_MAIDEN_NAME_1" name="SML_SPOUSE_MAIDEN_NAME_1" tabindex="113" size="16"  maxlength="6" value="<TMPL_VAR NAME=SML_SPOUSE_MAIDEN_NAME_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'SPOUSE' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="6">
  <div name="SPOUSE_DIV_2" id="SPOUSE_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_SPOUSE_LAST_NAME">Spouse Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_FIRST_NAME">Spouse First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MIDDLE_NAME">Spouse Middle Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MAIDEN">Maiden Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_LAST_NAME_2" name="SML_SPOUSE_LAST_NAME_2"                 tabindex="114" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_LAST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_FIRST_NAME_2" name="SML_SPOUSE_FIRST_NAME_2"               tabindex="115" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_FIRST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_MIDDLE_NAME_2" name="SML_SPOUSE_MIDDLE_NAME_2"             tabindex="116" size="16"  maxlength="2" value="<TMPL_VAR NAME=SML_SPOUSE_MIDDLE_NAME_2>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_SPOUSE_MAIDEN_NAME_2" name="SML_SPOUSE_MAIDEN_NAME_2" tabindex="117" size="16"  maxlength="6" value="<TMPL_VAR NAME=SML_SPOUSE_MAIDEN_NAME_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SPOUSE', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="SPOUSE_DIV_3" id="SPOUSE_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_SPOUSE_LAST_NAME">Spouse Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_FIRST_NAME">Spouse First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MIDDLE_NAME">Spouse Middle Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MAIDEN">Maiden Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_LAST_NAME_3" name="SML_SPOUSE_LAST_NAME_3"                 tabindex="118" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_LAST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_FIRST_NAME_3" name="SML_SPOUSE_FIRST_NAME_3"               tabindex="119" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_FIRST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_MIDDLE_NAME_3" name="SML_SPOUSE_MIDDLE_NAME_3"             tabindex="120" size="16"  maxlength="2" value="<TMPL_VAR NAME=SML_SPOUSE_MIDDLE_NAME_3>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_SPOUSE_MAIDEN_NAME_3" name="SML_SPOUSE_MAIDEN_NAME_3" tabindex="121" size="16"  maxlength="6" value="<TMPL_VAR NAME=SML_SPOUSE_MAIDEN_NAME_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SPOUSE', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="SPOUSE_DIV_4" id="SPOUSE_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_SPOUSE_LAST_NAME">Spouse Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_FIRST_NAME">Spouse First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MIDDLE_NAME">Spouse Middle Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MAIDEN">Maiden Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_LAST_NAME_4" name="SML_SPOUSE_LAST_NAME_4"                 tabindex="122" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_LAST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_FIRST_NAME_4" name="SML_SPOUSE_FIRST_NAME_4"               tabindex="123" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_FIRST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_MIDDLE_NAME_4" name="SML_SPOUSE_MIDDLE_NAME_4"             tabindex="124" size="16"  maxlength="2" value="<TMPL_VAR NAME=SML_SPOUSE_MIDDLE_NAME_4>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_SPOUSE_MAIDEN_NAME_4" name="SML_SPOUSE_MAIDEN_NAME_4" tabindex="125" size="16"  maxlength="6" value="<TMPL_VAR NAME=SML_SPOUSE_MAIDEN_NAME_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SPOUSE', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="SPOUSE_DIV_5" id="SPOUSE_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_SPOUSE_LAST_NAME">Spouse Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_FIRST_NAME">Spouse First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MIDDLE_NAME">Spouse Middle Name</label></b></td>
         <td>&nbsp;<b><label for="SML_SPOUSE_MAIDEN">Maiden Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_LAST_NAME_5" name="SML_SPOUSE_LAST_NAME_5"                 tabindex="126" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_LAST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_FIRST_NAME_5" name="SML_SPOUSE_FIRST_NAME_5"               tabindex="127" size="16" value="<TMPL_VAR NAME=SML_SPOUSE_FIRST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_SPOUSE_MIDDLE_NAME_5" name="SML_SPOUSE_MIDDLE_NAME_5"             tabindex="128" size="16"  maxlength="2" value="<TMPL_VAR NAME=SML_SPOUSE_MIDDLE_NAME_5>" onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_SPOUSE_MAIDEN_NAME_5" name="SML_SPOUSE_MAIDEN_NAME_5" tabindex="129" size="16"  maxlength="6" value="<TMPL_VAR NAME=SML_SPOUSE_MAIDEN_NAME_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'SPOUSE', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          
<!-- two inputs with vertical alignment -->



</table>
</div>
</td>
</tr>




<!-- first (static) row -->



<tr>
  <td colspan="6" height="20"><span class="medgray">Associate Information</span>
    <div id="lineVertRedDot"></div>
  </td>
  <td>
    <a href="javascript:void(0);" onClick="hide_unhide_section( 'ASSOC' );"><img id="ASSOC_CONTROL_IMAGE" src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif" alt="Expand" height="10" hspace="0" width="10"></div>
  </td>
</tr>




<tr>
<td colspan="6">
<div name="ASSOC_SECTION_HIDE" id="ASSOC_SECTION_HIDE"  style="display:none;visibility:hidden;" >
<table border="0" cellpadding="0" cellspacing="0">








<tr>
<td colspan="6">
  <div name="ASSOC_DIV_1" id="ASSOC_DIV_1">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_ASSOC_LAST_NAME">Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_FIRST_NAME">First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_MIDDLE_NAME">Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_LAST_NAME_1" name="SML_ASSOC_LAST_NAME_1"                 tabindex="140" size="20" value="<TMPL_VAR NAME=SML_ASSOC_LAST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_FIRST_NAME_1" name="SML_ASSOC_FIRST_NAME_1"               tabindex="141" size="20" value="<TMPL_VAR NAME=SML_ASSOC_FIRST_NAME_1>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ASSOC_MIDDLE_NAME_1" name="SML_ASSOC_MIDDLE_NAME_1" tabindex="142" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_ASSOC_MIDDLE_NAME_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'ASSOC' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          

<tr>
<td colspan="6">
  <div name="ASSOC_DIV_2" id="ASSOC_DIV_2" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_ASSOC_LAST_NAME">Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_FIRST_NAME">First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_MIDDLE_NAME">Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_LAST_NAME_2" name="SML_ASSOC_LAST_NAME_2"                 tabindex="143" size="20" value="<TMPL_VAR NAME=SML_ASSOC_LAST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_FIRST_NAME_2" name="SML_ASSOC_FIRST_NAME_2"               tabindex="144" size="20" value="<TMPL_VAR NAME=SML_ASSOC_FIRST_NAME_2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ASSOC_MIDDLE_NAME_2" name="SML_ASSOC_MIDDLE_NAME_2" tabindex="145" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_ASSOC_MIDDLE_NAME_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ASSOC', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ASSOC_DIV_3" id="ASSOC_DIV_3" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_ASSOC_LAST_NAME">Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_FIRST_NAME">First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_MIDDLE_NAME">Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_LAST_NAME_3" name="SML_ASSOC_LAST_NAME_3"                 tabindex="146" size="20" value="<TMPL_VAR NAME=SML_ASSOC_LAST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_FIRST_NAME_3" name="SML_ASSOC_FIRST_NAME_3"               tabindex="147" size="20" value="<TMPL_VAR NAME=SML_ASSOC_FIRST_NAME_3>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ASSOC_MIDDLE_NAME_3" name="SML_ASSOC_MIDDLE_NAME_3" tabindex="148" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_ASSOC_MIDDLE_NAME_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ASSOC', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ASSOC_DIV_4" id="ASSOC_DIV_4" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_ASSOC_LAST_NAME">Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_FIRST_NAME">First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_MIDDLE_NAME">Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_LAST_NAME_4" name="SML_ASSOC_LAST_NAME_4"                 tabindex="149" size="20" value="<TMPL_VAR NAME=SML_ASSOC_LAST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_FIRST_NAME_4" name="SML_ASSOC_FIRST_NAME_4"               tabindex="150" size="20" value="<TMPL_VAR NAME=SML_ASSOC_FIRST_NAME_4>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ASSOC_MIDDLE_NAME_4" name="SML_ASSOC_MIDDLE_NAME_4" tabindex="151" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_ASSOC_MIDDLE_NAME_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ASSOC', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          


<tr>
<td colspan="6">
  <div name="ASSOC_DIV_5" id="ASSOC_DIV_5" style="display:none;visibility:hidden;">
    <table border="0" cellpadding="2" cellspacing="0">
      <tr> 
         <td>&nbsp;<b><label for="SML_ASSOC_LAST_NAME">Last Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_FIRST_NAME">First Name</label></b></td>
         <td>&nbsp;<b><label for="SML_ASSOC_MIDDLE_NAME">Middle Name</label></b></td>
         <td>&nbsp;</td>
      </tr>
      <tr>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_LAST_NAME_5" name="SML_ASSOC_LAST_NAME_5"                 tabindex="152" size="20" value="<TMPL_VAR NAME=SML_ASSOC_LAST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs"><input type="text" id="SML_ASSOC_FIRST_NAME_5" name="SML_ASSOC_FIRST_NAME_5"               tabindex="153" size="20" value="<TMPL_VAR NAME=SML_ASSOC_FIRST_NAME_5>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
         <td class="nsinputs" colspan="2"><input type="text" id="SML_ASSOC_MIDDLE_NAME_5" name="SML_ASSOC_MIDDLE_NAME_5" tabindex="154" size="20" maxlength="255" value="<TMPL_VAR NAME=SML_ASSOC_MIDDLE_NAME_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'ASSOC', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
      </tr>
    </table>
  </div>
</td>
</tr>          






</table>
</div>
</td>
</tr>





<tr>
  <td colspan="6" height="20"><span class="medgray">Additional Search Information</span>
    <div id="lineVertRedDot"></div>
  </td>
  <td>
    <a href="javascript:void(0);" onClick="hide_unhide_section( 'TERMS' );"><img id="TERMS_CONTROL_IMAGE" src="<TMPL_VAR NAME=IMGPATH>/ico_down_arro.gif" alt="Expand" height="10" hspace="0" width="10"></div>
  </td>
</tr>




<tr>
<td colspan="6">
<div name="TERMS_SECTION_HIDE" id="TERMS_SECTION_HIDE"  style="display:none;visibility:hidden;" >
<table border="0" cellpadding="0" cellspacing="0">

      <tr>
        <td valign="top" align="left">
        <div name="TERM_DIV_1" id="TERM_DIV_1">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td width="130"><img width="130" height="15" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              <td>&nbsp;<b><label for="SML_TYPE_1">Type</label></b></td>
              <td class="nsinputs">
              
              <select name="SML_TYPE_1"                                                   tabindex="160">
                <TMPL_LOOP NAME=SML_TYPE_1_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
                
              </select>
              </td>
            </tr>
            <tr>
              <td rowspan="1" valign="BOTTOM">&nbsp;Additional Terms&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);" onClick="sml_term_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
              <td>&nbsp;<b><label for="SML_TERM_1">Term</label></b></td>
              <td class="nsinputs"><input type="text" name="SML_TERM_1" id="SML_TERM_1"   tabindex="161" size="50" maxlength="255" value="<TMPL_VAR NAME=SML_TERM_1>"><a href="javascript:void(0);" onClick="unhide_sml_div( 'TERM' );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_plus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
            </tr>
          </table>
        </div>
        </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="TERM_DIV_2" id="TERM_DIV_2"  style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td width="130"><img width="130" height="15" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              <td>&nbsp;<b><label for="SML_TYPE_2">Type</label></b></td>
              <td class="nsinputs">
              <select name="SML_TYPE_2"                                                   tabindex="162">
                <TMPL_LOOP NAME=SML_TYPE_2_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select>
              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;<b><label for="SML_TERM_2">Term</label></b></td>
              <td class="nsinputs"><input type="text" name="SML_TERM_2" id="SML_TERM_2"   tabindex="163" size="50" maxlength="255" value="<TMPL_VAR NAME=SML_TERM_2>"><a href="javascript:void(0);" onClick="hide_sml_div( 'TERM', 2 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
            </tr>
         </table>
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="TERM_DIV_3" id="TERM_DIV_3"  style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td width="130"><img width="130" height="15" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              <td>&nbsp;<b><label for="SML_TYPE_3">Type</label></b></td>
              <td class="nsinputs">
              <select name="SML_TYPE_3"                                                   tabindex="164">
                <TMPL_LOOP NAME=SML_TYPE_3_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select>
              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;<b><label for="SML_TERM_3">Term</label></b></td>
              <td class="nsinputs"><input type="text" name="SML_TERM_3" id="SML_TERM_3"   tabindex="165" size="50" maxlength="255" value="<TMPL_VAR NAME=SML_TERM_3>"><a href="javascript:void(0);" onClick="hide_sml_div( 'TERM', 3 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
            </tr>
         </table>
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="TERM_DIV_4" id="TERM_DIV_4"  style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td width="130"><img width="130" height="15" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              <td>&nbsp;<b><label for="SML_TYPE_4">Type</label></b></td>
              <td class="nsinputs">
              <select name="SML_TYPE_4"                                                   tabindex="166">
                <TMPL_LOOP NAME=SML_TYPE_4_LOOP>
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select>
              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;<b><label for="SML_TERM_4">Term</label></b></td>
              <td class="nsinputs"><input type="text" name="SML_TERM_4" id="SML_TERM_4"   tabindex="167" size="50" maxlength="255" value="<TMPL_VAR NAME=SML_TERM_4>"><a href="javascript:void(0);" onClick="hide_sml_div( 'TERM', 4 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
            </tr>
         </table>
         </div>
       </td>
      </tr>
      
      <tr>
        <td valign="top" align="left">
          <div name="TERM_DIV_5" id="TERM_DIV_5"  style="display:none;visibility:hidden;">
          <table border="0" cellpadding="2" cellspacing="0">
            <tr>
              <td width="130"><img width="130" height="15" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
              <td>&nbsp;<b><label for="SML_TYPE_5">Type</label></b></td>
              <td class="nsinputs">
              <select name="SML_TYPE_5"                                                   tabindex="168">
                <TMPL_LOOP NAME=SML_TYPE_5_LOOP>                                                      
                   <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME=DESC></option>
                </TMPL_LOOP>
              </select>
              </td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;<b><label for="SML_TERM_5">Term</label></b></td>
              <td class="nsinputs"><input type="text" name="SML_TERM_5" id="SML_TERM_5"   tabindex="169" size="50" maxlength="255" value="<TMPL_VAR NAME=SML_TERM_5>"><a href="javascript:void(0);" onClick="hide_sml_div( 'TERM', 5 );"><img src="<TMPL_VAR NAME=IMGPATH>/sml_minus.gif" alt="Expand" height="12"hspace="5" width="19"></a></td>
            </tr>
         </table>
         </div>
       </td>
      </tr>
      





</table>
</div>
</td>
</tr>

<!-- end inputs_fields/socialmedia_search.tpl -->
