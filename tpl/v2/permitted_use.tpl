<!-- begin permitted_use.tpl-->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
<head>
<title>Permitted Use Certification</title>
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script language="JavaScript">

function setchecked() {

    // only setting GLB for now.
    
    // dppa
    var dppa = document.getElementById("DPPA").value;
    if (dppa == "S") { alert('Select a default DPPA Use.'); return false; }

    // glba
    var glba = document.getElementById("GLB_PURPOSE").value;
    if (glba == "S") { alert('Select a default GLB Use.'); return false; }
    
    // event
    document.GLB.EVENT.value = 'SEARCH/SAVE_DPPA';
    <TMPL_IF CLOSE_WINDOW>
    document.GLB.CLOSE_WINDOW.value = 1;
    try {
        opener.document.getElementById("glb_reason").innerHTML = get_glb(glba);
        opener.document.getElementById("dppa_reason").innerHTML = get_dppa(dppa);
    } catch(exp) {/* */}
    </TMPL_IF>
    
    // submit form
    document.forms[0].submit();

}
</script>
<body <TMPL_UNLESS VERIFY_PASSWORD>onLoad="window.focus();"</TMPL_UNLESS> topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody_v2">
<div id="hd">
  <h2>LexisNexis Contact &amp; Locate for Collections</h2>
</div>

<form name="GLB" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="CLOSE_WINDOW" value="0">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
    <INPUT type=hidden NAME="COURT_SEARCH_WIZARD" VALUE="<TMPL_VAR NAME=COURT_SEARCH_WIZARD>">
    <INPUT type=hidden NAME="MYACCTAB" VALUE="<TMPL_VAR NAME=MYACCTAB>">

