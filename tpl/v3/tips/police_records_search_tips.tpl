<!-- begin tips/police_records_search_tips.tpl -->
        <br/>
        <TMPL_IF NAME="POLICE_RECORDS_ALL_VEHICLES_SEARCH">
	  <h2>Police Records All Registered Vehicles at Household Search Tips</h2>
        <TMPL_ELSE>
          <TMPL_IF NAME="POLICE_RECORDS__SEARCH">
	    <h2>Police Records Arrest Report Search Tips</h2>
          <TMPL_ELSE>
            <TMPL_IF NAME="POLICE_RECORDS_AUTOPSY_SEARCH">
	      <h2>Police Records Autopsy/Coroner Search Tips</h2>
            <TMPL_ELSE>
              <TMPL_IF NAME="POLICE_RECORDS_ARREST_RECORD_SEARCH">
	        <h2>Police Records Arrest Report Search Tips</h2>
              <TMPL_ELSE>
                <TMPL_IF NAME="POLICE_RECORDS_CITATION_SEARCH">
	          <h2>Police Records Citation/Conviction Report Search Tips</h2>
                  <TMPL_ELSE>
                    <TMPL_IF NAME="POLICE_RECORDS_ISSUE_LETTER_SEARCH">
	              <h2>Police Records Issue Letter Interest Search Tips</h2>
                    <TMPL_ELSE>
                      <TMPL_IF NAME="POLICE_RECORDS_RECONSTRUCTION_SEARCH">
	                <h2>Police Records Reconstruction Report Search Tips</h2>
                      <TMPL_ELSE>
                        <TMPL_IF NAME="POLICE_RECORDS_RECONSTRUCTION_SEARCH">
	                  <h2>Police Records Reconstruction Report Search Tips</h2>
                        <TMPL_ELSE>
                          <TMPL_IF NAME="POLICE_RECORDS_REGISTERED_VEHICLE_SEARCH">
	                    <h2>Police Records Registered Vehicle Owner/Tag/VIN Check Search Tips</h2>
                          <TMPL_ELSE>
                            <TMPL_IF NAME="POLICE_RECORDS_BURGLARY_SEARCH">
	                      <h2>Police Records Theft Burglary Search Tips</h2>
                            <TMPL_ELSE>
                              <TMPL_IF NAME="POLICE_RECORDS_TOXICOLOGY_SEARCH">
	                        <h2>Police Records Toxicology Report Search Tips</h2>
                              <TMPL_ELSE>
	                        <h2><TMPL_VAR NAME="PAGE_TITLE"> Tips</h2>
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
	<p><strong>LexisNexis Police Record Retrieval services help carriers reconcile claims by comparing report details with accident descriptions or policy information on file to help determine if a claim payment is necessary, determine the extent of liability and provide details that may be unknown or forgotten by the policyholder or claimant.</strong></p>
	<p>&nbsp;</p>
        <p>Police Record Retrieval, including Accident Reports is now available on LexisNexis<sup>&reg;</sup> Accurint<sup>&reg;</sup> for <TMPL_IF NAME="INS">Insurance</TMPL_IF><TMPL_IF NAME="LEG">Legal Professionals</TMPL_IF> giving you the ability to order and receive a broad range of reports including:</p>
	<p>&nbsp;</p>
	<p><b>Auto Accident</b></p>
	<TMPL_IF NAME="INS">
	<p><b>Auto Theft</b></p>
	<p><b>Building Fire</b></p>
	<p><b>Theft Burglary</b></p>
	<p><b>Vandalism</b></p>
    </TMPL_IF><TMPL_IF NAME="LEG">
    <p><b>Arrest Report</b></p>
    <p><b>Birth Certificate</b></p>
    <p><b>D.U.I. Report</b></p>
    <p><b>Homicide Report</b></p>
    <p><b>Death Certificate</b></p>
    </TMPL_IF>
        <p>&nbsp;</p>
	<p>Use the Select Report dropdown to navigate between Police Records input forms.</p>
        <p>&nbsp;</p>
	<p>Please refer to the individual search input form for required fields, listed at the top of the input form and also indicated with a <font color="red">*</font>. You must enter information in the required fields.</p>
        <p>&nbsp;</p>
	<p>The Agency Name field will automatically suggest valid agency names based on the State or State and County information.</p>
	<p>&nbsp;</p>
	<p>State and License State label links can be used to assist in finding valid State and Canadian Province information to be entered into a form.</p>
	<p>&nbsp;</p>
	<p>Please see the <a style="cursor: help;" href="javascript:void(0);" onClick="open_help('police_records_help.html');"><u><b>Help Page</b></u></a> for much more information on how to best utilize this powerful report.</p>
	<p>&nbsp;</p>
	<p>&nbsp;</p>
<!- end tips/police_records_search_tips.tpl -->
