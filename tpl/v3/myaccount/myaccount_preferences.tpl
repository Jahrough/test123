<!-- begin myaccount_preferences.tpl -->
<script>
    $j(function(){
        var label = $j('.myaccounttitle').first().text();
        if(label.length > 0){
            $j('.myaccounttitle').first().remove();
            $j('#page-legend').text(label);
        } else {
            var label = $j('#user-prefs-select > option:selected').text();
            $j('#page-legend').text(label);
        }


        $j('.myaccount-containers a').addClass('myaccLnk')

    });
    function checkparent(){}
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<style>
    ol > li {
        font-size: initial !important;
        margin-bottom:8px;
    }
    ol > br{ display:none;}
    select#user-prefs-select{
        height:30px;
        font-size:14px;
    }
    table.options-table {
        background: none;
    }
    .grey-border{
        border:0;
        background: none;
    }
    div.text-and-select > div.tas-text {
        font-size: 14px;
        color: #464646;
    }
    td {
        color: #464646;
    }
    td.lbl-price {
        text-align: right;
        color:#ed1c24;
        font-weight:bold;
    }
    ol > li label {
        color: #464646;
        font-weight:bold;
    }
    #lineVertRedDot{
        height: 1px;
        border-bottom: 1px dotted #ed1c24;
        margin: 12px 0;
    }
</style>


