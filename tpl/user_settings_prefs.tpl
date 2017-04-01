<!-- Begin user_settings_prefs.tpl-->
<table border="0" cellpadding="0" cellspacing="0" width="620" class="myaccountbody">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr>
    <td>
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountbody">
	  <tr>
	    <td class="smallfont1">
	    <span class="myaccountlabel">Other User Settings:</span>
	   
	    <TMPL_IF MYACCOUNT_PREFERENCES_CHILD>
		  <TMPL_IF NAME="MYACCOUNT_FEATURE_FORGOTPASSWORD">
                    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_INFO">
                        <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_info.tpl>
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_ENABLE">
                        <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_enable.tpl>
                    <TMPL_ELSE>
                        <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_REGISTRATION">
                            <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_register.tpl>
                        </TMPL_IF>
                    </TMPL_IF>

                    <TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_CANCEL">
                        <TMPL_INCLUDE NAME=features/forgotpassword/myaccount_cancel.tpl>
                    </TMPL_IF>
		  </TMPL_IF>
	    <TMPL_ELSE>
	
	<br><br>
	<ol>

	<TMPL_UNLESS ENABLE_V2>
	<TMPL_IF NAME=SHOW_LITE>
	     <li><label for="lite_app">Enable low-bandwidth version</label>&nbsp;<input id="lite_app" type="checkbox" name="lite_app" value="yes" <TMPL_VAR NAME=lite_app>>
	     </li>
	</TMPL_IF>
	</TMPL_UNLESS>
	    <br><br>
	
	<li><label for="tz">Change Time Zone </label>&nbsp;
            <span class="smalllabel">
              <select name="tz" id="tz">
              <TMPL_LOOP NAME="TZ_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>

	<br>
	Please choose the time zone to be used for your account activity.&nbsp;&nbsp;The time zone chosen will be used as the default time zone for detailed billing, security, and activity and should be the time zone where the searches are conducted from.
	</li>
	    

            <TMPL_UNLESS DO_NOT_DISPLAY_PERSON>
	    <TMPL_IF NAME="SHOW_PERSON_SEARCH_ADDR_COMBO">
	      <br><br>
	      <li><label for="person_search_classic">Show Person Search Results in Classic format (No Roll-ups)</label>&nbsp;<input id="person_search_classic" type="checkbox" name="person_search_classic" value="yes" <TMPL_VAR NAME="person_search_classic">> </li>
	    </TMPL_IF>
            </TMPL_UNLESS>


            <TMPL_UNLESS DO_NOT_DISPLAY_ADV>
            <TMPL_UNLESS NAME="ADV_PERSON_ROLLUP_ONLY">
	      <br><br>
	      <li><label for="adv_person_search_classic">Show <TMPL_IF NAME="COL">Deep Skip<TMPL_ELSE><TMPL_IF NAME="LNP">Deep Skip<TMPL_ELSE><TMPL_IF NAME="TCOL">Deep Skip<TMPL_ELSE><TMPL_IF NAME="FCOL">Deep Skip<TMPL_ELSE><TMPL_IF NAME="GCOL">Deep Skip<TMPL_ELSE>Advanced Person</TMPL_IF></TMPL_IF></TMPL_IF></TMPL_IF></TMPL_IF> Search Results in Classic format (No Roll-ups)</label>&nbsp;<input id="adv_person_search_classic" type="checkbox" name="adv_person_search_classic" value="yes" <TMPL_VAR NAME="adv_person_search_classic">> </li>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

	    <TMPL_UNLESS XBPS>
	    <TMPL_IF NAME="ALLOW_PPLUS_OTHER_SEARCHES">
              <TMPL_UNLESS DO_NOT_DISPLAY_ADV>
	      <br><br>
	      <TMPL_IF NAME="DISABLE_PPLUS_OTHER_SEARCHES">
	      	 <TMPL_IF COL>
 	              <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip(Disabled):</label>&nbsp;
 	        <TMPL_ELSE>
	      	 <TMPL_IF LNP>
 	              <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip(Disabled):</label>&nbsp;
 	        <TMPL_ELSE>
	      	 <TMPL_IF TCOL>
 	              <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip(Disabled):</label>&nbsp;
 	        <TMPL_ELSE>
 	              <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones on searches(Disabled):</label>&nbsp;
	        </TMPL_IF>
	        </TMPL_IF>
	        </TMPL_IF>
			   <span class="smalllabel">
			      <select name="pplus_in_other_searches" id="pplus_in_other_searches" disabled>
				      <TMPL_LOOP NAME="PPLUS_SELECTION">
				      <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>"> <TMPL_VAR NAME=NAME> </option>
				      </TMPL_LOOP>
			      </select>
			   </span>                                                           
		      </li>
	      <TMPL_ELSE>
	      	<TMPL_IF COL>
	      	       <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip:</label>&nbsp;
	      	<TMPL_ELSE>
	      	<TMPL_IF LNP>
	      	       <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip:</label>&nbsp;
	      	<TMPL_ELSE>
	      	<TMPL_IF TCOL>
	      	       <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip:</label>&nbsp;
	      	<TMPL_ELSE>
	      	       <li ><label for="pplus_in_other_searches">Wireless/Alternate Phones on searches:</label>&nbsp;
	        </TMPL_IF>
	        </TMPL_IF>
	        </TMPL_IF>
			   <span class="smalllabel">
			      <select name="pplus_in_other_searches" id="pplus_in_other_searches">
				      <TMPL_LOOP NAME="PPLUS_SELECTION">
				      <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>"> <TMPL_VAR NAME=NAME> </option>
				      </TMPL_LOOP>
			      </select>
			   </span>                                                           
		      </li>
	      </TMPL_IF>
	      </TMPL_UNLESS>
            </TMPL_IF>
	    </TMPL_UNLESS>

	      <br><br>
	      <li><label for="clear_reference_code">Clear Reference Code with search form</label>&nbsp;<input id="clear_reference_code" type="checkbox" name="clear_reference_code" value="yes" <TMPL_VAR NAME="clear_reference_code">> </li>
          
        <TMPL_IF SA>
	      <br><br>
	      <li><label for="clear_reference_code">Default Manage Users search</label>&nbsp;
			   <span class="smalllabel">
			      <select name="manage_users_default" id="manage_users_default">
				      <TMPL_LOOP NAME="MANAGE_USERS_DEFAULT_SEARCH">
				      <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>"> <TMPL_VAR NAME=NAME> </option>
				      </TMPL_LOOP>
			      </select>
			   </span>                                                           
        </li>
        </TMPL_IF>
          
        <TMPL_IF USER_CAN_SEE_FORGOT_PASSWORD_FEATURE>
            <TMPL_UNLESS MANDATORY_REGISTER>
                <INPUT TYPE=HIDDEN NAME="I" VALUE="NOW">
                <br><br>
                <li><label for="password_reset_feature">Forgot Password Feature:</label>&nbsp;
                <TMPL_IF NAME=USER_ELIGIBLE_FORGOT_PASSWORD_FEATURE>
                    <b>Disabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_INFO');">
                <TMPL_ELSE>
                    <TMPL_IF NAME=USER_REGISTERED_FORGOT_PASSWORD_FEATURE>
                        <b>Need verification</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_EMAIL_VERIFY')">
                    <TMPL_ELSE>
                        <TMPL_IF NAME=DISABLE_FORGOT_PASSWORD_FEATURE>
                             <b>Disabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                        <TMPL_ELSE>
                            <b>Enabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
                </li>
            </TMPL_UNLESS>
        </TMPL_IF>

        <TMPL_IF GOV>
          <br><br>
