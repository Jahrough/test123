<!-- begin irs/myaccount_preferences.tpl -->

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
	<option value="COMP"<TMPL_IF SHOW_COMP_PREFS> SELECTED</TMPL_IF>>Custom Comprehensive Report Options</option>
	<option value="BUS"<TMPL_IF SHOW_BUS_PREFS> SELECTED</TMPL_IF>>Business Report Options</option>	
	<TMPL_UNLESS DISABLE_BUS_INVIEW>
		<option value="BUS_INVIEW"<TMPL_IF SHOW_BUS_INVIEW_PREFS> SELECTED</TMPL_IF>>Business Inview Report Options</option>
	</TMPL_UNLESS>
    <TMPL_UNLESS DISABLE_BUS_INVIEW_CRED>
 	    <option value="BUS_INVIEW_CRED"<TMPL_IF SHOW_BUS_INVIEW_CRED_PREFS> SELECTED</TMPL_IF>>Business Inview Credit Report Options</option>
     </TMPL_UNLESS>
	<option value="ADDR"<TMPL_IF SHOW_ADDR_PREFS> SELECTED</TMPL_IF>>Address Report Options</option>
	<option value="OTHER"<TMPL_IF SHOW_OTHER_PREFS> SELECTED</TMPL_IF>>Watercraft Report Options</option>
	<option value="MV"<TMPL_IF SHOW_MV_PREFS> SELECTED</TMPL_IF>>Motor Vehicle Report Options</option>
  <TMPL_IF ENABLE_V2>
	<option value="COMBINED_PROPERTY"<TMPL_IF SHOW_COMBINED_PROPERTY_PREFS> SELECTED</TMPL_IF>>Property Report Options</option>
  <TMPL_ELSE>
	<option value="DEED"<TMPL_IF SHOW_DEED_PREFS> SELECTED</TMPL_IF>>Property Deeds Report Options</option>
	<option value="ASSESSMENT"<TMPL_IF SHOW_ASSESSMENT_PREFS> SELECTED</TMPL_IF>>Property Assessments Report Options</option>
  </TMPL_IF>
	<TMPL_IF ENABLE_V2>
		<option value="SEXOFFENDER"<TMPL_IF SHOW_SEXOFFENDER_PREFS> SELECTED</TMPL_IF>>Sexual Offenders Search Options</option>
	</TMPL_IF>
  <TMPL_IF SHOW_RT_PHONE>
    <option value="RT_PHONE"<TMPL_IF SHOW_RT_PHONE_PREFS> SELECTED</TMPL_IF>>Real-Time Phone Report Options</option>
  </TMPL_IF>
	</select>
	<!--&nbsp;&nbsp;<a href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">GO!</a>-->
	<br><br>

	<TMPL_IF SAVEMSG><div class="smallfont1"><b>Your Preferences have been Saved.</b></div><br>
	</TMPL_IF>

  <TMPL_IF SHOW_RT_PHONE_PREFS>

  <span class="myaccounttitle">Real-Time Phone Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
  <br/><br/>
    <TMPL_INCLUDE NAME=short_rt_phone_report_body.tpl>
    <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
  <br/>
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
  <TMPL_IF SHOW_COMBINED_PROPERTY_PREFS>

	<span class="myaccounttitle">Property Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=../v2/report/short_combined_prop_report_body.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMBINED_PROPERTY">

	<TMPL_ELSE>

	<TMPL_IF SHOW_SEXOFFENDER_PREFS>

	  <span class="myaccounttitle">Sexual Offenders Search Options<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	  <br><br>
		<TMPL_INCLUDE NAME=sexpredator_settings_pref.tpl>
		<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	  <br>
	  <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SEXOFFENDER">
	<TMPL_ELSE>

	<TMPL_IF SHOW_BK_PREFS>

	<span class="myaccounttitle">Bankruptcy Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BK">

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
	<TMPL_IF SHOW_ADDR_PREFS>

	<span class="myaccounttitle">Address Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_addr_report_body.tpl>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ADDR">

	<TMPL_ELSE>
	<TMPL_IF SHOW_COMP_PREFS>

	<span class="myaccounttitle">Custom Comprehensive Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
	<br><br>

        <TMPL_INCLUDE NAME=short_report_body.tpl>
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
	<TMPL_IF SHOW_ASSET_PREFS>

        <TMPL_INCLUDE NAME=short_asset_report_body.tpl>

	<br>
        <TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
	<br>
	<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSET">
	<TMPL_ELSE>
	<TMPL_IF SHOW_COMPREHENSIVE_PREFS>

        <TMPL_INCLUDE NAME=short_comprehensive_report_body.tpl>

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
<!-- end irs/myaccount_preferences.tpl -->