<div id="wrapper">
    
	<table id="use_table">
	<tr>
	    <td>
	    <h3>Terms of Use for Data</h3>
            <br/>
            <p class="text11">
		You hereby agree to use these services in accordance with applicable law including the permissible use selection and agree that failure to do so will be a breach of your agreement for this service. Laws applicable to use of this product include the Drivers' Privacy Protection Act and related state laws (DPPA) and the Gramm-Leach-Bliley Act (GLB). The data regulated by the DPPA and the GLB may be used only for the permissible uses that you select. By selecting a permissible use, you are certifying that the data returned to you will be used only for that purpose. The data provided to you by use of this product may not be used as a factor in establishing a consumer's eligibility for credit, insurance, employment or another purpose identified under the Fair Credit Reporting Act (FCRA).
            </p>
            
            <br/>
            
            <p>
		<strong>Please complete the following steps:</strong>
            </p>
            
            <table class="use_choice" width="100%">
		<tr>
		<td class="label_use1" valign="top"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_1.gif" width="22" height="22" /></td>
                <td class="label_use2">
		    <table id="noborder">
		    <tr>
		      <td class="text12" valign="top">
			<strong>Choose a default DPPA Use</strong>:<font color="#ed1c24"><strong>*</strong></font>
                      </td>
                      <td class="text12" valign="top">
			<select name="DPPA" id="DPPA">
                          <option value="S">Select One</option>
                        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_01>
			  <option value="1">Court, Law Enforcement, or Government Agencies</option>
			</TMPL_IF>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_02>
			  <option value="2">Motor Vehicle Safety or Theft</option>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_03>
			  <option value="3">Use in the Normal Course of Business</option>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_04>
			  <option value="4">Civil, Criminal, Administrative, or Arbitral Proceedings</option>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_05>
			  <option value="5">Commercial Driver's License</option>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_06>
			  <option value="6">Insurance</option>
			</TMPL_IF>
                        <TMPL_IF NAME=DPPA_PURPOSE_LEVEL_07>
			  <option value="7">License Private Investigative or Security Services</option>
			</TMPL_IF>
                          <option value="8">I Have No Permissible Purpose</option>
                        </select><br />
                        <a class="text11" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/tcol/dppa.html','DPPA','','',0,0,0,1,1,0);">Full Definitions</a>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
              <tr>
		<td class="label_use1" valign="top"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_2.gif" width="22" height="22" /></td>
                <td class="label_use2">
		    <table id="noborder">
		    <tr>
                      <td class="text12" valign="top">
			<strong>Choose a default GLB Use</strong>:<font color="#ed1c24"><strong>*</strong></font>
                      </td>
                      <td class="text12" valign="top">
			<select name="GLB_PURPOSE" id="GLB_PURPOSE">
                          <option value="S">Select One</option>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_01>
			  <option value="1">Transactions Authorized by Consumer</option>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_11>
			  <option value="11">Transactions Authorized by Consumer (Application Verification Only)</option>
			</TMPL_IF>
                        <TMPL_IF NAME="GLB_DPPA_LAW_ENFORCEMENT_ALLOWED">
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_02>
			  <option value="2">Law Enforcement Purposes</option>
			</TMPL_IF>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_03>
			  <option value="3">Persons Holding a Legal or Beneficial Interest Relating to the Consumer</option>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_12>
			  <option value="12">Persons Acting in a Fiduciary Capacity on Behalf of the Consumer</option>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_05>
			  <option value="5">Fraud Prevention or Detection</option>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_06>
			  <option value="6">Required Institutional Risk Control</option>
			</TMPL_IF>
                        <TMPL_IF NAME=GLB_PURPOSE_LEVEL_07>
			  <option value="7">Legal Compliance</option>
			</TMPL_IF>
                          <option value="0">I Have No Permissible Purpose</option>
                        </select><br />
                        <a class="text11" href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HTMLPATH>/tcol/glb.html','GLB','','',0,0,0,1,1,0);">Full Definitions</a>
                      </td>
                    </tr>
                  </table>
                </td>
              </tr>
            </table>
            <br/>
            <p>
		<font color="#ed1c24"><strong>*</strong></font> Mandatory selection.  The choice you make here will be your current permissible use for all searches.  Each search form has a link you can use to change your permissible use.
            </p>
            <br/>
            <table class="use_choice" width="100%">
              <tr>
		<td class="label_use1" valign="top"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_3.gif" width="22" height="22" /></td>
                <td class="label_use2"><p class="text12">Review disclaimers for certain data, click <a href="#Provisions">here</a>.</p></td>
              </tr>
              <tr>
		<td class="label_use1" valign="top"><img src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>/ico_4.gif" width="22" height="22" /></td>
                <td class="label_use2"><p class="text12">Press Confirm to proceed</p></td>
              </tr>
            </table>
            
            <table>
              <tr>
                <td id="angleleft"></td>
                <td valign="bottom" class="text12"><!-- button allows users to submit with click or by hitting enter -->
                  <div align="center">
                    <input type="button" class="confirmButton" name="confirm_button" value="Confirm" onClick="setchecked();"><br />
                    <span class="text10">(Your Understanding of These Terms)</span>
                  </div>
                </td>
                <td id="angleright"></td>
              </tr>
            </table>
            
            <br/>
            
            <p>
		<!--start Other Provisions Text-->
              <div class="text11">
                <p><strong><font color="#155b8d">Other Provisions:</font></strong><b><span class="blackheadSmaller"><a name="Provisions" id="Provisions"></a></span></b></p>
                
                <p><strong>1. Michigan Department of Consumer and Industry Services,
                Corporation and Land Development Bureau</strong><br />
                THIS DATA IS FOR INFORMATION PURPOSES ONLY. CERTIFICATION CAN
                ONLY BE OBTAINED THROUGH THE MICHIGAN DEPARTMENT OF CONSUMER
                AND INDUSTRY SERVICES, CORPORATION DIVISION.</p>
                
                <p><strong>2. New York State, Department of State, Division of Corporations</strong><br />
                The information provided by the Department of State, Division of Corporations is not an official record of the Department
                of State or the State of New York. LexisNexis is not an employee or agent of the Department of State or the State of New York. The Department of State disclaims all warranties, express or implied, regarding the Corporations Data.</p>
                
                <p><strong>3. Service Abstract Corporation</strong><br />
                The Provider of this information does not warrant the comprehensiveness, completeness, accuracy or adequacy for any particular use or purpose of the information contained in this database and expressly disclaims all warranties expressed or implied as to any matter whatsoever. Provider shall not be responsible for any loss or damage caused by the use of the information contained in any of its databases.</p>
                
                <p><strong>4. Dun &amp; Bradstreet</strong><br />
                The Following data is for information purposes only and is not the official record. Certified copies can only be obtained through the official sources.</p>
                <p><strong>5. Superior Information Services</strong><br />
                The Provider of this information does not warrant the comprehensiveness, completeness, accuracy or adequacy for any particular use or purpose of the information contained in this database and expressly disclaims all other warranties expressed or implied as to any matter whatsoever. Provider will not be responsible for any loss or damage caused by the use of the information contained
                in any of its databases.</p>
                
                <p><strong>6. Franchise Services, Inc. (d/b/a Frandata)</strong><br />
                The documents in this file were created from Franchisor - Franchisee records licensed to LexisNexis by FRANDATA CORPORATION. If you are interested in more detailed franchise information you may call FRANDATA at 1-800-793-8640. Please identify yourself as a user of the LexisNexis service.</p>
                
                <p><strong>7. New York State Unified Court System</strong><br />
                The New York State Unified Court System (&quot;UCS&quot;) does not warrant the comprehensiveness, completeness, accuracy or
                adequacy for any particular use or purpose of the information contained in its databases and expressly disclaims all other
                warranties, express or implied, as to any matter whatsoever. Neither the UCS, its courts, court-related agencies or its officers or employees shall be responsible for any loss or damage caused by the use of the information contained in any of its databases.</p>
                
                <p><strong>8. Pennsylvania Department of State, Corporation Bureau</strong><br />
                The following data is for informational purposes only and is not an official record. Certified copies may be obtained from
                the Pennsylvania Department of State.</p>
                
                <p><strong>9. California Secretary of State</strong><br />
                THIS DATA IS FOR INFORMATION PURPOSES ONLY. CERTIFICATION CAN ONLY BE OBTAINED THROUGH THE SACRAMENTO OFFICE OF THE CALIFORNIA
                SECRETARY OF STATE.</p>
                
                <p><strong>10. Georgia Secretary of State<br />
                </strong>THIS DATA IS FOR INFORMATION PURPOSES ONLY; CERTIFICATION CAN ONLY BE OBTAINED THROUGH THE OFFICE OF THE GEORGIA SECRETARY OF STATE.</p>
              
              </div>
              <!--End Other Provisions Text-->

            </p>
            
            <br/>
            
            <div class="use_notice">
		Contact &amp; Locate Solutions are provided by LexisNexis Risk Solutions FL Inc. Contact &amp; Locate solutions are not provided by "consumer reporting agencies," as that term is defined in the Fair Credit Reporting Act (15 U.S.C. &sect; 1681, et seq.) ("FCRA") and do not constitute "consumer reports," as that term is defined in the FCRA. Contact &amp; Locate solutions may not be used in whole or in part as a factor in determining eligibility for credit, insurance, employment or another purpose in connection with which a consumer report may be used under the FCRA.
            </p>
            
          </td>
        </tr>
      </table>

    </div>
    <!-- END wrapper DIV -->

</div>
<TMPL_INCLUDE NAME="verify_password_trigger.tpl">
</form> 

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end permitted_use.tpl-->