<li><label for="property_address_match_only">Return Physical Property Address Matches Only in Property Search</label>&nbsp;<input id="property_address_match_only" type="checkbox" name="property_address_match_only" value="yes" <TMPL_VAR NAME="property_address_match_only">> </li>
        </TMPL_IF>
    
        <TMPL_IF LE>
          <br><br>
<li><label for="property_address_match_only">Return Physical Property Address Matches Only in Property Search</label>&nbsp;<input id="property_address_match_only" type="checkbox" name="property_address_match_only" value="yes" <TMPL_VAR NAME="property_address_match_only">> </li>
        </TMPL_IF>
    
        <TMPL_IF GOV>
          <br><br>
<li><label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">> </li>
        </TMPL_IF>
    
        <TMPL_IF LE>
          <br><br>
<li><label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">> </li>
        </TMPL_IF>

        <TMPL_IF HEA>
          <br><br>
<li><label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">> </li>
        </TMPL_IF>

        <TMPL_IF SHOW_OTP_USER>
            <TMPL_IF GOV>
              <br><br>
<li><label for="enable_sms_2_factor">Enable Multi-Factor Authentication</label>&nbsp;<input id="enable_sms_2_factor" type="checkbox" name="enable_sms_2_factor" value="yes" <TMPL_VAR NAME="enable_sms_2_factor">> </li>
            </TMPL_IF>
            
            <TMPL_IF LE>
              <br><br>
