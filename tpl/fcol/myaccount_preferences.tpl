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
	<option value="PEOPLE_FINDER"<TMPL_IF SHOW_PEOPLE_FINDER_PREFS> SELECTED</TMPL_IF>>Finder Report Options (NON-FCRA)</option>
        <TMPL_IF ALLOW_FCRA>
        <TMPL_IF SHOW_FCRA_ASSET_REPORT>
	<option value="FCRA_ASSET"<TMPL_IF SHOW_FCRA_ASSET_PREFS> SELECTED</TMPL_IF>>Asset Report Options (FCRA)</option>
        </TMPL_IF>
        </TMPL_IF>
	<option value="COMPREHENSIVE"<TMPL_IF SHOW_COMPREHENSIVE_PREFS> SELECTED</TMPL_IF>>Person Report Options</option>
	<option value="COMP"<TMPL_IF SHOW_COMP_PREFS> SELECTED</TMPL_IF>>Custom Comprehensive Report Options</option>
	<option value="BUS"<TMPL_IF SHOW_BUS_PREFS> SELECTED</TMPL_IF>>Business Report Options</option>
	
	<TMPL_UNLESS DISABLE_BUS_INVIEW>
		<option value="BUS_INVIEW"<TMPL_IF SHOW_BUS_INVIEW_PREFS> SELECTED</TMPL_IF>>Business Inview Report Options</option>
	</TMPL_UNLESS>
	<option value="ADDR"<TMPL_IF SHOW_ADDR_PREFS> SELECTED</TMPL_IF>>Address Report Options (NON-FCRA)</option>
        <TMPL_IF ALLOW_FCRA>
	<option value="OTHER"<TMPL_IF SHOW_OTHER_PREFS> SELECTED</TMPL_IF>>Watercraft Report Options (FCRA)</option>
        </TMPL_IF>
	<option value="MV"<TMPL_IF SHOW_MV_PREFS> SELECTED</TMPL_IF>>Motor Vehicle Locator Report Options (NON-FCRA)</option>
        <TMPL_IF ALLOW_FCRA>
	<option value="FCRA_BK"<TMPL_IF SHOW_FCRA_BK_PREFS> SELECTED</TMPL_IF>>Bankruptcy Report Options (FCRA)</option>
	<option value="FCRA_LIENS"<TMPL_IF SHOW_FCRA_LIENS_PREFS> SELECTED</TMPL_IF>>Liens and Judgment Report Options (FCRA)</option>
	<option value="FCRA_CRIM"<TMPL_IF SHOW_FCRA_CRIM_PREFS> SELECTED</TMPL_IF>>Criminal Report Options (FCRA)</option>
        </TMPL_IF>
        <TMPL_IF NAME="SHOW_JAILBOOKING_REPORT">
            <option value="JAILBOOKING"<TMPL_IF SHOW_JAILBOOKING_PREFS> SELECTED</TMPL_IF>>Jail Booking Report Options</option>
	</TMPL_IF>
        
	<option value="DEED"<TMPL_IF SHOW_DEED_PREFS> SELECTED</TMPL_IF>>Property Locator Deeds Report Options (NON-FCRA)</option>
	<option value="ASSESSMENT"<TMPL_IF SHOW_ASSESSMENT_PREFS> SELECTED</TMPL_IF>>Property Locator Assessments Report Options (NON-FCRA)</option>
        <TMPL_IF ALLOW_FCRA>
	<option value="FCRA_DEED"<TMPL_IF SHOW_FCRA_DEED_PREFS> SELECTED</TMPL_IF>>Real Property Deeds Report Options (FCRA)</option>
	<option value="FCRA_ASSESSMENT"<TMPL_IF SHOW_FCRA_ASSESSMENT_PREFS> SELECTED</TMPL_IF>>Real Property Assessments Report Options (FCRA)</option>
        </TMPL_IF>
  <TMPL_IF ENABLE_ALSO_FOUND>
	<option value="ALSO_FOUND"<TMPL_IF SHOW_ALSO_FOUND_PREFS> SELECTED</TMPL_IF>>We Also Found Options (NON-FCRA)</option>
    </TMPL_IF>
  <TMPL_IF ENABLE_RESULTS_FOUND>
	<option value="RESULTS_FOUND"<TMPL_IF SHOW_RESULTS_FOUND_PREFS> SELECTED</TMPL_IF>>Results Found Report Options (NON-FCRA)</option>
    </TMPL_IF>
        <TMPL_IF ALLOW_FCRA>
  <TMPL_IF SHOW_FCRA_PRE_LIT_REPORT>
	<option value="FCRA_PRE_LIT"<TMPL_IF SHOW_FCRA_PRE_LIT_PREFS> SELECTED</TMPL_IF>>Pre-Litigation Report Options (FCRA)</option>
    </TMPL_IF>
    </TMPL_IF>
  <TMPL_UNLESS HIDE_BUS_CREDIT>
	<option value="BUS_CREDIT"<TMPL_IF SHOW_BUS_CREDIT_PREFS> SELECTED</TMPL_IF>>Experian Business Credit Report Options</option>
  </TMPL_UNLESS>
  <TMPL_UNLESS DISABLE_BUS_INVIEW_CRED>
	<option value="BUS_INVIEW_CRED"<TMPL_IF SHOW_BUS_INVIEW_CRED_PREFS> SELECTED</TMPL_IF>>Business Inview Credit Report Options</option>
   </TMPL_UNLESS>
  <TMPL_IF ENABLE_CONTACT_CARD_REPORT>
	<option value="CONTACT_CARD"<TMPL_IF SHOW_CONTACT_CARD_PREFS> SELECTED</TMPL_IF>>Contact Card Report Options</option>
    </TMPL_IF>
  <TMPL_IF SHOW_RT_PHONE>
    <option value="RT_PHONE"<TMPL_IF SHOW_RT_PHONE_PREFS> SELECTED</TMPL_IF>>Real-Time Phone Report Options</option>
  </TMPL_IF>
  <TMPL_IF ENABLE_ENTITLEMENTS_REPORT>
    <option value="ENTITLEMENTS"<TMPL_IF SHOW_ENTITLEMENTS_PREFS> selected="selected"</TMPL_IF>>Entitlements Report Options</option>
  </TMPL_IF>
  <TMPL_IF ENABLE_BUS_CONTACT_CARD_REPORT>
    <option value="BUS_CONTACT_CARD"<TMPL_IF SHOW_BUS_CONTACT_CARD_PREFS> selected="selected"</TMPL_IF>>Business Contact Card Report Options</option>
  </TMPL_IF>
  <TMPL_IF SHOW_CASE_CONNECT>
    <option value="CASE_CONNECT"<TMPL_IF SHOW_CASE_CONNECT_PREFS> selected="selected"</TMPL_IF>>Case Deconfliction Options</option>
  </TMPL_IF>
  <TMPL_IF ENABLE_PHONE_HISTORY_REPORT>
  <TMPL_UNLESS DISABLE_PHONE_HISTORY_REPORT>
    <option value="PHONE_HISTORY"<TMPL_IF SHOW_PHONE_HISTORY_PREFS> selected="selected"</TMPL_IF>>Phones History Report Options</option>
  </TMPL_UNLESS>    
  </TMPL_IF>
  <TMPL_IF SHOW_BUS_BKY_TLJ_ADDON>
    <option value="SHORT_BUS_BKY"<TMPL_IF SHOW_SHORT_BUS_BKY_PREFS> SELECTED</TMPL_IF>>Business Bankrupty Report Options</option>
    <option value="SHORT_BUS_TLJ"<TMPL_IF SHOW_SHORT_BUS_TLJ_PREFS> SELECTED</TMPL_IF>>Business Lien and Judgment Report Options</option>
  </TMPL_IF>
	  <TMPL_IF ENABLE_SOCIALMEDIA_LOCATOR>
   <TMPL_UNLESS DISABLE_SOCIALMEDIA>  
	<option value="SOCIALMEDIA"<TMPL_IF SHOW_SOCIALMEDIA_PREFS> SELECTED</TMPL_IF>>Social Media Locator Options</option>
  </TMPL_UNLESS>    
  </TMPL_IF>
