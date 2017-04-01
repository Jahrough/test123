<!-- Begin lnp/short_comprehensive_report_body.tpl -->


<table border="0" cellpadding="0" cellspacing="0" width="640">
<TMPL_IF NAME="PREFERENCES_ERROR_MESSAGE">
  <tr>
    <td align="center" colspan="3"><TMPL_VAR NAME="PREFERENCES_ERROR_MESSAGE"></td>
  </tr>
</TMPL_IF>
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640"valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%" class="myaccountborder">
      <tr>
        <td valign="top">
	<table border="0" cellpadding="2" cellspacing="0" width="100%" class="reportselectbody">
	  <tr>
	    <td width="47%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
            <td colspan="2" align="left" class="medblack"><b>NON-FCRA Report Options:&nbsp;</b></td>
            <td align="right" class="medblack">&nbsp;</td>
            </tr>      
	      <tr>
	        <td width="1%"><input type="checkbox" name="summary-report-table" id="summary-report-table" value="10" <TMPL_VAR NAME=summary-report-table>></td>
	        <td class="smallfont1"><label for="summary-report-table">Summary Report</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="report-map" id="report-map" value="10" <TMPL_VAR NAME=report-map>>&nbsp;<label for="report-map">Comprehensive Report Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="address-map" id="address-map" value="10" <TMPL_VAR NAME=address-map>>&nbsp;<label for="address-map">Address Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
          <TMPL_IF SHOW_EDUCATION_DETAILS>
            <tr>
              <td width="1%">&nbsp;</td>
              <td align="left" class="smallfont1">&nbsp;<input type="checkbox" name="education-map" id="education-map" value="10" <TMPL_VAR NAME=education-map>>&nbsp;<label for="education-map">Possible Education</label>&nbsp;</td>
              <td align="right" class="smallfont1">&nbsp;</td>
            </tr>
         </TMPL_IF>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="relative-map" id="relative-map" value="10" <TMPL_VAR NAME=relative-map>>&nbsp;<label for="relative-map">Relative Summary</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="imposters" id="imposters" value="2" <TMPL_VAR NAME=imposters>>&nbsp;<label for="imposters">Others Using Same SSN</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="verify-ssns" id="verify-ssns" value="5" <TMPL_VAR NAME=verify-ssns>>&nbsp;<label for="verify-ssns">Date and Location where SSN Issued</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>
	      <tr>
	        <td width="1%">&nbsp;</td>
	        <td class="smallfont1">&nbsp;<input type="checkbox" name="processed-header" id="processed-header" value="5" <TMPL_VAR NAME=processed-header>>&nbsp;<label for="processed-header">Include Company Header</label>&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>


	      <TMPL_UNLESS DELETE_RT_MVR>
	      <tr>
		<TMPL_IF DISABLE_RT_MVR>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Motor Vehicle Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="motor-vehicles" id="motor-vehicles" value="1" <TMPL_VAR NAME=motor-vehicles> ></td>
			<td class="smallfont1"><label for="motor-vehicles">Include Motor Vehicle Locator</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
	      </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_REAL_PROPERTY>
	      <tr>
		<TMPL_IF DISABLE_REAL_PROPERTY>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Real Property Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
		<TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="property" id="property" value="11" <TMPL_VAR NAME=property> ></td>
			<td class="smallfont1"><label for="property">Real Property Locator</label>&nbsp;&nbsp;</td>
			<td align="right" class="smallfont1">&nbsp;</td>
		</TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <tr>
	        <td width="1%"><input type="checkbox" name="associates" id="associates" value="4" <TMPL_VAR NAME=associates> ></td>
	        <td class="smallfont1"><label for="associates">Associates</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </tr>

          <TMPL_IF DO_SHOW_PHONES_PLUS>
          <TMPL_UNLESS DELETE_CUSTOM_DA_WIRELESS>
              <tr>
          <TMPL_IF DISABLE_DA_WIRELESS>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Phones Plus&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
          <TMPL_ELSE>
                <td width="1%"><input type="checkbox" name="phones-plus" id="phones-plus" value="1" <TMPL_VAR NAME="phones-plus"> ></td>
                        <td align="left" class="smallfont1"><label for="phones-plus">&nbsp;Phones Plus</label>&nbsp;</td>
                        <td align="right" class="smallfont1">&nbsp;</td>
          </TMPL_IF>
              </tr>
              </TMPL_UNLESS>
          </TMPL_IF>

	      <TMPL_UNLESS DELETE_PAW>
	      <tr>
	      <TMPL_IF DISABLE_PAW>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">People at Work Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="people-at-work" id="people-at-work" value="4" <TMPL_VAR NAME=people-at-work> ></td>
	        <td class="smallfont1"><label for="people-at-work">People at Work Locator</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	    </table>
	    </td>
	    <td width="1%" nowrap class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
	    <td width="52%" valign="top">
	    <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr><td colspan="3">&nbsp;</td></tr>
     <TMPL_IF ENH_FLAT_RATE_COMP>
          <TMPL_UNLESS DELETE_CUSTOM_EMAIL>
          <TMPL_UNLESS DELETE_EMAIL>
          <tr>
        <TMPL_IF DISABLE_EMAIL>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Include Email Addresses&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%"><input type="checkbox" name="email" id="email" value="1" <TMPL_VAR NAME=email> ></td>
            <td align="left" class="smallfont1"><label for="email">&nbsp;Include Email Addresses</label></td>
            <td align="right" class="smallfont1">&nbsp;</td>
          </TMPL_IF>
          </tr>
          </TMPL_UNLESS>
          </TMPL_UNLESS>

          <TMPL_UNLESS DELETE_CUSTOM_JAILBOOKING>
             <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
         <TMPL_UNLESS DELETE_JAILBOOKING>
          <tr>
        <TMPL_UNLESS DISABLE_JAILBOOKING>
            <td width="1%"><input type="checkbox" name="jailbooking" id="jailbooking" value="1" <TMPL_VAR NAME=jailbooking> ></td>
            <td align="left" class="smallfont1"><label for="jailbooking">&nbsp;Include Jail Bookings</label></td>
            <td align="right" class="smallfont1">&nbsp;</td>
        <TMPL_ELSE>
            <td width="1%">&nbsp;</td>
            <td align="left" class="disabled_small">&nbsp;Include Jail Bookings&nbsp;(disabled)&nbsp;</td>
            <td align="right" class="disabled_small">&nbsp;</td>
        </TMPL_UNLESS>
          </tr>
          </TMPL_UNLESS>
              </TMPL_IF>
          </TMPL_UNLESS>
        </TMPL_IF>

	      <TMPL_UNLESS DELETE_UCC>
	      <tr>
	      <TMPL_IF DISABLE_UCC>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">UCC Filings&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="uccs" id="uccs" value="1" <TMPL_VAR NAME="uccs"> ></td>
			<td class="smallfont1"><label for="uccs">UCC Filings</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_PROF_LICENSE>
	      <tr>
	      <TMPL_IF DISABLE_PROF_LICENSE>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Professional Licenses&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="professional-licenses" id="professional-licenses" value="1" <TMPL_VAR NAME="professional-licenses"> ></td>
			<td class="smallfont1"><label for="professional-licenses">Professional Licenses</label>&nbsp;</td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_VOTER_REGISTRATION>
	      <tr>
	      <TMPL_IF DISABLE_VOTER_REGISTRATION>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Voter Registration Locator&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="voter-registrations" id="voter-registrations" value="4" <TMPL_VAR NAME=voter-registrations> ></td>
	        <td class="smallfont1"><label for="voter-registrations">Voter Registration Locator</label>&nbsp;&nbsp;</td>
	        <td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_UNLESS DELETE_DL>
	      <tr>
	      <TMPL_IF DISABLE_DL>
	        <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Driver Licenses Information&nbsp;(disabled)&nbsp;</td>
			<td align="right" class="disabled_small">&nbsp;</td>
	      <TMPL_ELSE>
	        <td width="1%"><input type="checkbox" name="driver-license" id="driver-license" value="1" <TMPL_VAR NAME=driver-license> ></td>
			<td class="smallfont1"><label for="driver-license">Include Driver Licenses Information</label></td>
			<td align="right" class="smallfont1">&nbsp;</td>
	      </TMPL_IF>
	      </tr>
              </TMPL_UNLESS>

	      <TMPL_IF INS>
	      <TMPL_UNLESS HIDE_RT_MVR>
	        <TMPL_UNLESS DELETE_RT_MVR>
	        <tr>
		  <TMPL_UNLESS DISABLE_RT_MVR>
		  <td width="1%"><input type="checkbox" id="rt-motor-vehicles" name="rt-motor-vehicles" value="1" <TMPL_VAR NAME="rt-motor-vehicles"> onClick="change_total(this, <TMPL_VAR NAME='rt-motor-vehicles-price'>,document.forms[0].REPORT_TOTAL,document.forms[0].REPORT_PRE_TOTAL)"></td>
			<td class="smallfont1"><label for="rt-motor-vehicles">Include Real-Time Vehicle(s) Registration</label>&nbsp;<img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"><img src="<TMPL_VAR NAME='IMGPATH'>/star.gif" border="0" width="11" height="10" alt="See Note Below Regarding Charges"></td>
			<td align="right" class="reportprices"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  <TMPL_ELSE>
		  <td width="1%">&nbsp;</td>
			<td class="disabled_small">Include Real-Time Vehicle(s) Registration (disabled)</td>
			<td align="right" class="disabled_small"><TMPL_UNLESS HIDE_PRICES>&nbsp;&nbsp;$<TMPL_VAR NAME="rt-motor-vehicles-price"></TMPL_UNLESS>&nbsp;</td>
		  </TMPL_UNLESS>
	        </tr>
	        </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_IF>


	      <TMPL_IF NAME="TABLE_BORDERS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="table-borders" id="table-borders" value="4" <TMPL_VAR NAME=table-borders> ></td>
		    <td class="smallfont1"><label for="table-borders">Display table borders on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
	      <TMPL_IF NAME="ICONS_OPTION">
		  <tr>
		    <td width="1%"><input type="checkbox" name="section-icons" id="section-icons" value="4" <TMPL_VAR NAME=section-icons> ></td>
		    <td class="smallfont1"><label for="section-icons">Display icons on report</label>&nbsp;&nbsp;</td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
	      </TMPL_IF>
          <tr><td colspan="3">&nbsp;</td></tr>
	  <tr>
	    <td valign="top" colspan="3">
	    <table border="1" cellpadding="0" cellspacing="0" width="100%">
	      <tr>
	        <td>
	        <table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="neighbors" id="neighbors" value="11" <TMPL_VAR NAME=neighbors> ></td>
		    <td class="smallfont1"><label for="neighbors">Neighbors</label></td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include Neighbors for
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
		    </select>
		    Address(es)
		    <br>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Include
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
              </tr>
            </table>
	    </td>
	  </tr>
	  <tr>
	    <td valign="top" colspan="3">
            <table border="1" cellpadding="0" cellspacing="0" width="100%">
              <tr>
	        <td>
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <tr>
		    <td width="1%"><input type="checkbox" name="relatives" id="relatives" value="8" <TMPL_VAR NAME=relatives>></td>
		    <td class="smallfont1"><label for="relatives">Relatives</label></td>
		    <td align="right" class="smallfont1">&nbsp;</td>
		  </tr>
		  <tr>
		    <td colspan="3" class="smallfont1">
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    <select name="relative-depth">
		    <option value="1"<TMPL_IF NAME="relative-depth-1"> SELECTED</TMPL_IF>>1</option>
		    <option value="2"<TMPL_IF NAME="relative-depth-2"> SELECTED</TMPL_IF>>2</option>
		    <option value="3"<TMPL_IF NAME="relative-depth-3"> SELECTED</TMPL_IF>>3</option>
		    </select>
		    Degrees of Separation
		    </td>
		  </tr>
		</table>
		<br>
		</td>
	      </tr>
            </table>
	    </td>
	  </tr>
	    </table>
	    </td>
	  </tr>
	</table>
        </td>
      </tr>
    </table>
    </td>
  </tr>
  <tr height="10">
    <td height="10" class="unifont2pt">&nbsp;</td>
  </tr>
  <tr>
    <td width="640" valign="top">
    <table border="0" cellpadding="2" cellspacing="0" width="100%">
      <tr>
	<td colspan="2" width="100%" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td nowrap class="smallfont1">Select Report Type:&nbsp;</td>
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
      </tr>
      <tr>
	<td width="50%" class="smallfont1" valign="top" align="left"><input type="checkbox" name="prompt" id="prompt" value="1" <TMPL_VAR NAME=prompt>><label for="prompt"> Prompt me for these options for each report.</label></td>
	<td width="50%" class="smallfont1" valign="top" align="left">
	  <TMPL_IF NAME="ENABLE_SAVE_REPORT">
	    <span<TMPL_IF NAME="REPORT_MANAGER_OFF"> class="disabled_item"</TMPL_IF>>
	      <input type="checkbox" name="save-report" id="save-report" value="1" <TMPL_VAR NAME="save-report"><TMPL_IF NAME="REPORT_MANAGER_OFF"> readonly onChange="this.checked = !this.checked"</TMPL_IF>>
		<label for="save-report">Save report for later access.</label>
	    </span>
	    <TMPL_IF NAME="REPORT_MANAGER_OFF">
	      &nbsp;(Saving Reports currently not available)
	    </TMPL_IF>
	  <TMPL_ELSE>&nbsp;</TMPL_IF>
	</td>
      </tr>
    </table>
    </td>
  </tr>
</table>



<!-- End lnp/short_comprehensive_report_body.tpl -->

