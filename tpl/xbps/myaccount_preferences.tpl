<!-- begin myaccount_preferences.tpl -->

<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center">
  <br>

  <select class="unifont1" name="CHOOSE_PREFS" onChange="send_event('MYACCOUNT/SHOW_PREFERENCES');">
  <option value="USER"<TMPL_IF SHOW_USER_PREFS> SELECTED</TMPL_IF>>Other User Settings</option>
  <option value="COMPREHENSIVE"<TMPL_IF SHOW_COMPREHENSIVE_PREFS> SELECTED</TMPL_IF>>National Comprehensive Report Options</option>
  <option value="COMP"<TMPL_IF SHOW_COMP_PREFS> SELECTED</TMPL_IF>>National Comprehensive plus Associates Report Options</option>
      <TMPL_UNLESS COL>
  <option value="SUMMARY"<TMPL_IF SHOW_SUMMARY_PREFS> SELECTED</TMPL_IF>>Summary Report Options</option>
      </TMPL_UNLESS>
  <option value="BASIC_PLUS_ASSOC"<TMPL_IF SHOW_BASIC_PLUS_ASSOC_PREFS> SELECTED</TMPL_IF>>Basic Plus Associates Report Options</option>
  <option value="ASSET"<TMPL_IF SHOW_ASSET_PREFS> SELECTED</TMPL_IF>>Asset Report Options</option>
  <option value="BUS"<TMPL_IF SHOW_BUS_PREFS> SELECTED</TMPL_IF>>Business Report Options</option>
  <TMPL_UNLESS DISABLE_BUS_INVIEW>
	<option value="BUS_INVIEW"<TMPL_IF SHOW_BUS_INVIEW_PREFS> SELECTED</TMPL_IF>>Business Inview Report Options</option>
  </TMPL_UNLESS>
  <option value="ADDR"<TMPL_IF SHOW_ADDR_PREFS> SELECTED</TMPL_IF>>Address Report Options</option>
  <option value="OTHER"<TMPL_IF SHOW_OTHER_PREFS> SELECTED</TMPL_IF>>Watercraft Report Options</option>
  <option value="MV"<TMPL_IF SHOW_MV_PREFS> SELECTED</TMPL_IF>>Motor Vehicle Report Options</option>
  <option value="BK"<TMPL_IF SHOW_BK_PREFS> SELECTED</TMPL_IF>>Bankruptcy Report Options</option>
  <option value="LIENS"<TMPL_IF SHOW_LIENS_PREFS> SELECTED</TMPL_IF>>Liens and Judgment Report Options</option>
  <option value="CRIM"<TMPL_IF SHOW_CRIM_PREFS> SELECTED</TMPL_IF>>Criminal Report Options</option>
  <option value="DEED"<TMPL_IF SHOW_DEED_PREFS> SELECTED</TMPL_IF>>Property Deeds Report Options</option>
  <option value="ASSESSMENT"<TMPL_IF SHOW_ASSESSMENT_PREFS> SELECTED</TMPL_IF>>Property Assessments Report Options</option>
  <TMPL_IF ENABLE_ALSO_FOUND>
  <option value="ALSO_FOUND"<TMPL_IF SHOW_ALSO_FOUND_PREFS> SELECTED</TMPL_IF>>We Also Found Options</option>
    </TMPL_IF>
  <TMPL_IF ENABLE_RESULTS_FOUND>
  <option value="RESULTS_FOUND"<TMPL_IF SHOW_RESULTS_FOUND_PREFS> SELECTED</TMPL_IF>>Results Found Report Options</option>
    </TMPL_IF>
  <TMPL_IF ENABLE_PRELIT_REPORT>
  <option value="PRE_LIT"<TMPL_IF SHOW_PRE_LIT_PREFS> SELECTED</TMPL_IF>>Pre-Litigation Report Options</option>
    </TMPL_IF>
  <TMPL_UNLESS HIDE_BUS_CREDIT>
  <option value="BUS_CREDIT"<TMPL_IF SHOW_BUS_CREDIT_PREFS> SELECTED</TMPL_IF>>Business Credit Report Options</option>
  </TMPL_UNLESS>
  <TMPL_UNLESS DISABLE_BUS_INVIEW_CRED>
	<option value="BUS_INVIEW_CRED"<TMPL_IF SHOW_BUS_INVIEW_CRED_PREFS> SELECTED</TMPL_IF>>Business Inview Credit Report Options</option>
   </TMPL_UNLESS>
  <TMPL_IF ENABLE_V2>
	<option value="SEXOFFENDER"<TMPL_IF SHOW_SEXOFFENDER_PREFS> SELECTED</TMPL_IF>>Sexual Offenders Search Options</option>
  </TMPL_IF>
  <TMPL_UNLESS DISABLE_PHONE_HISTORY_REPORT>
    <option value="PHONE_HISTORY"<TMPL_IF SHOW_PHONE_HISTORY_PREFS> selected="selected"</TMPL_IF>>Phones History Report Options</option>
  </TMPL_UNLESS>
	  <TMPL_IF ENABLE_SOCIALMEDIA_LOCATOR>
   <TMPL_UNLESS DISABLE_SOCIALMEDIA>  
	<option value="SOCIALMEDIA"<TMPL_IF SHOW_SOCIALMEDIA_PREFS> SELECTED</TMPL_IF>>Social Media Locator Options</option>
  </TMPL_UNLESS>    
  </TMPL_IF>
  </select>
  <br><br>
  <TMPL_IF SAVEMSG><div class="smallfont1"><b>Your Preferences have been Saved.</b></div><br>
  </TMPL_IF>


  <TMPL_IF SHOW_BUS_PREFS>
    <span class="myaccounttitle">Comprehensive Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_bus_report_body.tpl>
    <br>
    <!-- following table builds a horizontal line - even in NS -->
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="81%">
      <tr>
        <td>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
      <td></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS">
  <TMPL_ELSE>
	<TMPL_IF SHOW_BUS_INVIEW_PREFS>

	<span class="myaccounttitle">Business Inview Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

	<TMPL_INCLUDE NAME=short_bus_inview_report_body.tpl>
	<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_INVIEW">

	<TMPL_ELSE>
	<TMPL_IF SHOW_BUS_INVIEW_CRED_PREFS>

	<span class="myaccounttitle">Business Inview Credit Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>
	<TMPL_INCLUDE NAME=short_bus_inview_cred_report_body.tpl>
	<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_INVIEW_CRED">

	<TMPL_ELSE>
  <TMPL_IF SHOW_SEXOFFENDER_PREFS>
    <span class="myaccounttitle">Sexual Offenders Search Options</span>
    <br><br>
    <TMPL_INCLUDE NAME=sexpredator_settings_pref.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SEXOFFENDER">
  <TMPL_ELSE>
	<TMPL_IF SHOW_SOCIALMEDIA_PREFS>

	  <span class="myaccounttitle">Social Media Locator</span>
	  <br><br>
		<TMPL_INCLUDE NAME=socialmedia_settings_pref.tpl>
		<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	  <br>
	  <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SOCIALMEDIA">
	<TMPL_ELSE>
  <TMPL_IF SHOW_CRIM_PREFS>
    <span class="myaccounttitle">Criminal Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="CRIM">
  <TMPL_ELSE>
  <TMPL_IF SHOW_DEED_PREFS>
    <span class="myaccounttitle">Property Deeds Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="DEED">
  <TMPL_ELSE>
  <TMPL_IF SHOW_ASSESSMENT_PREFS>
    <span class="myaccounttitle">Property Assessments Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSESSMENT">
  <TMPL_ELSE>
  <TMPL_IF SHOW_BK_PREFS>
    <span class="myaccounttitle">Bankruptcy Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BK">
  <TMPL_ELSE>
  <TMPL_IF SHOW_LIENS_PREFS>
    <span class="myaccounttitle">Liens and Judgment Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="LIENS">
  <TMPL_ELSE>
  <TMPL_IF SHOW_MV_PREFS>
    <span class="myaccounttitle">Motor Vehicle Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="MV">
  <TMPL_ELSE>
  <TMPL_IF SHOW_OTHER_PREFS>
    <span class="myaccounttitle">Watercraft Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="OTHER">
  <TMPL_ELSE>
  <TMPL_IF SHOW_ALSO_FOUND_PREFS>
    <span class="myaccounttitle">We Also Found Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ALSO_FOUND">
  <TMPL_ELSE>
  <TMPL_IF SHOW_RESULTS_FOUND_PREFS>
    <span class="myaccounttitle">Results Found Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="RESULTS_FOUND">
  <TMPL_ELSE>
  <TMPL_IF SHOW_ADDR_PREFS>
    <span class="myaccounttitle">Address Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_addr_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ADDR">
  <TMPL_ELSE>
  <TMPL_IF SHOW_COMP_PREFS>
    <span class="myaccounttitle">National Comprehensive plus Associates Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=../v2/report/short_nat_comprehensive_report_body.tpl>
    <br>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMP">
  <TMPL_ELSE>
  <TMPL_IF SHOW_SUMMARY_PREFS>
    <TMPL_INCLUDE NAME=short_summary_report_body.tpl>
    <br>
    <!-- following table builds a horizontal line - even in NS -->
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="81%">
      <tr>
        <td>
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
      <td></td>
          </tr>
        </table>
        </td>
      </tr>
    </table>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SUMMARY">
  <TMPL_ELSE>
  <TMPL_IF SHOW_BASIC_PLUS_ASSOC_PREFS>
    <span class="myaccounttitle">Basic Plus Associates Report Features</span>
    <br><br>
    <TMPL_INCLUDE NAME=../report/short_basic_plus_assoc_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BASIC_PLUS_ASSOC">
  <TMPL_ELSE>
  <TMPL_IF SHOW_ASSET_PREFS>
    <TMPL_INCLUDE NAME=short_asset_report_body.tpl>
    <br>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSET">
  <TMPL_ELSE>
  <TMPL_IF SHOW_PRE_LIT_PREFS>
    <TMPL_INCLUDE NAME=short_pre_lit_report_body.tpl>
    <br>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PRE_LIT">
  <TMPL_ELSE>
  <TMPL_IF SHOW_COMPREHENSIVE_PREFS>
    <TMPL_INCLUDE NAME=../v2/report/short_nat_comprehensive_report_body.tpl>
    <br>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMPREHENSIVE">
  <TMPL_ELSE>
  <TMPL_IF SHOW_USER_PREFS>
        <TMPL_INCLUDE NAME=user_settings_prefs.tpl>
        <br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
        <br>
        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="USER">
       <TMPL_ELSE>
       <TMPL_IF SHOW_PROVIDER_PREFS>
    <span class="myaccounttitle">Provider Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
        <TMPL_INCLUDE NAME=short_provider_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PROVIDER">
       <TMPL_ELSE>
       <TMPL_IF SHOW_SANCTION_PREFS>
    <span class="myaccounttitle">Provider Sanction Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
        <TMPL_INCLUDE NAME=short_sanction_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SANCTION">
       <TMPL_ELSE>
       <TMPL_IF SHOW_BUS_CREDIT_PREFS>
    <span class="myaccounttitle">Business Credit Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_others_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_CREDIT">
       <TMPL_ELSE>
       <TMPL_IF SHOW_CONTACT_CARD_PREFS>
    <span class="myaccounttitle">Contact Card Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=short_contact_card_report_body.tpl>
    <br>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="CONTACT_CARD">
  <TMPL_ELSE>
  <TMPL_IF SHOW_PHONE_HISTORY_PREFS>
    <span class="myaccounttitle">Phone History Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
    <TMPL_INCLUDE NAME=../v2/report/short_phone_history_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PHONE_HISTORY">
  <TMPL_ELSE>
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
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>

  <TMPL_UNLESS NAME=MYACCOUNT_PREFERENCES_CHILD>
  <table border="0" cellpadding="0" cellspacing="0" width="740" class="myaccountbody">
    <tr>
      <td height="60" valign="middle" align="center"><a href="javascript:send_event('MYACCOUNT/SAVE_PREFERENCES');"><img width="120" height="24" border="0" name="saveprefadmin" src="<TMPL_VAR NAME=IMGPATH>/savepref.gif"></a></td>
    </tr>
  </table>
  </TMPL_UNLESS>
        </td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<br>
<!-- end myaccount_preferences.tpl -->