</select>

	<!--&nbsp;&nbsp;<a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">GO!</a>-->
	<br><br>

	<TMPL_IF SAVEMSG><div class="smallfont1"><b>Your Preferences have been Saved.</b></div><br>
	</TMPL_IF>

	<TMPL_IF SHOW_BUS_PREFS>

	<span class="myaccounttitle">Comprehensive Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=fcol/report/short_bus_report_body.tpl>

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

	<TMPL_IF SHOW_FCRA_CRIM_PREFS>

	<span class="myaccounttitle">Criminal Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_CRIM">

	<TMPL_ELSE>

	<TMPL_IF SHOW_SOCIALMEDIA_PREFS>

	  <span class="myaccounttitle">Social Media Locator</span>
	  <br><br>
		<TMPL_INCLUDE NAME=socialmedia_settings_pref.tpl>
		<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	  <br>
	  <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SOCIALMEDIA">
	<TMPL_ELSE>
        

	<TMPL_IF SHOW_JAILBOOKING_PREFS>
            <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>

	        <span class="myaccounttitle">Jail Booking Report Features<!-- <TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS> --></span>
	        <br><br>

                <TMPL_INCLUDE NAME=short_jail_booking_report_body.tpl>
                <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	        <br>
	        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="JAILBOOKING">
            </TMPL_UNLESS>
	<TMPL_ELSE>


    <TMPL_IF SHOW_RT_PHONE_PREFS>

    <span class="myaccounttitle">Real-Time Phone Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br><br>
        <TMPL_INCLUDE NAME=short_rt_phone_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="RT_PHONE">

    <TMPL_ELSE>
    <TMPL_IF SHOW_ENTITLEMENTS_PREFS>

    <span class="myaccounttitle">Entitlements Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
    <br/><br/>
      <TMPL_INCLUDE NAME=short_entitlem_report_body.tpl>
      <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
    <br/>
    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ENTITLEMENTS">

    <TMPL_ELSE>
    <TMPL_IF SHOW_CASE_CONNECT_PREFS>
      <TMPL_INCLUDE NAME=case_connect/deconflict_prefs.tpl>
      <br/>
      <input type="hidden" name="SHOW_PREFS" value="CASE_CONNECT"/>
    <TMPL_ELSE>
    <TMPL_IF SHOW_CASE_CONNECT_DISCLAIMER>
      <TMPL_INCLUDE NAME=case_connect/disclaimer_prefs.tpl>
      <br/>
      <input type="hidden" name="SHOW_PREFS" value="CASE_CONNECT"/>
    <TMPL_ELSE>
	<TMPL_IF SHOW_DEED_PREFS>

	<span class="myaccounttitle">Property Deeds Report Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="DEED">

	<TMPL_ELSE>
	<TMPL_IF SHOW_ASSESSMENT_PREFS>

	<span class="myaccounttitle">Property Assessments Report Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSESSMENT">

	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_DEED_PREFS>

	<span class="myaccounttitle">Real Property Deeds Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_DEED">

	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_ASSESSMENT_PREFS>

	<span class="myaccounttitle">Real Property Assessments Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_ASSESSMENT">

	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_BK_PREFS>

	<span class="myaccounttitle">Bankruptcy Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_BK">

	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_LIENS_PREFS>

	<span class="myaccounttitle">Liens and Judgment Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_LIENS">


	<TMPL_ELSE>
	<TMPL_IF SHOW_MV_PREFS>

	<span class="myaccounttitle">Motor Vehicle Locator Report Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="MV">

	<TMPL_ELSE>
	<TMPL_IF SHOW_OTHER_PREFS>

	<span class="myaccounttitle">Watercraft Report Features (FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="OTHER">

	<TMPL_ELSE>
	<TMPL_IF SHOW_ALSO_FOUND_PREFS>

	<span class="myaccounttitle">We Also Found Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ALSO_FOUND">

	<TMPL_ELSE>
	<TMPL_IF SHOW_RESULTS_FOUND_PREFS>

	<span class="myaccounttitle">Results Found Report Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="RESULTS_FOUND">

	<TMPL_ELSE>
	<TMPL_IF SHOW_ADDR_PREFS>

	<span class="myaccounttitle">Address Report Features (NON-FCRA)<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=fcol/report/short_addr_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ADDR">

	<TMPL_ELSE>
	<TMPL_IF SHOW_COMP_PREFS>

	<span class="myaccounttitle">Custom Comprehensive Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=fcol/report/short_report_body.tpl>
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
	<TMPL_IF SHOW_PEOPLE_FINDER_PREFS>

        <TMPL_INCLUDE NAME=short_skiptrace_report_body.tpl>

	<br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PEOPLE_FINDER">
	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_ASSET_PREFS>

        <TMPL_INCLUDE NAME=short_asset_report_body.tpl>

	<br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_ASSET">
	<TMPL_ELSE>
	<TMPL_IF SHOW_FCRA_PRE_LIT_PREFS>

        <TMPL_INCLUDE NAME=short_pre_lit_report_body.tpl>

	<br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="FCRA_PRE_LIT">
	<TMPL_ELSE>
	<TMPL_IF SHOW_COMPREHENSIVE_PREFS>

        <TMPL_INCLUDE NAME=fcol/report/short_comprehensive_report_body.tpl>

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
	<TMPL_IF SHOW_BUS_CREDIT_PREFS>

	<span class="myaccounttitle">Experian Business Credit Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
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
<!--	<TMPL_IF DISABLE_DA_WIRELESS>
	  <TMPL_UNLESS DELETE_DA_WIRELESS>
	<td width="1%">&nbsp;</td>
		<td><span class="disabled_small">Phones Plus&nbsp;&nbsp;</span><span class="reportprices"> </span><span class="disabled_small">(disabled)</span></td>
		<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=phones-plus-price></TMPL_UNLESS>&nbsp;</td>
	  </TMPL_UNLESS>
	<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="addr-properties" value="11" <TMPL_VAR NAME=phones-plus> onClick="change_total(this, <TMPL_VAR NAME=phones-plus-price>,document.forms[0].CONTACT_CARD_TOTAL,document.forms[0].CONTACT_CARD_PRE_TOTAL)"></td>
			<td><span class="smallfont1">Phones Plus&nbsp;&nbsp;</span><span class="reportprices"></span></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>$<TMPL_VAR NAME=phones-plus-price></TMPL_UNLESS>&nbsp;</td>
	</TMPL_IF> -->

	<br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="CONTACT_CARD">
	<TMPL_ELSE>
		<TMPL_IF SHOW_BUS_CONTACT_CARD_PREFS>
			<span class="myaccounttitle">Business Contact Card Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
			<br><br>

			    <TMPL_INCLUDE NAME=../v2/report/short_bus_contact_card_report_body.tpl>
			    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
			<br>
			<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_CONTACT_CARD">
		<TMPL_ELSE>
			<TMPL_IF SHOW_PHONE_HISTORY_PREFS>
				<span class="myaccounttitle">Phone History Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
				<br><br>
				
				    <TMPL_INCLUDE NAME=../v2/report/short_phone_history_report_body.tpl>
				    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
				<br>
				<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PHONE_HISTORY">
			<TMPL_ELSE>
            <TMPL_IF SHOW_SHORT_BUS_BKY_PREFS>
                <span class="myaccounttitle">Business Bankruptcy Report Features</span>
	            <br><br>
                <TMPL_INCLUDE NAME=../v2/report/short_bus_bky_report_body.tpl>
                <br>
                <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
                <br>
                <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SHORT_BUS_BKY">
            <TMPL_ELSE>
            <TMPL_IF SHOW_SHORT_BUS_TLJ_PREFS>
                <span class="myaccounttitle">Business Lien and Judgements Report Features</span>
	            <br><br>
                <TMPL_INCLUDE NAME=../v2/report/short_bus_tlj_report_body.tpl>
                <br>
                <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
                <br>
                <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SHORT_BUS_TLJ">
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
