<TMPL_IF RSKAD>
   <TMPL_INCLUDE NAME="manage_account_mfa_background_rskad.tpl">
<TMPL_ELSE>
   <!-- begin v4/manage_account_mfa_background.tpl-->
      <link href="<TMPL_VAR NAME='CSSPATH'>/permissible_styles.css" rel="stylesheet" type="text/css" media="screen" />

			<div id="main" class="clear">  
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
					<div class="row">
						<span class="col-0_25 inline-block-display">
							<span class="number">1</span>
						</span>
						<label class="col-2 inline-block-display" for="DPPA">
							Choose a default DPPA Use:
							<strong class="textRed">* </strong>
						</label>
						<div class="inline-block-display">
							<select name="DPPA" id="DPPA" <TMPL_IF DISABLE_DPPA_LOOKUP>disabled</TMPL_IF>>
                        		<option value="S">Please select one of the following:</option>
                        		<TMPL_LOOP WEB20_DPPA_LOOP>
                        	   		<option value="<TMPL_VAR NAME="DPPA_PURPOSE">" <TMPL_IF DPPA_PURPOSE_SELECTED>selected="selected"</TMPL_IF> data-web20-dppa="<TMPL_VAR NAME="WEB20_DPPA_PURPOSE">"><TMPL_VAR NAME="DPPA_DESC"></option>
                        		</TMPL_LOOP>
                    		</select>
                    		<br/>
                    		<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','DPPA','700','450',0,0,0,1,1,0,'','dppa'); return false;">Full Definitions</a>
						</div>
					</div>
					<div class="row">
						<span class="col-0_25 inline-block-display">
							<span class="number">2</span>
						</span>
						<label class="col-2 inline-block-display" for="GLB_PURPOSE">
							Choose a default GLBA Use:
							<strong class="textRed">* </strong>
						</label>
						<div class="inline-block-display">
							<select name="GLB_PURPOSE" id="GLB_PURPOSE" <TMPL_IF DISABLE_GLB_LOOKUP>disabled</TMPL_IF>>
                        		<option value="S">Please select one of the following:</option>
                        		<TMPL_LOOP WEB20_GLB_LOOP>
                            		<option value="<TMPL_VAR NAME="GLB_PURPOSE">" <TMPL_IF GLB_PURPOSE_SELECTED>selected="selected"</TMPL_IF> data-web20-glb="<TMPL_VAR NAME="WEB20_GLB_PURPOSE">"><TMPL_VAR NAME="GLB_DESC"></option>
                        		</TMPL_LOOP>
                    		</select>
                    		<br/>
                    		<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','GLBA','700','450',0,0,0,1,1,0,'','glb'); return false;">Full Definitions</a>
						</div>
					</div>
					<TMPL_IF SHOW_DMF_PURPOSE>
						<div class="row">
							<span class="col-0_25 inline-block-display">
								<span class="number">3</span>
							</span>
							<label class="col-2 inline-block-display" for="">
								Choose a default DMF Use:
								<strong class="textRed">* </strong>
							</label>
							<div class="inline-block-display">
								<select name="DMF_PURPOSE" id="DMF_PURPOSE" <TMPL_IF DISABLE_DMF_LOOKUP>disabled</TMPL_IF>>
                            		<option value="S">Please Select One of the Following:</option>
                            		<TMPL_IF NAME=DMF_PURPOSE_LEVEL_10>
                            		    <option value="10" <TMPL_IF DMF_PURPOSE_LEVEL_10_SELECTED>selected="selected"</TMPL_IF> >Fraud Prevention Interest</option>
                            		</TMPL_IF>
                            		<TMPL_IF NAME=DMF_PURPOSE_LEVEL_01>
                            		    <option value="01" <TMPL_IF DMF_PURPOSE_LEVEL_01_SELECTED>selected="selected"</TMPL_IF> >Business Purpose</option>
                            		</TMPL_IF>
                        		</select>
                        		<br />
                        		<!--  TODO: Need html file for DMF definitions -->
                        		<a class="font-10 inline-block-display top-spacing-5" href="#" onClick="javascript:show_post_popup('LOGIN/SHOW_POPUP','DMF','700','450',0,0,0,1,1,0,'','dmf'); return false;">Full Definitions</a>
							</div>
						</div>
					</TMPL_IF>
					<div class="row">
						<strong class="textRed">* </strong>
						<span>Mandatory selection.  The choice you make here will be your current permissible use for all searches.  Each search form has a link you can use to change your permissible use.</span>
					</div>
					<div class="row">
						<span class="col-0_25 inline-block-display">
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
						<span class="col-0_25 inline-block-display">
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
					<button type="button" class="btn btn-danger" name="confirm_button" onClick="setchecked();">Confirm</button>
					<span class="terms">(Your Understanding of These Terms)</span>
				</div>

				<h3 name="Provisions" id="Provisions" class="no-margin textRed font-em-1_3 font-bold">Other Provisions:</h3>
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
					<button type="button" class="btn btn-danger" name="confirm_button" onClick="setchecked();">Confirm</button>
					<span class="terms">(Your Understanding of These Terms)</span>
				</div>
			</div>
<!-- end v4/manage_account_mfa_background.tpl-->
</TMPL_IF>
