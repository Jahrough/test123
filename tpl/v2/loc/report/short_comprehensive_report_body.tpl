<!-- Begin short_comprehensive_report_body.tpl -->

  <table width="740" align="center" cellpadding="2" border="0" cellspacing="4" style="background-color:#F4F0DE; border: solid #ccc 1px;">

<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="4"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="10">
    <td height="10" colspan="4">&nbsp;</td>
  </tr>

    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
	    <TMPL_IF LE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>></td>
	        <td  align="left" class="medblack"><label for="report-map">&nbsp;Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>></td>
	        <td align="left" class="medblack"><label for="address-map">&nbsp;Address Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="relative-map" value="10" <TMPL_VAR NAME=relative-map>></td>
	        <td align="left" class="medblack"><label for="relative-map">&nbsp;Relative Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>></td>
	        <td align="left" class="medblack"><label for="imposters">&nbsp;Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>></td>
	        <td align="left" class="medblack"><label for="verify-ssns">&nbsp;Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>></td>
	        <td align="left" class="medblack"><label for="census-data">&nbsp;Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%"><input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>></td>
	        <td align="left" class="medblack"><label for="processed-header">&nbsp;Include Company Header</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	    <TMPL_ELSE>
	      <tr>
	        <td width="1%"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
	        <td align="left" class="medblack"><label for="summary-report-table">&nbsp;Summary Report</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>>&nbsp;<label for="report-map">&nbsp;Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>&nbsp;<label for="address-map">&nbsp;Address Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>>&nbsp;<label for="relative-map">&nbsp;Relative Summary</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">&nbsp;Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">&nbsp;Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="census-data" id="census-data" value="5" <TMPL_VAR NAME=census-data>>&nbsp;<label for="census-data">&nbsp;Neighborhood Profile (2010 Census)</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td align="left" class="medblack">&nbsp;<input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">&nbsp;Include Company Header</label>&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>
	      </TMPL_IF>

	      <tr>
		<TMPL_IF DISABLE_ASSESSMENT>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_ASSESSMENT>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>	
		<TMPL_IF DISABLE_DEEDS>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small"><TMPL_UNLESS DELETE_DEEDS>&nbsp;Properties&nbsp;(disabled)&nbsp;</TMPL_UNLESS></td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>	
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td align="left" class="medblack"><label for="property">&nbsp;Properties</label>&nbsp;&nbsp;</td>
			<td align="right" class="medblack">&nbsp;</td>
		</TMPL_IF>
		</TMPL_IF>
	      </tr>
	      
          </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">

	      <tr>
	        <td width="1%"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates> ></td>
	        <td align="left" class="medblack"><label for="associates">&nbsp;Associates</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </tr>

	      <TMPL_UNLESS DELETE_UCC>
	      <tr>
	      <TMPL_IF DISABLE_UCC>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;UCC Filings&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="uccs" id="uccs" value="1" <TMPL_VAR NAME="uccs"> ></td>
			<td align="left" class="medblack"><label for="uccs">&nbsp;UCC Filings</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_CRIM>
	      <tr>
	      <TMPL_IF DISABLE_CRIM>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Possible Criminal Records&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="criminal-records" id="criminal-records" value="1" <TMPL_VAR NAME="criminal-records"> ></td>
			<td align="left" class="medblack"><label for="criminal-records">&nbsp;Possible Criminal Records</label></td>
			<td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_SEXPREDATOR>
              <tr>
              <TMPL_IF DISABLE_SEXPREDATOR>
                <td width="1%">&nbsp;</td>
                        <td align="left" class="disabled_small">&nbsp;Sexual Offenses&nbsp;(disabled)&nbsp;</td>
                        <td align="right" class="disabled_small">&nbsp;</td>
              <TMPL_ELSE>
                <td width="1%"><input type="checkbox" name="sexpredator" id="sexpredator" value="1" <TMPL_VAR NAME="sexpredator"> ></td>
                        <td align="left" class="medblack"><label for="sexpredator">&nbsp;Sexual Offenses</label></td>
                        <td align="right" class="medblack">&nbsp;</td>
              </TMPL_IF>
              </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_VOTER_REGISTRATION>
	      <tr>
	      <TMPL_IF DISABLE_VOTER_REGISTRATION>
	        <td width="1%">&nbsp;</td>
			<td align="left" class="disabled_small">&nbsp;Voter Registrations&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations> ></td>
	        <td align="left" class="medblack"><label for="voter-registrations">&nbsp;Voter Registrations</label>&nbsp;&nbsp;</td>
	        <td align="right" class="medblack">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_IF NAME="TABLE_BORDERS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="table-borders" id="table-borders" value="4" <TMPL_VAR NAME=table-borders> ></td>
		    <td align="left" class="medblack"><label for="table-borders">&nbsp;Display table borders on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="medblack">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
	      <TMPL_IF NAME="ICONS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="section-icons" id="section-icons" value="4" <TMPL_VAR NAME=section-icons> ></td>
		    <td align="left" class="medblack"><label for="section-icons">&nbsp;Display icons on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="medblack">&nbsp;</td>
		  </tr>
	      </TMPL_IF>

          </table>
      </td>
    </tr>


    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors> ></td>
		    <td align="left" class="medblack"><label for="neighbors">&nbsp;Neighbors</label></td>
		  </tr>
		  <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    Include Neighbors for
		    <select name="neighborhood-count">
		    <option value="1"<TMPL_IF NAME="neighborhood-count-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="neighborhood-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighborhood-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighborhood-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighborhood-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighborhood-count-6"> SELECTED</TMPL_IF>>6</option>
		    <option value="7"<TMPL_IF NAME="neighborhood-count-7"> SELECTED</TMPL_IF>>7</option>
		    <option value="8"<TMPL_IF NAME="neighborhood-count-8"> SELECTED</TMPL_IF>>8</option>
		    <option value="9"<TMPL_IF NAME="neighborhood-count-9"> SELECTED</TMPL_IF>>9</option>
		    <option value="10"<TMPL_IF NAME="neighborhood-count-10"> SELECTED</TMPL_IF>>10</option>
		    </select> Address(es) 
		    </td>
		   </tr>
		   <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    Include
		    <select name="neighbor-count">
		    <option value="2"<TMPL_IF NAME="neighbor-count-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="neighbor-count-3"> SELECTED</TMPL_IF>>3</option>
		    <option value="4"<TMPL_IF NAME="neighbor-count-4"> SELECTED</TMPL_IF>>4</option>
		    <option value="5"<TMPL_IF NAME="neighbor-count-5"> SELECTED</TMPL_IF>>5</option>
		    <option value="6"<TMPL_IF NAME="neighbor-count-6"> SELECTED</TMPL_IF>>6</option>
		    </select>
		    Neighbors for each Address
		    </td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td align="left" class="medblack"><label for="relatives">&nbsp;Relatives</label></td>
		  </tr>
		  <tr>
                    <td>&nbsp;</td>
		    <td align="left" class="smallblack">
		    <select name="relative-depth">
		    <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
		    </select>
		    Degrees of Separation
		    </td>
		  </tr>
	  </table>
      </td>
   </tr>


    <tr>
      <td colspan="3" valign="top"><div id="lineVertRedDot"></div></td>
    </tr>


    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td align="left" class="medblack"><b>Select Report Type:&nbsp;</b></td>
		    <td>
		    <select name="report-format">
		    <option value="html"<TMPL_IF NAME="report-format-html"> SELECTED</TMPL_IF>>Interactive Web Page</option>
		    <option value="text"<TMPL_IF NAME="report-format-text"> SELECTED</TMPL_IF>>Plain Text Web Page</option>
		    <option value="word"<TMPL_IF NAME="report-format-word"> SELECTED</TMPL_IF>>Microsoft Word Document</option>
		    <option value="pdf"<TMPL_IF NAME="report-format-pdf"> SELECTED</TMPL_IF>>PDF Document</option>
		    </select>
		    </td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top"></td>
   </tr>


    <tr>
      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt> ></td>
		    <td align="left" class="medblack"><label for="prompt">&nbsp;Prompt me for these options for each report.</label></td>
		  </tr>
	  </table>
      </td>

      <td></td>

      <td width="49%" valign="top">
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
                   <TMPL_IF NAME="ENABLE_SAVE_REPORT">
                      <TMPL_IF NAME="REPORT_MANAGER_OFF">
			    <td width="1%"  class="disabled_medblack"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> readonly onChange="this.checked = !this.checked"></td>
			    <td align="left" class="disabled_medblack"><label for="relatives">&nbsp;(Saving Reports currently not available).</td>
		      <TMPL_ELSE>
			    <td width="1%"><input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"> ></td>
			    <td align="left" class="medblack"><label for="save-report">&nbsp;Save report for later access.</label></td>
		      </TMPL_IF>
		   <TMPL_ELSE>
		   <td colspan="2"></td>
		   </TMPL_IF>

		    <!--<td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td align="left" class="medblack"><label for="relatives">&nbsp;Relatives</label></td>-->
		  </tr>
	  </table>
      </td>
   </tr>




</table>



<!-- End short_comprehensive_report_body.tpl -->