<div class="myaccount-containers">
    <div class="section" style="padding: 0 15px;">
        <div class="myaccount-section-title" style="margin-left:0;"><legend><b id="page-legend">&nbsp;</b></legend></div>
        <div class="section-row mgb0" style="padding:7px 0 0 0;">
            <fieldset>
                <div class="section-row">
			<TMPL_IF MOBILE_ONLY_USER>
				<!-- Mobile User only display Forgot password -->
					<TMPL_IF SAVEMSG><div class="smallfont1"><b>Your Preferences have been Saved.</b></div><br>
					</TMPL_IF>
                         
						<TMPL_INCLUDE NAME=mobile_user_settings_prefs.tpl>

						<br>
						<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="USER">
			<TMPL_ELSE>
                <label for="user-prefs-select" style="display: none">Other user settings</label>
				<select id="user-prefs-select" class="unifont1" style="margin-top:8px;" name="CHOOSE_PREFS" onChange="send_event('MYACCOUNT/SHOW_PREFERENCES');">
					<option value="USER"<TMPL_IF SHOW_USER_PREFS> SELECTED</TMPL_IF>>Other User Settings</option>

					<TMPL_UNLESS COL>
						<option value="SUMMARY"<TMPL_IF SHOW_SUMMARY_PREFS> SELECTED</TMPL_IF>>Summary Report Options</option>
					</TMPL_UNLESS>

					<option value="PEOPLE_FINDER"<TMPL_IF SHOW_PEOPLE_FINDER_PREFS> SELECTED</TMPL_IF>>Finder Report Options</option>
					<option value="ASSET"<TMPL_IF SHOW_ASSET_PREFS> SELECTED</TMPL_IF>>Asset Report Options</option>
					<option value="COMPREHENSIVE"<TMPL_IF SHOW_COMPREHENSIVE_PREFS> SELECTED</TMPL_IF>>Comprehensive Report Options</option>
					<option value="COMP"<TMPL_IF SHOW_COMP_PREFS> SELECTED</TMPL_IF>>Custom Comprehensive Report Options</option>
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

					<TMPL_IF ENABLE_V2>
						<option value="SEXOFFENDER"<TMPL_IF SHOW_SEXOFFENDER_PREFS> SELECTED</TMPL_IF>>Sexual Offenders Search Options</option>
					</TMPL_IF>

					<TMPL_IF NAME="SHOW_JAILBOOKING_REPORT">
						<option value="JAILBOOKING"<TMPL_IF SHOW_JAILBOOKING_PREFS> SELECTED</TMPL_IF>>Jail Booking Report Options</option>
					</TMPL_IF>

					<TMPL_IF NAME="SHOW_COMBINED_PROPERTY_REPORT">
						<option value="COMBINED_PROPERTY"<TMPL_IF SHOW_COMBINED_PROPERTY_PREFS> SELECTED</TMPL_IF>>Property Report Options</option>
					<TMPL_ELSE>
						<option value="DEED"<TMPL_IF SHOW_DEED_PREFS> SELECTED</TMPL_IF>>Property Deeds Report Options</option>
						<option value="ASSESSMENT"<TMPL_IF SHOW_ASSESSMENT_PREFS> SELECTED</TMPL_IF>>Property Assessments Report Options</option>
					</TMPL_IF>

					<TMPL_IF HEA>
						<option value="PROVIDER"<TMPL_IF SHOW_PROVIDER_PREFS> SELECTED</TMPL_IF>>Provider License Report Options</option>
						<option value="SANCTION"<TMPL_IF SHOW_SANCTION_PREFS> SELECTED</TMPL_IF>>Provider Sanction Report Options</option>
					</TMPL_IF>
					<TMPL_IF GOV>
						<option value="PROVIDER"<TMPL_IF SHOW_PROVIDER_PREFS> SELECTED</TMPL_IF>>Provider License Report Options</option>
						<option value="SANCTION"<TMPL_IF SHOW_SANCTION_PREFS> SELECTED</TMPL_IF>>Provider Sanction Report Options</option>
					</TMPL_IF>
					<option value="NPI"<TMPL_IF SHOW_NPI_PREFS> SELECTED</TMPL_IF>>NPI Report Options</option>
					<option value="PROV_REPORT_CARD"<TMPL_IF SHOW_PROV_REPORT_CARD_PREFS> SELECTED</TMPL_IF>>Provider Report Card Options</option>

					<TMPL_IF NAME="SHOW_BUS_QUALIFIER_REPORT">
						<option value="BUS_QUALIFIER"<TMPL_IF SHOW_BUS_QUALIFIER_PREFS> SELECTED</TMPL_IF>>Custom Comprehensive Health Care Business Report Options</option>
					</TMPL_IF>

					<TMPL_IF NAME="SHOW_BUS_FR_QUALIFIER_REPORT">
						<option value="BUS_FR_QUALIFIER"<TMPL_IF SHOW_BUS_FR_QUALIFIER_PREFS> SELECTED</TMPL_IF>>Comprehensive Health Care Business Report Options</option>
					</TMPL_IF>

					<TMPL_IF NAME="SHOW_IND_QUALIFIER_REPORT">
						<option value="IND_QUALIFIER"<TMPL_IF SHOW_IND_QUALIFIER_PREFS> SELECTED</TMPL_IF>>Custom Comprehensive Health Care Provider Report Options</option>
					</TMPL_IF>

					<TMPL_IF NAME="SHOW_IND_FR_QUALIFIER_REPORT">
						<option value="IND_FR_QUALIFIER"<TMPL_IF SHOW_IND_FR_QUALIFIER_PREFS> SELECTED</TMPL_IF>>Comprehensive Health Care Provider Report Options</option>
					</TMPL_IF>

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
				</select>
                    
                    <TMPL_IF SAVEMSG>
                        <div><b>Your Preferences have been Saved.</b></div><br>
                    </TMPL_IF>

                    <TMPL_IF SHOW_BUS_PREFS>
                        <span class="myaccounttitle">Comprehensive Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=v3/report/short_bus_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BUS_INVIEW_PREFS>
                        <span class="myaccounttitle">Business Inview Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_bus_inview_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_INVIEW">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BUS_INVIEW_CRED_PREFS>
                        <span class="myaccounttitle">Business Inview Credit Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_bus_inview_cred_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_INVIEW_CRED">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_CRIM_PREFS>
                        <span class="myaccounttitle">Criminal Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="CRIM">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_JAILBOOKING_PREFS>
                        <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
                            <span class="myaccounttitle">Jail Booking Report Features<!-- <TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS> --></span>
                            <TMPL_INCLUDE NAME=short_jail_booking_report_body.tpl>
                            <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="JAILBOOKING">
                        </TMPL_UNLESS>
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_RT_PHONE_PREFS>
                        <span class="myaccounttitle">Real-Time Phone Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_rt_phone_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="RT_PHONE">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_ENTITLEMENTS_PREFS>
                        <span class="myaccounttitle">Entitlements Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_entitlem_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ENTITLEMENTS">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_CASE_CONNECT_PREFS>
                        <span class="myaccounttitle">Case Connect</span>
                        <TMPL_INCLUDE NAME=myaccount/case_connect/deconflict_prefs.tpl>
                        <input type="hidden" name="SHOW_PREFS" value="CASE_CONNECT"/>
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_CASE_CONNECT_DISCLAIMER>
                        <span class="myaccounttitle">Case Connect Disclaimer</span>
                        <TMPL_INCLUDE NAME=case_connect/disclaimer_prefs.tpl>
                        <input type="hidden" name="SHOW_PREFS" value="CASE_CONNECT"/>
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_DEED_PREFS>
                        <span class="myaccounttitle">Property Deeds Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="DEED">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_ASSESSMENT_PREFS>
                        <span class="myaccounttitle">Property Assessments Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSESSMENT">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_SEXOFFENDER_PREFS>
                        <span class="myaccounttitle">Sexual Offenders Search Options<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=sexpredator_settings_pref.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SEXOFFENDER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_COMBINED_PROPERTY_PREFS>
                        <span class="myaccounttitle">Property Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=report/short_combined_prop_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMBINED_PROPERTY">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BK_PREFS>
                        <span class="myaccounttitle">Bankruptcy Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BK">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_LIENS_PREFS>
                        <span class="myaccounttitle">Liens and Judgment Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="LIENS">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_MV_PREFS>
                        <span class="myaccounttitle">Motor Vehicle Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="MV">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_OTHER_PREFS>
                        <span class="myaccounttitle">Watercraft Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="OTHER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_ALSO_FOUND_PREFS>
                        <span class="myaccounttitle">We Also Found Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ALSO_FOUND">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_RESULTS_FOUND_PREFS>
                        <span class="myaccounttitle">Results Found Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="RESULTS_FOUND">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_ADDR_PREFS>
                        <span class="myaccounttitle">Address Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_addr_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ADDR">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_COMP_PREFS>
                        <span class="myaccounttitle">Custom Comprehensive Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMP">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_SUMMARY_PREFS>
                        <TMPL_INCLUDE NAME=report/short_summary_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SUMMARY">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_PEOPLE_FINDER_PREFS>
                        <TMPL_INCLUDE NAME=short_skiptrace_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PEOPLE_FINDER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_ASSET_PREFS>
                        <TMPL_INCLUDE NAME=short_asset_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="ASSET">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_PRE_LIT_PREFS>
                        <TMPL_INCLUDE NAME=short_pre_lit_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PRE_LIT">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_COMPREHENSIVE_PREFS>
                        <TMPL_INCLUDE NAME=short_comprehensive_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMPREHENSIVE">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_USER_PREFS>
                        <TMPL_INCLUDE NAME=myaccount/user_settings_prefs.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="USER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_PROVIDER_PREFS>
                        <span class="myaccounttitle">Provider License Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_provider_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PROVIDER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_SANCTION_PREFS>
                        <span class="myaccounttitle">Provider Sanction Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_sanction_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="SANCTION">
                    <TMPL_ELSE>
                    
                    <TMPL_IF SHOW_NPI_PREFS>
                        <span class="myaccounttitle">NPI Sanction Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_npi_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="NPI">
                    <TMPL_ELSE>
                    <TMPL_IF SHOW_PROV_REPORT_CARD_PREFS>
                        <span class="myaccounttitle">Provider Report Card Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_provider_card_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PROV_REPORT_CARD">
                    <TMPL_ELSE>
                    
                    <TMPL_IF SHOW_BUS_QUALIFIER_PREFS>
                        <span class="myaccounttitle">Custom Health Care Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_bus_qualifier_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_QUALIFIER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BUS_FR_QUALIFIER_PREFS>
                        <span class="myaccounttitle">Health Care Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_bus_qualifier_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_FR_QUALIFIER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_IND_QUALIFIER_PREFS>
                        <span class="myaccounttitle">Custom Comprehensive Provider Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_ind_qualifier_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="IND_QUALIFIER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_IND_FR_QUALIFIER_PREFS>
                        <span class="myaccounttitle">Comprehensive Provider Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_ind_fr_qualifier_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="IND_FR_QUALIFIER">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BUS_CREDIT_PREFS>
                        <span class="myaccounttitle">Business Credit Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_others_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_CREDIT">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_CONTACT_CARD_PREFS>
                        <span class="myaccounttitle">Contact Card Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_contact_card_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="CONTACT_CARD">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_BUS_CONTACT_CARD_PREFS>
                        <span class="myaccounttitle">Business Contact Card Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_bus_contact_card_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS_CONTACT_CARD">
                    <TMPL_ELSE>

                    <TMPL_IF SHOW_PHONE_HISTORY_PREFS>
                        <span class="myaccounttitle">Phone History Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
                        <TMPL_INCLUDE NAME=short_phone_history_report_body.tpl>
                        <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="PHONE_HISTORY">
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
                    </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                    </TMPL_IF>
                  </TMPL_IF>
                </div>

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
</div>

<!-- end myaccount_preferences.tpl -->
