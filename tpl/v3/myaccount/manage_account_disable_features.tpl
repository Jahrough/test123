<!-- BEGIN manage_account_disable_features.tpl -->
<TMPL_IF SA>
<!-- need one tmpl_if for each feature right here -->

  <TMPL_IF SHOW_ENABLE_FEATURES>
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Enable Features</legend></div>
      <table cellpadding="0" cellspacing="0" width="95%">
     <TMPL_UNLESS MANDATORY_REGISTER>
     <TMPL_IF COMPANY_REGISTERED_FORGOT_PASSWORD_FEATURE>
        <tr>
          <td class="perc75 unifont1">
            &nbsp;Forgot Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a class="myaccLnk" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','600','500',0,0,0,1,0,0,'','fpw_help');">Help</a>
          </td>
          <td class="perc25 unifont1">
          <table cellpadding="0" cellspacing="0">
            <tr>
              <td><input type="radio" name="DISABLE_FORGOT_PASSWORD_FEATURE" value="0"<TMPL_UNLESS DISABLE_FORGOT_PASSWORD_FEATURE> checked="checked"</TMPL_UNLESS>/></td>
              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
              <td><input type="radio" name="DISABLE_FORGOT_PASSWORD_FEATURE" value="1"<TMPL_IF DISABLE_FORGOT_PASSWORD_FEATURE> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">No</td>
            </tr>
          </table>
          </td>
        </tr>
        
        <TMPL_IF ENABLE_MULTI_REF_FIELDS>
			<tr>
			  <td class="perc75 unifont1">
				&nbsp;Multi-Reference Fields:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  </td>
			  <td class="perc25 unifont1">
			  <table cellpadding="0" cellspacing="0">
				<tr>
				  <td><input type="radio" name="DISABLE_MULTI_REF_FIELD" value="0"<TMPL_UNLESS DISABLE_MULTI_REF_FIELD> checked="checked"</TMPL_UNLESS>/></td>
				  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
				  <td><input type="radio" name="DISABLE_MULTI_REF_FIELD" value="1"<TMPL_IF DISABLE_MULTI_REF_FIELD> checked="checked"</TMPL_IF>/></td>
				  <td class="unifont1">No</td>
				</tr>
			  </table>
			  </td>
			</tr>
        </TMPL_IF>
     </TMPL_IF>        
     </TMPL_UNLESS>        
     <TMPL_IF SHOW_ADMIN_CONTACT_LINK>
        <tr>
          <td class="perc75 unifont1">
            &nbsp;Company Administrator Link: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a class="myaccLnk" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','FPWInfo','644','500',0,0,0,1,0,0,'','company_admin_link_help');">Help</a>
          </td>
          <td class="perc25 unifont1">
          <table cellpadding="0" cellspacing="0">
            <tr>
              <td><input type="radio" name="DISABLE_ADMIN_LINK_FEATURE" value="0"<TMPL_UNLESS DISABLE_ADMIN_LINK_FEATURE> checked="checked"</TMPL_UNLESS>/></td>
              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
              <td><input type="radio" name="DISABLE_ADMIN_LINK_FEATURE" value="1"<TMPL_IF DISABLE_ADMIN_LINK_FEATURE> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">No</td>
            </tr>
          </table>
          </td>
        </tr>

        <TMPL_IF ALLOW_ZIP_CITY_AUTOCOMPLETE>
        <tr>
          <td class="perc75 unifont1">
            &nbsp;Enable Zip and City Autocomplete on search forms: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </td>
          <td class="perc25 unifont1">
          <table cellpadding="0" cellspacing="0">
            <tr>
              <td><input type="radio" name="DISABLE_ZIP_CITY_AUTOCOMPLETE" value="0"<TMPL_UNLESS DISABLE_ZIP_CITY_AUTOCOMPLETE> checked="checked"</TMPL_UNLESS>/></td>
              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
              <td><input type="radio" name="DISABLE_ZIP_CITY_AUTOCOMPLETE" value="1"<TMPL_IF DISABLE_ZIP_CITY_AUTOCOMPLETE> checked="checked"</TMPL_IF>/></td>
              <td class="unifont1">No</td>
            </tr>
          </table>
          </td>
        </tr>
        </TMPL_IF>

      </TMPL_IF>

    </table>
  </fieldset>
  </TMPL_IF>
  
</TMPL_IF>
<!-- END manage_account_disable_features.tpl -->