<li><label for="enable_sms_2_factor">Enable Multi-Factor Authentication</label>&nbsp;<input id="enable_sms_2_factor" type="checkbox" name="enable_sms_2_factor" value="yes" <TMPL_VAR NAME="enable_sms_2_factor">> </li>
            </TMPL_IF>
        </TMPL_IF>

	      <TMPL_IF NAME="ENABLE_MYACC_V3">
              <br><br>
              <li><label for="show_additional_input_fields">Always Show Additional Fields</label>&nbsp;<input id="show_additional_input_fields" type="checkbox" name="show_additional_input_fields" value="yes" <TMPL_VAR NAME="show_additional_input_fields">> </li>
              <TMPL_IF LE>
              	  <TMPL_IF NAME="SHOW_SOF_PHOTO_OPT">
					  <br><br>
					  <li><label for="hide_offender_photos_adv_person_search">Do not display offender photos in Advanced Person Search rollup results</label>&nbsp;<input id="hide_offender_photos_adv_person_search" type="checkbox" name="hide_offender_photos_adv_person_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_adv_person_search">> </li>
			      </TMPL_IF>
              </TMPL_IF>
              <TMPL_IF GOV>
              	  <TMPL_IF NAME="SHOW_SOF_PHOTO_OPT">
					  <br><br>
					  <li><label for="hide_offender_photos_adv_person_search">Do not display offender photos in Advanced Person Search rollup results</label>&nbsp;<input id="hide_offender_photos_adv_person_search" type="checkbox" name="hide_offender_photos_adv_person_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_adv_person_search">> </li>
				  </TMPL_IF>
              </TMPL_IF>

          </TMPL_IF>

	    <TMPL_IF ENABLE_THEMES>
	      
	      <TMPL_IF NAME="ENABLE_V2">
	      <TMPL_IF IRB>
              <TMPL_INCLUDE NAME=irb/theme_preferences.tpl>
              <TMPL_ELSE>
	      <TMPL_IF LNP>
	      <TMPL_INCLUDE NAME=lnp/theme_preferences.tpl>
	      <TMPL_ELSE>
	      <TMPL_IF TCOL>
	      <TMPL_INCLUDE NAME=tcol/theme_preferences.tpl>
	      <TMPL_ELSE>
	      <TMPL_IF FCOL>
	      <TMPL_INCLUDE NAME=fcol/theme_preferences.tpl>
	      <TMPL_ELSE>
	      <TMPL_IF GCOL>
	      <TMPL_INCLUDE NAME=gcol/theme_preferences.tpl>
	      <TMPL_ELSE>
	      <TMPL_IF INS>
              <TMPL_INCLUDE NAME=ins/theme_preferences.tpl>
              <TMPL_ELSE>
	      <TMPL_IF LEG>
              <TMPL_INCLUDE NAME=leg/theme_preferences.tpl>
              <TMPL_ELSE>
              <TMPL_IF COL>
	      <TMPL_INCLUDE NAME=col/theme_preferences.tpl>
              <TMPL_ELSE>
              <TMPL_IF XBPS>
	      <TMPL_INCLUDE NAME=xbps/theme_preferences.tpl>
              <TMPL_ELSE>
	      <TMPL_INCLUDE NAME=bps/theme_preferences.tpl>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>

	    </TMPL_IF>


        <TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
             <br><br>
             <li>
                <label for="enable_zip_city_autocomplete">Enable Zip and City Autocomplete on search forms</label>&nbsp;<input id="enable_zip_city_autocomplete" type="checkbox" name="enable_zip_city_autocomplete" value="yes" <TMPL_VAR NAME="enable_zip_city_autocomplete">>
            </li>
        </TMPL_IF>

             <TMPL_UNLESS DO_NOT_DISPLAY_FDN_CHECKBOX>
             <TMPL_UNLESS HIDE_FDN_SEARCH_INDICATOR>
             <TMPL_IF FDN_DATA_ENABLED>
             <TMPL_UNLESS COMPANY_DISABLE_FDN_SEARCH_INDICATOR>
             <br>
             <li>
                <label for="enable_fraud_defense_checkbox">Enable Include LexisNexis&reg; Fraud Defense Network Checkbox</label>&nbsp;<input id="enable_fraud_defense_checkbox" type="checkbox" name="enable_fraud_defense_checkbox" value="yes" <TMPL_VAR NAME="enable_fraud_defense_checkbox">>
            </li>
            </TMPL_UNLESS>
            </TMPL_IF>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

	    </ol>
	    </TMPL_IF>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>
<!-- End user_settings_prefs.tpl-->
