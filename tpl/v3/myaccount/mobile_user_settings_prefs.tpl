<!-- Begin mobile_user_settings_prefs.tpl-->
<input type="hidden" name="save-report" value="0">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
    <div class="section-row">
        <TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE">
    </div>
</TMPL_IF>
<TMPL_IF SAVEMSG>
    <div class="smallfont1">
        <b>&nbsp;&nbsp;Your Preferences have been Saved.</b>
    </div><br>
</TMPL_IF>
<div class="myaccount-containers">
<div class="myaccount-section-title">User Preferences:</div>
<div class="section-row mgb0" style="padding:7px 0 0 0;">
    <fieldset>
       <div class="section-row">
           <TMPL_IF NAME="ENABLE_SAVE_REPORT">
               <b> <label for="password_reset_feature">Save report for later access:</label>&nbsp;</b><br><br>
               <table border="0" cellpadding="0" cellspacing="0" width="100%">
                   <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-person-report" id="save-person-report" value="1" <TMPL_VAR NAME="SAVE_PERSON_REPORT"><TMPL_IF NAME="REPORT_MANAGER_OFF">  readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="save-person-report">&nbsp;Person Report</td>
                   </tr>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-phone-report" id="save-phone-report" value="1" <TMPL_VAR NAME="SAVE_PHONE_REPORT"> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="phone-report">&nbsp;Phone Report</td>
                   </tr>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-address-report" id="save-address-report" value="1" <TMPL_VAR NAME="SAVE_ADDRESS_REPORT"> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="address-report">&nbsp;Address Report</td>
                   </tr>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-business-report" id="save-business-report" value="1" <TMPL_VAR NAME="SAVE_BUSINESS_REPORT"> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="business-report">&nbsp;Business Report</td>
                   </tr>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-vehicle-report" id="save-vehicle-report" value="1" <TMPL_VAR NAME="SAVE_VEHICLE_REPORT"> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="vehicle-report">&nbsp;Vehicle Report</td>
                   </tr>
                   <tr>
                       <td class="checkbox-td" class="disabled_medblack"><input type="checkbox" name="save-location-report" id="save-location-report" value="1" <TMPL_VAR NAME="SAVE_LOCATION_REPORT"> <TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>></td>
                       <td align="left" class="disabled_medblack"><label for="location-report">&nbsp;<TMPL_IF GOV>Government&nbsp;</TMPL_IF><TMPL_IF LE>Law Enforcement&nbsp;</TMPL_IF>Location Report</td>
                   </tr>
                   </span>
               </table>
               <TMPL_IF NAME="REPORT_MANAGER_OFF">
                   &nbsp;(Saving Reports currently not available)
               </TMPL_IF>
           </TMPL_IF>
           <TMPL_UNLESS MANDATORY_REGISTER>
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
               <TMPL_IF USER_CAN_SEE_FORGOT_PASSWORD_FEATURE><br>
                 <table border="0" cellpadding="0" cellspacing="0" width="20%">
                   <INPUT TYPE=HIDDEN NAME="I" VALUE="NOW">
                   <tr>
                    <td><label for="password_reset_feature"><b>Forgot Password Feature:</b></label>&nbsp;</td>
                    <td>
                       <TMPL_IF NAME=USER_ELIGIBLE_FORGOT_PASSWORD_FEATURE>
                          <b>Disabled</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_INFO');">
                       <TMPL_ELSE>
                          <TMPL_IF NAME=USER_REGISTERED_FORGOT_PASSWORD_FEATURE>
                              <b>Need verification</b>&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/SHOW_EMAIL_VERIFY')">
                          <TMPL_ELSE>
                              <TMPL_IF NAME=DISABLE_FORGOT_PASSWORD_FEATURE>
                                  <b>Disabled</b>&nbsp;&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                              <TMPL_ELSE>
                                  <b>Enabled</b>&nbsp;&nbsp;<input type=button value="Edit" onclick="send_event('PRELOGIN/ENABLE_DISABLE')">
                              </TMPL_IF>
                          </TMPL_IF>
                      </TMPL_IF>
                    </td>
                   </tr>
                 </table>
               </TMPL_IF>
          </TMPL_IF>
          </TMPL_UNLESS>
    </fieldset>
    <TMPL_UNLESS NAME=MYACCOUNT_PREFERENCES_CHILD>
       <div class="section-row ta-center mgt15">
          <div>
               <a class="btn red-btn" href="javascript:send_report_event('MYACCOUNT/SAVE_PREFERENCES');">Save Preferences</a>
          </div>
       </div>
    </TMPL_UNLESS>
</div>
</div>
<!-- End mobile_user_settings_prefs.tpl-->
