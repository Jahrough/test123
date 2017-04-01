<!-- Begin user_settings_prefs.tpl-->
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
    <div class="section-row">
        <TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE">
    </div>
</TMPL_IF>
<div class="section-row">
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
        <ol>
            <TMPL_UNLESS ENABLE_V2>
                <TMPL_IF NAME=SHOW_LITE>
                    <li>
                        <label for="lite_app">Enable low-bandwidth version</label>&nbsp;<input id="lite_app" type="checkbox" name="lite_app" value="yes" <TMPL_VAR NAME=lite_app>>
                    </li>
                </TMPL_IF>
            </TMPL_UNLESS>
            <li>
                <label for="tz">Change Time Zone </label>
                    <select name="tz" id="tz">
                        <TMPL_LOOP NAME="TZ_VALUES">
                            <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
                        </TMPL_LOOP>
                    </select>
                <br>
                Please choose the time zone to be used for your account activity.&nbsp;&nbsp;The time zone chosen will be used as the default time zone for detailed billing, security, and activity and should be the time zone where the searches are conducted from.
            </li>

            <TMPL_IF NAME="SHOW_PERSON_SEARCH_ADDR_COMBO">
                <li>
                    <label for="person_search_classic">Show Person Search Results in Classic format (No Roll-ups)</label>
                    <input id="person_search_classic" type="checkbox" name="person_search_classic" value="yes" <TMPL_VAR NAME="person_search_classic">>
                </li>
            </TMPL_IF>

            <TMPL_UNLESS NAME="ADV_PERSON_ROLLUP_ONLY">
                <li>
                    <label for="adv_person_search_classic">Show <TMPL_IF NAME="COL">Deep Skip<TMPL_ELSE><TMPL_IF NAME="TCOL">Deep Skip<TMPL_ELSE><TMPL_IF NAME="FCOL">Deep Skip<TMPL_ELSE>Advanced Person</TMPL_IF></TMPL_IF></TMPL_IF> Search Results in Classic format (No Roll-ups)</label>
                    <input id="adv_person_search_classic" type="checkbox" name="adv_person_search_classic" value="yes" <TMPL_VAR NAME="adv_person_search_classic">>
                </li>
            </TMPL_UNLESS>

            <TMPL_UNLESS XBPS>
                <TMPL_IF NAME="ALLOW_PPLUS_OTHER_SEARCHES">
                    <TMPL_IF NAME="DISABLE_PPLUS_OTHER_SEARCHES">
                        <li>
                            <TMPL_IF COL>
                                <label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip(Disabled):</label>
                            <TMPL_ELSE>
                                <TMPL_IF TCOL>
                                    <label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip(Disabled):</label>
                                <TMPL_ELSE>
                                    <label for="pplus_in_other_searches">Wireless/Alternate Phones on searches(Disabled):</label>&nbsp;
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
                        <li>
                            <TMPL_IF COL>
                                <label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip:</label>&nbsp;
                            <TMPL_ELSE>
                                <TMPL_IF TCOL>
                                    <label for="pplus_in_other_searches">Wireless/Alternate Phones included on Person Search and Deep Skip:</label>&nbsp;
                                <TMPL_ELSE>
                                    <label for="pplus_in_other_searches">Wireless/Alternate Phones on searches:</label>&nbsp;
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
                </TMPL_IF>
            </TMPL_UNLESS>

            <li>
                <label for="clear_reference_code">Clear Reference Code with search form</label>&nbsp;<input id="clear_reference_code" type="checkbox" name="clear_reference_code" value="yes" <TMPL_VAR NAME="clear_reference_code">>
            </li>

            <TMPL_IF SA>
                <li>
                    <label for="clear_reference_code">Default Manage Users search</label>
                    <select name="manage_users_default" id="manage_users_default">
                        <TMPL_LOOP NAME="MANAGE_USERS_DEFAULT_SEARCH">
                            <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>"> <TMPL_VAR NAME=NAME> </option>
                        </TMPL_LOOP>
                    </select>
                </li>
            </TMPL_IF>

            <TMPL_UNLESS MANDATORY_REGISTER>
            <TMPL_IF USER_CAN_SEE_FORGOT_PASSWORD_FEATURE>
                <INPUT TYPE=HIDDEN NAME="I" VALUE="NOW">
                <li>
                    <label for="password_reset_feature">Forgot Password Feature:</label>
                    <TMPL_IF NAME=USER_ELIGIBLE_FORGOT_PASSWORD_FEATURE>
                        <b>Disabled</b>
                        <div style="display:inline;">
                            <a class="btn darkgrey-btn" href="javascript:send_event('PRELOGIN/SHOW_INFO');">Edit</a>
                        </div>
                    <TMPL_ELSE>
                        <TMPL_IF NAME=USER_REGISTERED_FORGOT_PASSWORD_FEATURE>
                            <b>Need verification</b>
                            <div style="display:inline;">
                                <a class="btn darkgrey-btn" href="javascript:send_event('PRELOGIN/SHOW_EMAIL_VERIFY');">Edit</a>
                            </div>
                        <TMPL_ELSE>
                            <TMPL_IF NAME=DISABLE_FORGOT_PASSWORD_FEATURE>
                                <b>Disabled</b>
                            <TMPL_ELSE>
                                <b>Enabled</b>
                            </TMPL_IF>
                            <div style="display:inline;">
                                <a class="btn darkgrey-btn" href="javascript:send_event('PRELOGIN/ENABLE_DISABLE');">Edit</a>
                            </div>
                        </TMPL_IF>

                    </TMPL_IF>
                </li>
            </TMPL_IF>
            </TMPL_UNLESS>

            <TMPL_IF GOV>
                <li>
                    <label for="property_address_match_only">Return Physical Property Address Matches Only in Property Search</label>&nbsp;<input id="property_address_match_only" type="checkbox" name="property_address_match_only" value="yes" <TMPL_VAR NAME="property_address_match_only">>
                </li>
            </TMPL_IF>

            <TMPL_IF LE>
                <li>
                    <label for="property_address_match_only">Return Physical Property Address Matches Only in Property Search</label>&nbsp;<input id="property_address_match_only" type="checkbox" name="property_address_match_only" value="yes" <TMPL_VAR NAME="property_address_match_only">>
                </li>
            </TMPL_IF>

            <TMPL_IF GOV>
                <li>
                    <label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">>
                </li>
            </TMPL_IF>

            <TMPL_IF LE>
                <li>
                    <label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">>
                </li>
            </TMPL_IF>

            <TMPL_IF HEA>
                <li>
                    <label for="default_to_main_menu">Default to Main Menu After Sign In</label>&nbsp;<input id="default_to_main_menu" type="checkbox" name="default_to_main_menu" value="yes" <TMPL_VAR NAME="default_to_main_menu">>
                </li>
            </TMPL_IF>
            
            <TMPL_IF SHOW_OTP_USER>
                <TMPL_IF GOV>
                    <li>
                        <label for="enable_sms_2_factor">Enable Multi-Factor Authentication</label>&nbsp;<input id="enable_sms_2_factor" type="checkbox" name="enable_sms_2_factor" value="yes" <TMPL_VAR NAME="enable_sms_2_factor">>
                    </li>
                </TMPL_IF>

                <TMPL_IF LE>
                    <li>
                        <label for="enable_sms_2_factor">Enable Multi-Factor Authentication</label>&nbsp;<input id="enable_sms_2_factor" type="checkbox" name="enable_sms_2_factor" value="yes" <TMPL_VAR NAME="enable_sms_2_factor">>
                    </li>
                </TMPL_IF>
            </TMPL_IF>

            <TMPL_IF NAME="ENABLE_MYACC_V3">
                <li>
                    <label for="show_additional_input_fields">Always Show Additional Fields</label>&nbsp;<input id="show_additional_input_fields" type="checkbox" name="show_additional_input_fields" value="yes" <TMPL_VAR NAME="show_additional_input_fields">>
                </li>

                <TMPL_IF NAME="SHOW_SOF_PHOTO_OPT">
                    <TMPL_IF LE>
                        <li>
                            <label for="hide_offender_photos_adv_person_search">Do not display offender photos in Advanced Person Search rollup results</label>&nbsp;<input id="hide_offender_photos_adv_person_search" type="checkbox" name="hide_offender_photos_adv_person_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_adv_person_search">>
                        </li>
                        <li>
                            <label for="hide_offender_photos_criminal_search">Do not display offender photos in Criminal Records Search results</label>&nbsp;<input id="hide_offender_photos_criminal_search" type="checkbox" name="hide_offender_photos_criminal_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_criminal_search">>
                        </li>
                    </TMPL_IF>
                    <TMPL_IF GOV>
                        <li>
                            <label for="hide_offender_photos_adv_person_search">Do not display offender photos in Advanced Person Search rollup results</label>&nbsp;<input id="hide_offender_photos_adv_person_search" type="checkbox" name="hide_offender_photos_adv_person_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_adv_person_search">>
                        </li>
                        <li>
                            <label for="hide_offender_photos_criminal_search">Do not display offender photos in Criminal Records Search results</label>&nbsp;<input id="hide_offender_photos_criminal_search" type="checkbox" name="hide_offender_photos_criminal_search" value="yes" <TMPL_VAR NAME="hide_offender_photos_criminal_search">>
                        </li>
                    </TMPL_IF>
                </TMPL_IF>


            </TMPL_IF>

            <TMPL_IF ENABLE_THEMES>
                <TMPL_IF NAME="ENABLE_V2">
                    <TMPL_IF IRB>
                        <TMPL_INCLUDE NAME=irb/theme_preferences.tpl>
                    <TMPL_ELSE>
                        <TMPL_IF TCOL>
                            <TMPL_INCLUDE NAME=tcol/theme_preferences.tpl>
                        <TMPL_ELSE>
                            <TMPL_IF FCOL>
                                <TMPL_INCLUDE NAME=tcol/theme_preferences.tpl>
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

            <TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
                 <li>
                    <label for="enable_zip_city_autocomplete">Enable Zip and City Autocomplete on search forms</label>&nbsp;<input id="enable_zip_city_autocomplete" type="checkbox" name="enable_zip_city_autocomplete" value="yes" <TMPL_VAR NAME="enable_zip_city_autocomplete">>
                </li>
            </TMPL_IF>

            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_CHECKBOX>
            <TMPL_UNLESS HIDE_FDN_SEARCH_INDICATOR>
            <TMPL_IF FDN_DATA_ENABLED>
            <br>
            <li>
                <label for="enable_fraud_defense_checkbox">Enable Include LexisNexis&reg; Fraud Defense Network Checkbox</label>&nbsp;<input id="enable_fraud_defense_checkbox" type="checkbox" name="enable_fraud_defense_checkbox" value="yes" <TMPL_VAR NAME="enable_fraud_defense_checkbox">>
            </li>
            </TMPL_IF>
            </TMPL_UNLESS>
            </TMPL_UNLESS>

        </ol>
    </TMPL_IF>
</div>
<!-- End user_settings_prefs.tpl-->
