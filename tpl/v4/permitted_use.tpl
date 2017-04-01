<!DOCTYPE html>
<html lang="en">
	<head>
		<!--<TMPL_VAR NAME=SERVER_ID>-->
		<TMPL_INCLUDE NAME="includes.tpl">
		<link href="<TMPL_VAR NAME='CSSPATH'>/permissible_styles.css" rel="stylesheet" type="text/css" media="screen" />
	</head>
	<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS>>
                <div id="perm_purpose_container">
		<div id="main" class="clear">  
			<header>
				<h1>
					<TMPL_IF AML>
						<img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
					<TMPL_ELSE>
						<img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
					</TMPL_IF>
				</h1>
			</header>
			<form name="GLB" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
				<TMPL_INCLUDE NAME="common_hidden_input.tpl">
				<input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
				<input type="hidden" name="EVENT" value="">
				<input type="hidden" name="CLOSE_WINDOW" value="0">
				<input type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
				<input type=hidden NAME="USER_IP" VALUE="<TMPL_VAR NAME=USER_IP>">
				<input type=hidden NAME="SHOW_DOWNGRADE" VALUE="<TMPL_VAR NAME=SHOW_DOWNGRADE>">
				<input type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
				<input type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
				<input type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">
				<input type=hidden NAME="WEB20_GLB_PURPOSE" value="<TMPL_VAR NAME="WEB20_GLB_PURPOSE_VALUE">">
				<input type=hidden NAME="WEB20_DPPA" value="<TMPL_VAR NAME="WEB20_DPPA_VALUE">">
				<TMPL_IF SHOW_DMF_PURPOSE>
					<input type=hidden NAME="WEB20_DMF_PURPOSE" VALUE="<TMPL_VAR NAME=WEB20_DMF_PURPOSE_VALUE>">
				<TMPL_ELSE>
					<input type=hidden NAME="WEB20_DMF_PURPOSE">
				</TMPL_IF>
				<input type=hidden NAME="SINGLE_TAB_VIEW" value="0">
				
				<h2>Terms For Use of Data</h2> 
				<p>
					You hereby agree to use these services in accordance with applicable law including the permissible 
					use selection and agree that failure to do so will be a breach of your agreement for this service. 
					Laws applicable to use of this product include the Drivers' Privacy Protection Act and related state laws (DPPA) 
					and the Gramm-Leach-Bliley Act (GLBA). The data regulated by the DPPA and the GLBA may be used only for the permissible 
					uses that you select below. By selecting a permissible use, you are certifying that the data returned to you will be used 
					only for that purpose. The data provided to you by use of this product may not be used as a factor in establishing a consumer's 
					eligibility for credit, insurance, employment or other purposes identified under the Fair Credit Reporting Act (FCRA).
				</p>   
				<strong class="font-em-1_2">Please complete the following steps:</strong>
				<div id="permissible_display">
					<div class="table-display">
						<div class="row">
							<div class="cell">
								<span class="number-wrapper inline-block-display">
									<span class="number">1</span>
								</span>
								<label class="inline-block-display" for="DPPA">
									<TMPL_IF DISABLE_DPPA_LOOKUP>
									**NOTE: The Admin on this account has preselected Permissible Uses for all users. DPPA
									<TMPL_ELSE>
									  <TMPL_IF SHOW_DPPA_WARNING>
									    **NOTE: The Admin on this account has preselected an invald Permissible Use. DPPA
									  <TMPL_ELSE>
									Choose a default DPPA Use:
									  </TMPL_IF> 
									</TMPL_IF>
									<strong class="textRed">* </strong>
								</label>
							</div>
							<div class="col-7 cell">
								<select name="DPPA" id="DPPA" <TMPL_IF DISABLE_DPPA_LOOKUP>disabled</TMPL_IF>>
									<option value="S">Please select one of the following:</option>
									<TMPL_LOOP WEB20_DPPA_LOOP>
										<option value="<TMPL_VAR NAME="DPPA_PURPOSE">" <TMPL_IF DPPA_PURPOSE_SELECTED>selected="selected"</TMPL_IF> data-web20-dppa="<TMPL_VAR NAME="WEB20_DPPA_PURPOSE">"><TMPL_VAR NAME="DPPA_DESC"></option>
									</TMPL_LOOP>
								</select>
								<br/>
								<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','DPPA','700','450',0,0,0,1,1,0,'','dppa'); return false;">DPPA Full Definitions</a>
							</div>
						</div>
						<div class="row">
							<div class="cell">
								<span class="number-wrapper inline-block-display">
									<span class="number">2</span>
								</span>
								<label class="inline-block-display" for="GLB_PURPOSE">
									<TMPL_IF DISABLE_GLB_LOOKUP>
									**NOTE: The Admin on this account has preselected Permissible Uses for all users. GLBA
									<TMPL_ELSE>
									  <TMPL_IF SHOW_GLB_WARNING>
									    **NOTE: The Admin on this account has preselected an invald Permissible Use. GLBA
									  <TMPL_ELSE>
									Choose a default GLBA Use:
									  </TMPL_IF>
									</TMPL_IF>
									<strong class="textRed">* </strong>
								</label>
							</div>
							<div class="col-7 cell">
								<select name="GLB_PURPOSE" id="GLB_PURPOSE" <TMPL_IF DISABLE_GLB_LOOKUP>disabled</TMPL_IF>>
									<option value="S">Please select one of the following:</option>
									<TMPL_LOOP WEB20_GLB_LOOP>
										<option value="<TMPL_VAR NAME="GLB_PURPOSE">" <TMPL_IF GLB_PURPOSE_SELECTED>selected="selected"</TMPL_IF> data-web20-glb="<TMPL_VAR NAME="WEB20_GLB_PURPOSE">"><TMPL_VAR NAME="GLB_DESC"></option>
									</TMPL_LOOP>
								</select>
								<br/>
								<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','GLBA','700','450',0,0,0,1,1,0,'','glb'); return false;">GLBA Full Definitions</a>
							</div>
						</div>
						<TMPL_IF SHOW_DMF_PURPOSE>
							<div class="row">
								<div class="cell">
									<span class="number-wrapper inline-block-display">
										<span class="number">3</span>
									</span>
									<label class="inline-block-display" for="DMF_PURPOSE">
										<TMPL_IF DISABLE_DMF_LOOKUP>
										**NOTE: The Admin on this account has preselected Permissible Uses for all users. DMF
										<TMPL_ELSE>
										  <TMPL_IF SHOW_DPPA_WARNING>
										    **NOTE: The Admin on this account has preselected an invald Permissible Use. DMF
										  <TMPL_ELSE>
										Choose a default DMF Use:
										  </TMPL_IF>
										</TMPL_IF>
										<strong class="textRed">* </strong>
									</label>
								</div>
								<div class="col-7 cell">
									<select name="DMF_PURPOSE" id="DMF_PURPOSE" <TMPL_IF DISABLE_DMF_LOOKUP>disabled</TMPL_IF>>
										<option value="S">Please select one of the following:</option>
										<TMPL_IF NAME=DMF_PURPOSE_LEVEL_10>
											<option value="10" <TMPL_IF DMF_PURPOSE_LEVEL_10_SELECTED>selected="selected"</TMPL_IF> >Fraud Prevention Interest</option>
										</TMPL_IF>
										<TMPL_IF NAME=DMF_PURPOSE_LEVEL_01>
											<option value="01" <TMPL_IF DMF_PURPOSE_LEVEL_01_SELECTED>selected="selected"</TMPL_IF> >Business Purpose</option>
										</TMPL_IF>
									</select>
									<br />
									<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','DMF','700','450',0,0,0,1,1,0,'','dmf'); return false;">DMF Full Definitions</a>
								</div>
							</div>
						</TMPL_IF>
					</div>
					<div class="row">
						<strong class="textRed">* </strong>
						<span>Mandatory selection.  The choice you make here will be your current permissible use for all searches.  Each search form has a link you can use to change your permissible use.</span>
					</div>
					<div class="row">
						<span class="number-wrapper inline-block-display">
							<TMPL_IF SHOW_DMF_PURPOSE>
								<span class="number">4</span>
							</TMPL_IF>
							<TMPL_UNLESS SHOW_DMF_PURPOSE>
								<span class="number">3</span>
							</TMPL_UNLESS>
						</span>
						<span>Review disclaimers for certain data, click <a href="#Provisions">here</a>.</span>
					</div>
					<div class="row">
						<span class="number-wrapper inline-block-display">
							<TMPL_IF SHOW_DMF_PURPOSE>
								<span class="number">5</span>
							</TMPL_IF>
							<TMPL_UNLESS SHOW_DMF_PURPOSE>
								<span class="number">4</span>
							</TMPL_UNLESS>
						</span>
						<span>Click Confirm to proceed.</span>
					</div>
				</div>

				<div class="confirm">
					<button type="submit" class="btn btn-danger" name="confirm_button">Confirm</button>
					<span class="terms">(Your Understanding of These Terms)</span>
				</div>

				<h3 id="Provisions" class="no-margin textRed font-em-1_3 font-bold">Other Provisions:</h3>
				<p>
					<strong>1. Michigan Department of Consumer and Industry Services, Corporation and Land Development Bureau</strong>
					<br />
					THIS DATA IS FOR INFORMATION PURPOSES ONLY. CERTIFICATION CAN
					ONLY BE OBTAINED THROUGH THE MICHIGAN DEPARTMENT OF CONSUMER
					AND INDUSTRY SERVICES, CORPORATION DIVISION.
				</p>
				<p>
					<strong>2. New York State, Department of State, Division of Corporations</strong>
					<br />
					The information provided by the Department of State, Division of Corporations is not an official record of the Department
					of State or the State of New York. LexisNexis is not an employee or agent of the Department of State or the State of New York. 
					The Department of State disclaims all warranties, express or implied, regarding the Corporations Data.
				</p> 
				<p>
					<strong>3. Dun &amp; Bradstreet</strong>
					<br />
					The Following data is for information purposes only and is not the official record. 
					Certified copies can only be obtained through the official sources.
				</p>
				<p>
					<strong>4. New York State Unified Court System</strong>
					<br />
					The New York State Unified Court System (&quot;UCS&quot;) does not warrant the comprehensiveness, completeness, accuracy or
					adequacy for any particular use or purpose of the information contained in its databases and expressly disclaims all other
					warranties, express or implied, as to any matter whatsoever. Neither the UCS, its courts, 
					court-related agencies or its officers or employees shall be responsible for any loss or 
					damage caused by the use of the information contained in any of its databases.
				</p>			  
				<p>
					<strong>5. Pennsylvania Department of State, Corporation Bureau</strong>
					<br />
					The following data is for informational purposes only and is not an official record. Certified copies may be obtained from
					the Pennsylvania Department of State.
				</p>				
				<p>
					<strong>6. California Secretary of State</strong>
					<br />
					THIS DATA IS FOR INFORMATION PURPOSES ONLY. CERTIFICATION CAN ONLY BE OBTAINED THROUGH THE SACRAMENTO OFFICE OF THE CALIFORNIA
					SECRETARY OF STATE.
				</p>				
				<p>
					<strong>7. Georgia Secretary of State</strong>
					<br />
					THIS DATA IS FOR INFORMATION PURPOSES ONLY; CERTIFICATION CAN ONLY BE OBTAINED THROUGH THE OFFICE OF THE GEORGIA SECRETARY OF STATE.
				</p>
				<div class="confirm">
					<button type="submit" class="btn btn-danger" name="confirm_button">Confirm</button>
					<span class="terms">(Your Understanding of These Terms)</span>
				</div>
			   
				<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
			</form> 
                    <script type="text/javascript">
                        $(function() {
                            var show_downgrade = $(this).find('[name="SHOW_DOWNGRADE"]').val();
                            if(show_downgrade) {
                                $('#show-downgrade-confirm-modal').modal('show');
                            }
                        });
                        $("form").on("submit", function(e) {
                            var dppa = $("#DPPA").find(":selected").data("web20-dppa"),<TMPL_IF SHOW_DMF_PURPOSE>
                            dmf = $("#DMF_PURPOSE").val(),
                            orig_dmf = $(this).find('[name="WEB20_DMF_PURPOSE"]').val(),</TMPL_IF>
                            glba = $("#GLB_PURPOSE").find(":selected").data("web20-glb");

                            if (!dppa) {
                                alert('Select a default DPPA Use.');
                                return false;
                            } else if (!glba) {
                                alert('Select a default GLBA Use.');
                                return false;<TMPL_IF SHOW_DMF_PURPOSE>
                            } else if (dmf === "S") {
                                alert('Select a default DMF Use.');
                                return false;</TMPL_IF>
                            }
                            var orig_dppa = $(this).find('[name="WEB20_DPPA"]').val(),
                                orig_glba = $(this).find('[name="WEB20_GLB_PURPOSE"]').val();
                            
                            $(this).find('[name="EVENT"]').val('SEARCH/SAVE_DPPA');
                            $(this).find('[name="WEB20_DPPA"]').val(dppa);
                            $(this).find('[name="WEB20_GLB_PURPOSE"]').val(glba);<TMPL_IF SHOW_DMF_PURPOSE>
                            $(this).find('[name="WEB20_DMF_PURPOSE"]').val(dmf);</TMPL_IF>
                            $(this).find('[name="SINGLE_TAB_VIEW"]').val(cookie_lookup('single-tab-view'));

                            <TMPL_IF CLOSE_WINDOW>
                            $(this).find('[name="CLOSE_WINDOW"]').val(1);
                            try {
                                var $row = $("#search-results-row");
                                var save_new_selection = 0;
                                if (dppa != orig_dppa || (dmf != undefined && (dmf != orig_dmf)) || glba != orig_glba) {
                                    save_new_selection = 1;
                                    if (dppa != orig_dppa) {
                                        dppa_value = get_web20_dppa(dppa);
                                    }
                                    if ( glba != orig_glba) {
                                        glb_purpose_value = get_web20_glb(glba);
                                    }
                                }

                                //if the results are hidden on the parent, then assume the search form is displayed.
                                if (!$row.length || $row.hasClass("hidden")) {
                                    //update opener values
                                    dppa_value = get_web20_dppa(dppa);
                                    glb_purpose_value = get_web20_glb(glba);
                                    <TMPL_IF SHOW_DMF_PURPOSE>
                                    dmf_purpose_value = get_web20_dmf(dmf);
                                    </TMPL_IF>

                                    //update ui (as needed)
                                    $("#glb_reason").html(get_web20_glb(glba));
                                    $("#dppa_reason").html(get_web20_dppa(dppa));<TMPL_IF SHOW_DMF_PURPOSE>
                                    $("#dmf_reason").html(get_web20_dmf(dmf));</TMPL_IF>

                                    if ($("#DPPA").val() != 1) {
                                        $("#dmv-search-purpose").addClass('hidden') ;
                                    } else {
                                        $("#dmv-search-purpose").removeClass('hidden') ;
                                    }
                                } else {
                                    if (save_new_selection == 1) {
                                        alert('The permissible use selection shall take effect when a new search is executed.');
                                    } 
                                }
                                if (save_new_selection == 1) {
                                    $.ajax({
                                        data: $(this).serialize(),
                                        url: get_action('MISC'),
                                        type: "POST",
                                        success: function(resp) {
                                            close_permissible_modal();
                                        }
                                    });
                                } else {
                                    close_permissible_modal();
                                }
                                e.preventDefault();
                            } catch(exp) {}
                            </TMPL_IF>
                        });
                    </script>
                </div>
		<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">
      <div id="show-downgrade-confirm-modal" class="modal fade bs-example-modal-sm" aria-live="polite" role="dialog" aria-labelledby="singleTabViewConfirmModal" aria-hidden="true">
        <div class="modal-dialog trap">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class="close-icon"></span>
                        <span class="sr-only">Close</span>
                    </button>
                    <h2 class="modal-title">Downgraded Entitlements</h2>
                </div>
                <div class="modal-body">
                        <span>The IP Address (<TMPL_VAR NAME=USER_IP>) you are using to access this LexisNexis® application does not fall within the range of the IP addresses previously provided to us by your organization.<br><br>  You can continue to use this application, but sensitive data (e.g. SSNs, Driver License Numbers, Dates of Birth) will be masked.  </span>
                        <br><br><br/><hr/><br/>
                    <div style="text-align:center;">
                        <button class="btn btn-default" data-dismiss="modal" type="button">&nbsp;&nbsp;OK&nbsp;&nbsp;</button>
                    </div>
                </div>
            </div>
        </div>
      </div>
            </div>
	</body>
</html>
<!-- end v4/permitted_use.tpl-->

