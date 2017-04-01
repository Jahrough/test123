<!-- BEGIN manage_account_disable_searches.tpl -->

           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td class="unifont1" colspan="2"><b>Enable Search / Report Settings:</b><TMPL_UNLESS DA_ONLY>&nbsp;<span class="smallfont1"> (Disabling Search settings will also disable these options on Reports)</TMPL_UNLESS><br></td>
	      </TR>
           </table>

	      <TMPL_UNLESS DA_ONLY>

              <table border="0" width="100%">
              <tr><td style="border:solid 2px #4E8CB9;">
              <div class="hpColHdr" >
                <h4 style="font-size: 85%; margin-top: 0px; margin-bottom: 0px; height: auto;">Contact &amp; Locate (NON-FCRA)</h4>
              </div>
	      <!-- People -->
	 <fieldset>
	  <span class="unifont1bold"><legend>People</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <!--
              <TMPL_IF ALLOW_FCRA>
              <TMPL_UNLESS DELETE_FCRA_MVR>
	      <TMPL_UNLESS NAME=DISALLOW_MVR_REPORT>
              <TMPL_IF COMPANY_DISABLE_FCRA_MVR>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_MVR" VALUE="<TMPL_IF DISABLE_FCRA_MVR>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;MVR Reports (Driving Records):</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_MVR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_MVR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_MVR" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_MVR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              </TMPL_IF>
              -->
              <TMPL_IF TCOL>
              <TMPL_UNLESS DO_NOT_DISPLAY_PERSON_SEARCH_PLUS>
              <TMPL_IF COMPANY_DISABLE_PERSON_SEARCH_PLUS>
              <INPUT TYPE=HIDDEN NAME="DISABLE_PERSON_SEARCH_PLUS" VALUE="<TMPL_IF DISABLE_PERSON_SEARCH_PLUS>1<TMPL_ELSE>0</TMPL_IF>">
              <INPUT TYPE=HIDDEN NAME="HIDE_PERSON_PLUS_HOUSEHOLD_TAB" VALUE="<TMPL_IF HIDE_PERSON_PLUS_HOUSEHOLD_TAB>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                 <td width="75%" nowrap class="unifont1" align="left">&nbsp;Person Search Plus:</TD>
                 <td width="25%" align="left">
                 <table border="0" cellpadding="0" cellspacing="0">
                   <tr>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON_SEARCH_PLUS" onclick="document.getElementById('householdCollapse').style.display='';" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PERSON_SEARCH_PLUS>CHECKED</TMPL_UNLESS>></td>
                      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON_SEARCH_PLUS" onclick=" document.getElementById('householdCollapse').style.display='none';" VALUE='1' <TMPL_IF NAME=DISABLE_PERSON_SEARCH_PLUS>CHECKED</TMPL_IF>></td>
                      <td class="unifont1">No</td>
                   </tr>
                 </table>
                 </td>
               </TR>
 
              <TR id="householdCollapse" <TMPL_IF NAME=DISABLE_PERSON_SEARCH_PLUS>style="display:none;"</TMPL_IF> >
                 <td class="unifont1" align="left" width="75%">&nbsp;&nbsp;&nbsp;Display Household Members:</span>&nbsp;</td>
                 <td width="25%" align="left">
                 <table border="0" cellpadding="0" cellspacing="0">
                   <tr>
                       <td><INPUT TYPE=RADIO NAME="HIDE_PERSON_PLUS_HOUSEHOLD_TAB" VALUE='0' <TMPL_UNLESS NAME=HIDE_PERSON_PLUS_HOUSEHOLD_TAB>CHECKED</TMPL_UNLESS>></td>
                       <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                       <td><INPUT TYPE=RADIO NAME="HIDE_PERSON_PLUS_HOUSEHOLD_TAB" VALUE='1' <TMPL_IF NAME=HIDE_PERSON_PLUS_HOUSEHOLD_TAB>CHECKED</TMPL_IF>></td>
                       <td class="unifont1">No</td>
                   </tr>
                 </table>
                 </td>
               </TR>
              </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_IF>

	      <TMPL_UNLESS DO_NOT_DISPLAY_PERSON>
	      <TMPL_IF COMPANY_DISABLE_PERSON>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PERSON" VALUE="<TMPL_IF DISABLE_PERSON>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Person Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PERSON>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PERSON" VALUE='1' <TMPL_IF NAME=DISABLE_PERSON>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DO_NOT_DISPLAY_ADV>
	      <TMPL_IF NAME=ENABLE_ADVANCED_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_ADV>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ADV" VALUE="<TMPL_IF DISABLE_ADV>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="10%" nowrap class="unifont1" align="left">&nbsp;Deep Skip Search:&nbsp;&nbsp;</TD>
                <td width="90%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ADV" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ADV>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ADV" VALUE='1' <TMPL_IF NAME=DISABLE_ADV>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_IF>
              </TMPL_UNLESS>

<TMPL_UNLESS DELETE_CONTACT_PLUS>
  <TMPL_IF COMPANY_DISABLE_CONTACT_PLUS>
        <input type="hidden" name="DISABLE_CONTACT_PLUS" value="<TMPL_IF DISABLE_CONTACT_PLUS>1<TMPL_ELSE>0</TMPL_IF>"/>
  <TMPL_ELSE>
        <tr>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;Contact Plus Search:</td>
          <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><input type="radio" name="DISABLE_CONTACT_PLUS" value="0" <TMPL_UNLESS DISABLE_CONTACT_PLUS>checked="checked"</TMPL_UNLESS> id="contactPlusRb" onclick="if((this.checked)){$('cpsCbRow').removeClassName('hide');}"/></td>
                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                <td><input type="radio" name="DISABLE_CONTACT_PLUS" value="1" <TMPL_IF DISABLE_CONTACT_PLUS>checked="checked"</TMPL_IF> onclick="if((this.checked)){$('cpsCbRow').addClassName('hide');}"/></td>
                <td class="unifont1">No</td>
              </tr>
            </table>
          </td>
        </tr>
    <TMPL_IF SECURITY_COMPANY>
        <tr id="cpsCbRow"<TMPL_IF DISABLE_CONTACT_PLUS> class="hide"</TMPL_IF>/>
          <td colspan="2">
            <ul style="list-style-type: none; margin-left: 2px; margin-bottom: 5px; padding-left: 0; -webkit-padding-start: 2px;">
              <li class="unifont1">
                <input type="checkbox" name="CONTACT_PLUS_MAX_PHONE" value="3"<TMPL_IF CONTACT_PLUS_MAX_PHONE> checked="checked"</TMPL_IF>/>
                Only return best three phones
              </li>
              <li class="unifont1">
                <input type="checkbox" name="CONTACT_PLUS_RECENT_ONLY" value="1"<TMPL_IF CONTACT_PLUS_RECENT_ONLY> checked="checked"</TMPL_IF>/>
                Only return addresses seen within the last 24 months
              </li>
            </ul>
          </td>
        </tr>
    </TMPL_IF>
  </TMPL_IF>
</TMPL_UNLESS>

    <!-- VJ:: should this go away?
    <TMPL_IF SHOW_COMP_SEARCH>
              <TMPL_IF COMPANY_DISABLE_COMPSEARCH>
              <INPUT TYPE=HIDDEN NAME="DISABLE_COMPSEARCH" VALUE="<TMPL_IF DISABLE_COMPSEARCH>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Comprehensive Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_COMPSEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_COMPSEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_COMPSEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_COMPSEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
    </TMPL_IF>
    -->

        <TMPL_UNLESS HIDE_WORKPLACE>
	      <TMPL_IF COMPANY_DISABLE_WORKPLACE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_WORKPLACE" VALUE="<TMPL_IF DISABLE_WORKPLACE>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Workplace Locator:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_WORKPLACE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_WORKPLACE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_WORKPLACE" VALUE='1' <TMPL_IF NAME=DISABLE_WORKPLACE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
        </TMPL_UNLESS>
                 <TMPL_IF SHOW_SOCIAL_MEDIA_LOCATOR>
                 <TMPL_IF COMPANY_DISABLE_SOCIALMEDIA>
                 <INPUT TYPE=HIDDEN NAME="DISABLE_SOCIALMEDIA" VALUE="<TMPL_IF DISABLE_SOCIALMEDIA>1<TMPL_ELSE>0</TMPL_IF>">
                 <TMPL_ELSE>
                 <TR>
                   <td width="75%" nowrap class="unifont1" align="left">&nbsp;Social Media Locator:</TD>
                   <td width="25%" align="left">
                   <table border="0" cellpadding="0" cellspacing="0">
                     <tr>
                       <td><INPUT TYPE=RADIO NAME="DISABLE_SOCIALMEDIA" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SOCIALMEDIA>CHECKED</TMPL_UNLESS>></td>
                       <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                       <td><INPUT TYPE=RADIO NAME="DISABLE_SOCIALMEDIA" VALUE='1' <TMPL_IF NAME=DISABLE_SOCIALMEDIA>CHECKED</TMPL_IF>></td>
                       <td class="unifont1">No</td>
                     </tr>
                   </table>
                   </td>    
                 </TR>
                 </TMPL_IF>
                 </TMPL_IF>

              <TMPL_IF SHOW_SOCIAL_REPORT>
              <TMPL_IF COMPANY_DISABLE_SOC_REPORT>
              <INPUT TYPE=HIDDEN NAME="DISABLE_SOC_REPORT" VALUE="<TMPL_IF DISABLE_SOC_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Social Network Report:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SOC_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SOC_REPORT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SOC_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_SOC_REPORT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_IF>

        <TMPL_UNLESS NAME=DISALLOW_PAW_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_PAW>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PAW" VALUE="<TMPL_IF DISABLE_PAW>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;People at Work Locator:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PAW" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PAW>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PAW" VALUE='1' <TMPL_IF NAME=DISABLE_PAW>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>

	      <TMPL_IF COMPANY_DISABLE_PATRIOTACT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PATRIOTACT" VALUE="<TMPL_IF DISABLE_PATRIOTACT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;USA PATRIOT Act:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PATRIOTACT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PATRIOTACT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PATRIOTACT" VALUE='1' <TMPL_IF NAME=DISABLE_PATRIOTACT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>


        <TMPL_IF NAME=SECURITY_COMPANY>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;USA PATRIOT Act - Threshold Default:</TD>
                <td width="25%" align="left">
          	      <select name="THRESHOLD" tabindex="5" align="center">
          	        <option value="1">100%</option>
                    <option value="0.98">98%</option>
                    <option value="0.96">96%</option>
                    <option value="0.94">94%</option>
                    <option value="0.92">92%</option>
                    <option value="0.90">90%</option>
                    <option value="0.88">88%</option>
                    <option value="0.86">86%</option>
                    <option value="0.84" selected>84%</option>
                    <option value="0.82">82%</option>
                    <option value="0.80">80%</option>
          	      </select>
                </td>
              </TR>
            <TMPL_IF NAME="THRESHOLD">
              <script>
                document.forms[0].THRESHOLD.value = '<TMPL_VAR NAME="THRESHOLD">';
              </script>
            </TMPL_IF>
        </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_PROF_LICENSE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_PROF_LICENSE" VALUE="<TMPL_IF DISABLE_PROF_LICENSE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Professional License Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PROF_LICENSE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PROF_LICENSE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PROF_LICENSE" VALUE='1' <TMPL_IF NAME=DISABLE_PROF_LICENSE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_DL>
              <INPUT TYPE=HIDDEN NAME="DISABLE_DL" VALUE="<TMPL_IF DISABLE_DL>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
		<td width="75%" nowrap class="unifont1" align="left">&nbsp;Driver License Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DL>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DL" VALUE='1' <TMPL_IF NAME=DISABLE_DL>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_VOTER_REGISTRATION>
              <INPUT TYPE=HIDDEN NAME="DISABLE_VOTER_REGISTRATION" VALUE="<TMPL_IF DISABLE_VOTER_REGISTRATION>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Voter Registration Locator:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VOTER_REGISTRATION" VALUE='0' <TMPL_UNLESS NAME=DISABLE_VOTER_REGISTRATION>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VOTER_REGISTRATION" VALUE='1' <TMPL_IF NAME=DISABLE_VOTER_REGISTRATION>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

	      <TMPL_IF ENABLE_V2>
	      <TMPL_IF HYBRID_REAL_PROPERTY>
	      <TMPL_IF COMPANY_DISABLE_REAL_PROPERTY>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_REAL_PROPERTY" VALUE="<TMPL_IF DISABLE_REAL_PROPERTY>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real Property Locator:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_REAL_PROPERTY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_REAL_PROPERTY>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_REAL_PROPERTY" VALUE='1' <TMPL_IF NAME=DISABLE_REAL_PROPERTY>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_IF>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_ASSESSMENT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ASSESSMENT" VALUE="<TMPL_IF DISABLE_ASSESSMENT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Assessments Locator:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ASSESSMENT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ASSESSMENT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ASSESSMENT" VALUE='1' <TMPL_IF NAME=DISABLE_ASSESSMENT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_DEEDS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DEEDS" VALUE="<TMPL_IF DISABLE_DEEDS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Deeds Locator:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEEDS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DEEDS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEEDS" VALUE='1' <TMPL_IF NAME=DISABLE_DEEDS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

          <TMPL_IF ENABLE_V2>
          <TMPL_UNLESS HIDE_RT_MVR>
	      <TMPL_IF COMPANY_DISABLE_RT_MVR>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_RT_MVR" VALUE="<TMPL_IF DISABLE_RT_MVR>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Motor Vehicles Locator:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_MVR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RT_MVR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_MVR" VALUE='1' <TMPL_IF NAME=DISABLE_RT_MVR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
          </TMPL_UNLESS>
          </TMPL_IF>

              <TMPL_INCLUDE NAME=instant_id.tpl> <!-- new InstantID options -->

              <!-- VJ: should these go away?
              -->
              <TMPL_IF NAME="ENABLE_ALSO_FOUND">
	      <TMPL_IF COMPANY_DISABLE_ALSO_FOUND_REPORT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ALSO_FOUND_REPORT" VALUE="<TMPL_IF DISABLE_ALSO_FOUND_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="10%" nowrap class="unifont1" align="left">&nbsp;We Also Found:&nbsp;&nbsp;</TD>
                <td width="90%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ALSO_FOUND_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ALSO_FOUND_REPORT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ALSO_FOUND_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_ALSO_FOUND_REPORT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_DEATH>
              <INPUT TYPE=HIDDEN NAME="DISABLE_DEATH" VALUE="<TMPL_IF DISABLE_DEATH>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Death Records Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEATH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DEATH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEATH" VALUE='1' <TMPL_IF NAME=DISABLE_DEATH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_EMAIL>
              <INPUT TYPE=HIDDEN NAME="DISABLE_EMAIL" VALUE="<TMPL_IF DISABLE_EMAIL>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Email Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EMAIL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_EMAIL>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EMAIL" VALUE='1' <TMPL_IF NAME=DISABLE_EMAIL>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

        <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	      <TMPL_UNLESS INS>
	      <TMPL_UNLESS DONT_SHOW_NEWS>
	      <TMPL_UNLESS NAME=DISALLOW_LN_NEWS_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_NEWS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_NEWS" VALUE="<TMPL_IF DISABLE_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;People in the News:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_NEWS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_NEWS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_NEWS" VALUE='1' <TMPL_IF NAME=DISABLE_NEWS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>

	      <TMPL_IF COMPANY_DISABLE_DO_NEWS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DO_NEWS" VALUE="<TMPL_IF DISABLE_DO_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
	      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Deaths & Obituaries in the News:&nbsp;&nbsp;</TD>
	      <td width="25%" align="left">
	      <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_DO_NEWS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DO_NEWS>CHECKED</TMPL_UNLESS>></td>
	      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_DO_NEWS" VALUE='1' <TMPL_IF NAME=DISABLE_DO_NEWS>CHECKED</TMPL_IF>></td>
	      <td class="unifont1">No</td>
	      </tr>
	      </table>
	      </td>
	      </TR>
	      </TMPL_IF>
	    </TMPL_UNLESS>
        <TMPL_IF ENABLE_IRS_VERIFY>
        <TMPL_IF COMPANY_DISABLE_IRS_VERIFY>
          <input type="hidden" name="DISABLE_IRS_VERIFY" value="<TMPL_IF DISABLE_IRS_VERIFY>1<TMPL_ELSE>0</TMPL_IF>"/>
        <TMPL_ELSE>
            <TR>
              <td width="75%" nowrap class="unifont1" align="left">&nbsp;IRS Verify:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_IRS_VERIFY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_IRS_VERIFY>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_IRS_VERIFY" VALUE='1' <TMPL_IF NAME=DISABLE_IRS_VERIFY>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
            </TR>
        </TMPL_IF>
        </TMPL_IF>
           </table>
	 </fieldset>

	      <!-- Directory Assistance -->
	 <fieldset>
	  <span class="unifont1bold"><legend>Phones</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

    <TMPL_IF SHOW_RT_PHONE>
              <TMPL_IF COMPANY_DISABLE_RT_PHONE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_RT_PHONE" VALUE="<TMPL_IF DISABLE_RT_PHONE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real-Time Phones Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_PHONE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RT_PHONE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_PHONE" VALUE='1' <TMPL_IF NAME=DISABLE_RT_PHONE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
    </TMPL_IF>

	   <TMPL_UNLESS DO_NOT_DISPLAY_DA_WIRELESS>
	   <TMPL_UNLESS DA_ONLY>
	      <TMPL_IF COMPANY_DISABLE_DA_WIRELESS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DA_WIRELESS" VALUE="<TMPL_IF DISABLE_DA_WIRELESS>0<TMPL_ELSE>1</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Phones Plus:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_WIRELESS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DA_WIRELESS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_WIRELESS" VALUE='1' <TMPL_IF NAME=DISABLE_DA_WIRELESS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
           </TMPL_UNLESS>

	      <TMPL_IF ENABLE_ALTERNATIVE_PHONES_SECTION>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Alternative Phones:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
					<td><input type="radio" name="DISABLE_ALTERNATIVE_PHONES" value="0" <TMPL_UNLESS NAME=DISABLE_ALTERNATIVE_PHONES>checked="checked" </TMPL_UNLESS>/></td>
					<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
					<td><input type="radio" name="DISABLE_ALTERNATIVE_PHONES" value="1" <TMPL_IF NAME=DISABLE_ALTERNATIVE_PHONES>checked="checked" </TMPL_IF>/></td>
					<td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	   </TMPL_UNLESS>

              <TMPL_UNLESS DO_NOT_DISPLAY_DA_BASIC>
	      <TMPL_IF COMPANY_DISABLE_DA_BASIC>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DA_BASIC" VALUE="<TMPL_IF DISABLE_DA_BASIC>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;DA Basic Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_BASIC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DA_BASIC>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_BASIC" VALUE='1' <TMPL_IF NAME=DISABLE_DA_BASIC>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DO_NOT_DISPLAY_DA_REVERSE>
	      <TMPL_IF COMPANY_DISABLE_DA_REVERSE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DA_REVERSE" VALUE="<TMPL_IF DISABLE_DA_REVERSE>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;DA Reverse Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_REVERSE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DA_REVERSE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DA_REVERSE" VALUE='1' <TMPL_IF NAME=DISABLE_DA_REVERSE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_IF TCOL>
	      <TMPL_UNLESS DO_NOT_DISPLAY_PHONE_IDENTIFIER_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_PHONE_IDENTIFIER_SEARCH>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PHONE_IDENTIFIER_SEARCH" VALUE="<TMPL_IF DISABLE_PHONE_IDENTIFIER_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Reverse Phone Search Plus:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_IDENTIFIER_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PHONE_IDENTIFIER_SEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_IDENTIFIER_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_PHONE_IDENTIFIER_SEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>
	      </TMPL_IF>

              <TMPL_UNLESS GOV>
	      <TMPL_UNLESS LE>
	      <TMPL_UNLESS DO_NOT_DISPLAY_CANADIAN_PHONES>
	      <TMPL_IF COMPANY_DISABLE_CANADIAN_PHONES>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_CANADIAN_PHONES" VALUE="<TMPL_IF DISABLE_CANADIAN_PHONES>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Canadian Phones Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CANADIAN_PHONES" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CANADIAN_PHONES>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CANADIAN_PHONES" VALUE='1' <TMPL_IF NAME=DISABLE_CANADIAN_PHONES>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>

	      <TMPL_UNLESS DO_NOT_DISPLAY_PREMIUM_PHONES>
	      <TMPL_IF COMPANY_DISABLE_PREMIUM_PHONES>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PREMIUM_PHONES" VALUE="<TMPL_IF DISABLE_PREMIUM_PHONES>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Premium Phones:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PREMIUM_PHONES" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PREMIUM_PHONES>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PREMIUM_PHONES" VALUE='1' <TMPL_IF NAME=DISABLE_PREMIUM_PHONES>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
 	      </TMPL_IF>
          </TMPL_UNLESS>
	      

     </table>
	 </fieldset>
	      <!-- Businesses -->

	 <fieldset>
	  <span class="unifont1bold"><legend>Businesses</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
	      <TMPL_IF COMPANY_DISABLE_BUS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_BUS" VALUE="<TMPL_IF DISABLE_BUS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Business Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS" VALUE='1' <TMPL_IF NAME=DISABLE_BUS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_CORPORATION>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_CORPORATION" VALUE="<TMPL_IF DISABLE_CORPORATION>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Corporation Filings:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CORPORATION" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CORPORATION>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CORPORATION" VALUE='1' <TMPL_IF NAME=DISABLE_CORPORATION>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_UCC>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_UCC" VALUE="<TMPL_IF DISABLE_UCC>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;National UCC Filings:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_UCC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_UCC>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_UCC" VALUE='1' <TMPL_IF NAME=DISABLE_UCC>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_WHOIS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_WHOIS" VALUE="<TMPL_IF DISABLE_WHOIS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Internet Domains:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_WHOIS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_WHOIS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_WHOIS" VALUE='1' <TMPL_IF NAME=DISABLE_WHOIS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	  <TMPL_UNLESS NAME=DISALLOW_D_AND_B_SEARCH>
	  <TMPL_IF COMPANY_DISABLE_D_AND_B>
              <INPUT TYPE=HIDDEN NAME="DISABLE_D_AND_B" VALUE="<TMPL_IF DISABLE_D_AND_B>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;D &amp; B Records Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_D_AND_B" VALUE='0' <TMPL_UNLESS NAME=DISABLE_D_AND_B>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_D_AND_B" VALUE='1' <TMPL_IF NAME=DISABLE_D_AND_B>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
	  </TMPL_UNLESS>

	      <TMPL_UNLESS NAME=DISALLOW_DE_CORP_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_DELCO>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DELCO" VALUE="<TMPL_IF DISABLE_DELCO>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Delaware Corporations:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DELCO" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DELCO>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DELCO" VALUE='1' <TMPL_IF NAME=DISABLE_DELCO>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>

	      <TMPL_UNLESS HIDE_BUS_CREDIT>
	      <TMPL_IF COMPANY_DISABLE_BUS_CREDIT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_CREDIT" VALUE="<TMPL_IF DISABLE_BUS_CREDIT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Business Credit:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CREDIT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_CREDIT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_CREDIT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_CREDIT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>

          <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
	      <TMPL_UNLESS INS>
	      <TMPL_UNLESS DONT_SHOW_NEWS>
	      <TMPL_UNLESS NAME=DISALLOW_LN_NEWS_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_BUS_NEWS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_NEWS" VALUE="<TMPL_IF DISABLE_BUS_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Businesses in the News:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_NEWS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_NEWS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_NEWS" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_NEWS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>

	    <TMPL_UNLESS HIDE_BUS_INSTANTID>
		  <TMPL_IF COMPANY_DISABLE_BUS_INSTANT_ID>
		  <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_INSTANT_ID" VALUE="<TMPL_IF DISABLE_BUS_INSTANT_ID>1<TMPL_ELSE>0</TMPL_IF>">
		  <TMPL_ELSE>
		  <TR>
		    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Business InstantID:</TD>
		    <td width="25%" align="left">
		    <table border="0" cellpadding="0" cellspacing="0">
		      <tr>
			<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INSTANT_ID" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_INSTANT_ID>CHECKED</TMPL_UNLESS>></td>
			<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
			<td><INPUT TYPE=RADIO NAME="DISABLE_BUS_INSTANT_ID" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_INSTANT_ID>CHECKED</TMPL_IF>></td>
			<td class="unifont1">No</td>
		      </tr>
		    </table>
		    </td>
		  </TR>
		  </TMPL_IF>
	    </TMPL_UNLESS>

	      <TMPL_IF COMPANY_DISABLE_BUS_ALSO_FOUND_REPORT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_BUS_ALSO_FOUND_REPORT" VALUE="<TMPL_IF DISABLE_BUS_ALSO_FOUND_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Business We Also Found:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_ALSO_FOUND_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BUS_ALSO_FOUND_REPORT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BUS_ALSO_FOUND_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_BUS_ALSO_FOUND_REPORT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_FICTIOUS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FICTIOUS" VALUE="<TMPL_IF DISABLE_FICTIOUS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Fictitious Business Name Information:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FICTIOUS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FICTIOUS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FICTIOUS" VALUE='1' <TMPL_IF NAME=DISABLE_FICTIOUS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

           </table>
	 </fieldset>
	 
         </td><tr></table>

              <TMPL_IF ALLOW_FCRA>
              <table border="0" width="100%">
              <tr><td style="border:solid 2px #496426;">
              <div class="hpColHdrGrn" >
                <h4 style="font-size: 85%; margin-top: 0px; margin-bottom: 0px; height: auto;">Decisioning (FCRA)</h4>
              </div>
	      <!-- Courts -->

	 <fieldset>
	   <span class="unifont1bold"><legend>Courts</legend></span>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
		  <TMPL_UNLESS BANKO>            
              <TMPL_UNLESS DELETE_FCRA_BANKRUPTCY>
	      <TMPL_IF COMPANY_DISABLE_FCRA_BANKRUPTCY>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_BANKRUPTCY" VALUE="<TMPL_IF DISABLE_FCRA_BANKRUPTCY>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Bankruptcy Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_BANKRUPTCY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_BANKRUPTCY>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_BANKRUPTCY" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_BANKRUPTCY>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_FCRA_LIEN>
	      <TMPL_IF COMPANY_DISABLE_FCRA_LIEN>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_LIEN" VALUE="<TMPL_IF DISABLE_FCRA_LIEN>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Liens and Judgments Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_LIEN" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_LIEN>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_LIEN" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_LIEN>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              <TMPL_UNLESS DELETE_FCRA_MARRIAGE>
              <TMPL_IF COMPANY_DISABLE_FCRA_MARRIAGE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_MARRIAGE" VALUE="<TMPL_IF DISABLE_FCRA_MARRIAGE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Marriages / Divorces:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_MARRIAGE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_MARRIAGE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_MARRIAGE" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_MARRIAGE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_SEXPREDATOR>
              <TMPL_IF COMPANY_DISABLE_FCRA_SEXPREDATOR>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_SEXPREDATOR" VALUE="<TMPL_IF DISABLE_FCRA_SEXPREDATOR>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Sexual Offenders Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_SEXPREDATOR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_SEXPREDATOR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_SEXPREDATOR" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_SEXPREDATOR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_CRIM>
	      <TMPL_IF COMPANY_DISABLE_FCRA_CRIM>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_CRIM" VALUE="<TMPL_IF DISABLE_FCRA_CRIM>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Criminal Records:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CRIM" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_CRIM>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CRIM" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_CRIM>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
           </table>
	 </fieldset>
	      <!-- Assets -->

	 <fieldset>
	  <span class="unifont1bold"><legend>Assets</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
           <!-- VJ:: This is explicitly disabled in TCOL.pm -->
           <!--
           <TMPL_UNLESS ENABLE_V2>
	      <TMPL_IF COMPANY_DISABLE_MV>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MV" VALUE="<TMPL_IF DISABLE_MV>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Motor Vehicles:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MV" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MV>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MV" VALUE='1' <TMPL_IF NAME=DISABLE_MV>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
        </TMPL_UNLESS>
        -->

	      <TMPL_IF HYBRID_REAL_PROPERTY>
	      <TMPL_IF COMPANY_DISABLE_FCRA_REAL_PROPERTY>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_REAL_PROPERTY" VALUE="<TMPL_IF DISABLE_FCRA_REAL_PROPERTY>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real Property:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_REAL_PROPERTY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_REAL_PROPERTY>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_REAL_PROPERTY" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_REAL_PROPERTY>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      </TMPL_IF>

              <TMPL_UNLESS DELETE_FCRA_ASSESSMENT>
	      <TMPL_IF COMPANY_DISABLE_FCRA_ASSESSMENT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_ASSESSMENT" VALUE="<TMPL_IF DISABLE_FCRA_ASSESSMENT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Assessments:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_ASSESSMENT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_ASSESSMENT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_ASSESSMENT" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_ASSESSMENT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_DEEDS>
	      <TMPL_IF COMPANY_DISABLE_FCRA_DEEDS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_DEEDS" VALUE="<TMPL_IF DISABLE_FCRA_DEEDS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Deeds:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_DEEDS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_DEEDS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_DEEDS" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_DEEDS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_VESSEL>
	      <TMPL_IF COMPANY_DISABLE_FCRA_VESSEL>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_VESSEL" VALUE="<TMPL_IF DISABLE_FCRA_VESSEL>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Watercraft:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_VESSEL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_VESSEL>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_VESSEL" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_VESSEL>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_AIRCRAFT>
	      <TMPL_IF COMPANY_DISABLE_FCRA_AIRCRAFT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_AIRCRAFT" VALUE="<TMPL_IF DISABLE_FCRA_AIRCRAFT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FAA Aircraft:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_AIRCRAFT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_AIRCRAFT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_AIRCRAFT" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_AIRCRAFT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
           </table>
	 </fieldset>

	      <!-- Licenses -->

	 <fieldset>
	  <span class="unifont1bold"><legend>Licenses</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TMPL_UNLESS DELETE_FCRA_HUNTING_LICENSE>
              <TMPL_IF COMPANY_DISABLE_FCRA_HUNTING_LICENSE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_HUNTING_LICENSE" VALUE="<TMPL_IF DISABLE_FCRA_HUNTING_LICENSE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Hunting and Fishing License Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_HUNTING_LICENSE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_HUNTING_LICENSE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_HUNTING_LICENSE" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_HUNTING_LICENSE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_CONCEALED_WEAPON>
              <TMPL_IF COMPANY_DISABLE_FCRA_CONCEALED_WEAPON>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_CONCEALED_WEAPON" VALUE="<TMPL_IF DISABLE_FCRA_CONCEALED_WEAPON>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Concealed Weapon Permit Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CONCEALED_WEAPON" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_CONCEALED_WEAPON>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CONCEALED_WEAPON" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_CONCEALED_WEAPON>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_FAA_PILOT>
	      <TMPL_IF COMPANY_DISABLE_FCRA_FAA_PILOT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_FAA_PILOT" VALUE="<TMPL_IF DISABLE_FCRA_FAA_PILOT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FAA Pilots:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_FAA_PILOT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_FAA_PILOT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_FAA_PILOT" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_FAA_PILOT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>

              <TMPL_UNLESS DELETE_FCRA_FIREARMS>
              <TMPL_IF COMPANY_DISABLE_FCRA_FIREARMS>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_FIREARMS" VALUE="<TMPL_IF DISABLE_FCRA_FIREARMS>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Firearms Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_FIREARMS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_FIREARMS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_FIREARMS" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_FIREARMS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>
           </table>
	 </fieldset>
	 
         <TMPL_UNLESS HIDE_BANKO_FCRA_TOOLS>
	      <!-- Banko Tools -->
	 <fieldset>
	   <span class="unifont1bold"><legend>Banko&reg; FCRA Tools</legend></span>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TMPL_IF BANKO>
              <TMPL_UNLESS DELETE_FCRA_BANKRUPTCY>
	      <TMPL_IF COMPANY_DISABLE_FCRA_BANKRUPTCY>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_BANKRUPTCY" VALUE="<TMPL_IF DISABLE_FCRA_BANKRUPTCY>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Bankruptcy Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_BANKRUPTCY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_BANKRUPTCY>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_BANKRUPTCY" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_BANKRUPTCY>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_IF>
              <TMPL_UNLESS DO_NOT_DISPLAY_EVENTS_TAB_ACCESS>
              <TMPL_UNLESS DELETE_FCRA_EVENTS_TAB_ACCESS>
	      <TMPL_IF COMPANY_DISABLE_FCRA_EVENTS_TAB_ACCESS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_EVENTS_TAB_ACCESS" VALUE="<TMPL_IF DISABLE_FCRA_EVENTS_TAB_ACCESS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Banko Events:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_TAB_ACCESS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_EVENTS_TAB_ACCESS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_TAB_ACCESS" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_EVENTS_TAB_ACCESS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_EVENTS_CUST_LN_DOCKET>
              <TMPL_UNLESS DELETE_FCRA_EVENTS_CUST_LN_DOCKET>
	      <TMPL_IF COMPANY_DISABLE_FCRA_EVENTS_CUST_LN_DOCKET>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_EVENTS_CUST_LN_DOCKET" VALUE="<TMPL_IF DISABLE_FCRA_EVENTS_CUST_LN_DOCKET>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Events Customer LexisNexis Docket:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_LN_DOCKET" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_EVENTS_CUST_LN_DOCKET>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_LN_DOCKET" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_EVENTS_CUST_LN_DOCKET>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_NON_EVENTS_CUST_LN_DOCKET>
              <TMPL_UNLESS DELETE_FCRA_NON_EVENTS_CUST_LN_DOCKET>
	      <TMPL_IF COMPANY_DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET" VALUE="<TMPL_IF DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Non-Events Customer LexisNexis Docket:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_NON_EVENTS_CUST_LN_DOCKET>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_EVENTS_CUST_PACER_DOCKET>
              <TMPL_UNLESS DELETE_FCRA_EVENTS_CUST_PACER_DOCKET>
	      <TMPL_IF COMPANY_DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET" VALUE="<TMPL_IF DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Events Customer PACER Docket:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_EVENTS_CUST_PACER_DOCKET>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_NON_EVENTS_CUST_PACER_DOCKET>
              <TMPL_UNLESS DELETE_FCRA_NON_EVENTS_CUST_PACER_DOCKET>
	      <TMPL_IF COMPANY_DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET" VALUE="<TMPL_IF DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Non-Events Customer PACER Docket:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_NON_EVENTS_CUST_PACER_DOCKET>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_EVENTS_CUST_DOCUMENT>
              <TMPL_UNLESS DELETE_FCRA_EVENTS_CUST_DOCUMENT>
	      <TMPL_IF COMPANY_DISABLE_FCRA_EVENTS_CUST_DOCUMENT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_EVENTS_CUST_DOCUMENT" VALUE="<TMPL_IF DISABLE_FCRA_EVENTS_CUST_DOCUMENT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Events Cust Document:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_DOCUMENT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_EVENTS_CUST_DOCUMENT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_EVENTS_CUST_DOCUMENT" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_EVENTS_CUST_DOCUMENT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_NON_EVENTS_CUST_DOCUMENT>
              <TMPL_UNLESS DELETE_FCRA_NON_EVENTS_CUST_DOCUMENT>
	      <TMPL_IF COMPANY_DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT" VALUE="<TMPL_IF DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Non-Events Cust Document:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_NON_EVENTS_CUST_DOCUMENT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_CLAIMS_REGISTER>               
              <TMPL_UNLESS DELETE_FCRA_CLAIMS_REGISTER>
	      <TMPL_IF COMPANY_DISABLE_FCRA_CLAIMS_REGISTER>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_CLAIMS_REGISTER" VALUE="<TMPL_IF DISABLE_FCRA_CLAIMS_REGISTER>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Claims Register:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CLAIMS_REGISTER" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_CLAIMS_REGISTER>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CLAIMS_REGISTER" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_CLAIMS_REGISTER>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_NON_EVENTS_CLAIMS_REGISTER>
              <TMPL_UNLESS DELETE_FCRA_NON_EVENTS_CLAIMS_REGISTER>
	      <TMPL_IF COMPANY_DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER" VALUE="<TMPL_IF DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Non-Events Claims Register:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_NON_EVENTS_CLAIMS_REGISTER>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_CREDITORS_MATRIX>
              <TMPL_UNLESS DELETE_FCRA_CREDITORS_MATRIX>
	      <TMPL_IF COMPANY_DISABLE_FCRA_CREDITORS_MATRIX>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_CREDITORS_MATRIX" VALUE="<TMPL_IF DISABLE_FCRA_CREDITORS_MATRIX>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Creditor's Matrix:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CREDITORS_MATRIX" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_CREDITORS_MATRIX>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_CREDITORS_MATRIX" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_CREDITORS_MATRIX>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>              
              </TMPL_UNLESS>
              <TMPL_UNLESS DO_NOT_DISPLAY_FCRA_NON_EVENTS_CREDITORS_MATRIX>
              <TMPL_UNLESS DELETE_FCRA_NON_EVENTS_CREDITORS_MATRIX>
	      <TMPL_IF COMPANY_DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX" VALUE="<TMPL_IF DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FCRA Non-Events Creditor's Matrix:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX" VALUE='1' <TMPL_IF NAME=DISABLE_FCRA_NON_EVENTS_CREDITORS_MATRIX>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_UNLESS>
              </TMPL_UNLESS>
           </table>
	 </fieldset>
         </TMPL_UNLESS>
         </td></tr></table>
           </TMPL_IF>

      </TMPL_UNLESS>
	  <TMPL_UNLESS DO_NOT_DISPLAY_BANKO_FILE_UPLOAD>
	  <table border="0" width="100%">
	  <tr><td style="border:solid 2px #496426;">
	  <div class="hpColHdrOr" >
		<h4 style="font-size: 85%; margin-top: 0px; margin-bottom: 0px; height: auto;">File Transfer &amp; Reporting</h4>
	  </div>
     <fieldset>
       <span class="unifont1bold"><legend>File Transfer</legend></span>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
          <TMPL_IF COMPANY_DISABLE_BANKO_FILE_UPLOAD>
          <INPUT TYPE=HIDDEN NAME="DISABLE_BANKO_FILE_UPLOAD" VALUE="<TMPL_IF DISABLE_BANKO_FILE_UPLOAD>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;File Area:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BANKO_FILE_UPLOAD" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BANKO_FILE_UPLOAD>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BANKO_FILE_UPLOAD" VALUE='1' <TMPL_IF NAME=DISABLE_BANKO_FILE_UPLOAD>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
           </table>
     </fieldset>
         </td></tr></table>
           </TMPL_UNLESS>
    <TMPL_IF NAME="INS">
	      <!-- Analytical Tools -->
	 <fieldset>
	  <span class="unifont1bold"><legend>Analytical Tools</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
	      <TMPL_IF COMPANY_DISABLE_RATE_EVASION>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_RATE_EVASION" VALUE="<TMPL_IF DISABLE_RATE_EVASION>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Rate Evasion Evaluation:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RATE_EVASION" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RATE_EVASION>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RATE_EVASION" VALUE='1' <TMPL_IF NAME=DISABLE_RATE_EVASION>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_RATE_EVASION_BATCH>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_RATE_EVASION_BATCH" VALUE="<TMPL_IF DISABLE_RATE_EVASION_BATCH>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Rate Evasion Evaluation Batch:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RATE_EVASION_BATCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RATE_EVASION_BATCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RATE_EVASION_BATCH" VALUE='1' <TMPL_IF NAME=DISABLE_RATE_EVASION_BATCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	   </table>
	 </fieldset>
   </TMPL_IF>


	  <!-- Next Steps -->
              <!-- VJ: should these go away? -->
       <TMPL_UNLESS DA_ONLY>
	      <TMPL_IF ENABLE_NEXT_STEPS>
	 <fieldset>
	  <span class="unifont1bold"><legend>Next Steps</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
	      <TMPL_IF COMPANY_DISABLE_RELATIVES_SEARCH>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_RELATIVES_SEARCH" VALUE="<TMPL_IF DISABLE_RELATIVES_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Relatives Searches:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RELATIVES_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RELATIVES_SEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RELATIVES_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_RELATIVES_SEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      <TMPL_IF COMPANY_DISABLE_NEIGHBORS_SEARCH>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_NEIGHBORS_SEARCH" VALUE="<TMPL_IF DISABLE_NEIGHBORS_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Neighbors Searches:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_NEIGHBORS_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_NEIGHBORS_SEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_NEIGHBORS_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_NEIGHBORS_SEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	      <TMPL_IF COMPANY_DISABLE_ASSOCIATES_SEARCH>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ASSOCIATES_SEARCH" VALUE="<TMPL_IF DISABLE_ASSOCIATES_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Associates Searches:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ASSOCIATES_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ASSOCIATES_SEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ASSOCIATES_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_ASSOCIATES_SEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	   </table>
	 </fieldset>
	      </TMPL_IF>
   </TMPL_UNLESS>
   <!-- -->

<!-- First Pursuit -->              
       <TMPL_UNLESS DA_ONLY>
         <TMPL_IF ENABLE_FIRST_PURSUIT>
	 <fieldset>
      <span class="unifont1bold"><legend>LexisNexis&reg; FirstPursuit&reg;</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
           
          <TMPL_IF IM_ON_COMP_SEC>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Equifax&reg; Report:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                    <TMPL_IF DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>
                          <tr>
                            <td class="unifont1">&nbsp;&nbsp;Disabled</i></td>
                            <td class="unifont1">&nbsp;&nbsp;&nbsp;</td>
                            <td></td>
                            <td class="unifont1"></td>
                          </tr>
                    <TMPL_ELSE>
                          <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Enable&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO ONCLICK="javascript:disable_warning();" NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">Disable</td>
                          </tr>
                    </TMPL_IF>
                    </table>
                </td>
              </TR>
          <TMPL_ELSE>
              <TMPL_IF COMPANY_DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE="<TMPL_IF DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Equifax&reg; Report:</TD>
                    <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>CHECKED</TMPL_UNLESS>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FIRST_PURSUIT_EQUIFAX" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FIRST_PURSUIT_EQUIFAX>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                      </tr>
                    </table>
                    </td>
                  </TR>
              </TMPL_IF>

          </TMPL_IF>


	   </table>
	 </fieldset>
      </TMPL_IF>
   </TMPL_UNLESS>

<!-- First Pursuit -->              
<!-- Credit Pursuit -->              
       <TMPL_UNLESS DA_ONLY>
         <TMPL_IF ENABLE_CREDIT_PURSUIT>
	 <fieldset>
      <span class="unifont1bold"><legend>LexisNexis&reg; Credit Pursuit</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
           
          <TMPL_IF IM_ON_COMP_SEC>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - Equifax&reg; Condensed:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                    <TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>
                          <tr>
                            <td class="unifont1">&nbsp;&nbsp;Disabled</td>
                            <td class="unifont1">&nbsp;&nbsp;&nbsp;</td>
                            <td></td>
                            <td class="unifont1"></td>
                          </tr>
                    <TMPL_ELSE>
                          <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Enable&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO ONCLICK="javascript:disable_warning();" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">Disable</td>
                          </tr>
                    </TMPL_IF>
                    </table>
                </td>
              </TR>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - Equifax&reg;:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                    <TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>
                          <tr>
                            <td class="unifont1">&nbsp;&nbsp;Disabled</td>
                            <td class="unifont1"></td>
                            <td></td>
                            <td class="unifont1"></td>
                          </tr>
                    <TMPL_ELSE>
                          <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Enable&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO ONCLICK="javascript:disable_warning();" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">Disable</td>
                          </tr>
                    </TMPL_IF>
                    </table>
                </td>
              </TR>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - TransUnion&reg; Condensed:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                    <TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>
                          <tr>
                            <td class="unifont1">&nbsp;&nbsp;Disabled</td>
                            <td class="unifont1">&nbsp;&nbsp;&nbsp;</td>
                            <td></td>
                            <td class="unifont1"></td>
                          </tr>
                    <TMPL_ELSE>
                          <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Enable&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO ONCLICK="javascript:disable_warning();" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">Disable</td>
                          </tr>
                    </TMPL_IF>
                    </table>
                </td>
              </TR>              
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - TransUnion&reg;:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                    <TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>
                          <tr>
                            <td class="unifont1">&nbsp;&nbsp;Disabled</td>
                            <td class="unifont1">&nbsp;&nbsp;&nbsp;</td>
                            <td></td>
                            <td class="unifont1"></td>
                          </tr>
                    <TMPL_ELSE>
                          <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Enable&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO ONCLICK="javascript:disable_warning();" NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">Disable</td>
                          </tr>
                    </TMPL_IF>
                    </table>
                </td>
              </TR>
          <TMPL_ELSE>
              <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - Equifax&reg; Condensed:</TD>
                    <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>CHECKED</TMPL_UNLESS>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_CONDENSED>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                      </tr>
                    </table>
                    </td>
                  </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - Equifax&reg;:</TD>
                    <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>CHECKED</TMPL_UNLESS>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_EQUIFAX_FULL>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                      </tr>
                    </table>
                    </td>
                  </TR>
              </TMPL_IF>


              <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - TransUnion&reg; Condensed:</TD>
                    <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>CHECKED</TMPL_UNLESS>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_CONDENSED>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                      </tr>
                    </table>
                    </td>
                  </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE="<TMPL_IF DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Credit Pursuit - TransUnion&reg;:</TD>
                    <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                      <tr>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>CHECKED</TMPL_UNLESS>></td>
                        <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                        <td><INPUT TYPE=RADIO NAME="DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL" VALUE='1' <TMPL_IF NAME=DISABLE_FDW_FCRA_CREDIT_PURSUIT_FULL>CHECKED</TMPL_IF>></td>
                        <td class="unifont1">No</td>
                      </tr>
                    </table>
                    </td>
                  </TR>
              </TMPL_IF>
          </TMPL_IF>
	   </table>
	 </fieldset>
      </TMPL_IF>
   </TMPL_UNLESS>

<!-- Credit Pursuit -->     

	      <!-- Miscellaneous -->

       <TMPL_UNLESS DA_ONLY>
	 <fieldset>
	  <span class="unifont1bold"><legend>Miscellaneous</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
        <TMPL_IF INSTANTID_FRAUD_DEFENDER_ENABLE_SECTION>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;All InstantID - Fraud Defender:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_ENABLE" VALUE='1' <TMPL_IF NAME=INSTANTID_FRAUD_DEFENDER_ENABLE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_ENABLE" VALUE='0' <TMPL_UNLESS NAME=INSTANTID_FRAUD_DEFENDER_ENABLE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
        </TMPL_IF>
        <TMPL_IF INSTANTID_FRAUD_DEFENDER_CHECKBOX_SECTION>
          <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;All InstantID - Fraud Defender Option:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_CHECKBOX" <TMPL_UNLESS SECURITY_COMPANY> onclick="document.getElementById('fraudCheckbox').style.display='';"</TMPL_UNLESS> VALUE='1' <TMPL_IF NAME=INSTANTID_FRAUD_DEFENDER_CHECKBOX>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_CHECKBOX" <TMPL_UNLESS SECURITY_COMPANY> onclick="document.getElementById('fraudCheckbox').style.display='none';"</TMPL_UNLESS> VALUE='0' <TMPL_UNLESS NAME=INSTANTID_FRAUD_DEFENDER_CHECKBOX>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
             <TMPL_UNLESS SECURITY_COMPANY>
             <TR id="fraudCheckbox" <TMPL_UNLESS NAME=INSTANTID_FRAUD_DEFENDER_CHECKBOX>style="display:none;"</TMPL_UNLESS> >
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;All InstantID - Fraud Defender Option Unchecked:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_UNCHECK_STATE" VALUE='1' <TMPL_IF NAME=INSTANTID_FRAUD_DEFENDER_UNCHECK_STATE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="INSTANT_ID_FRAUD_DEFENDER_UNCHECK_STATE" VALUE='0' <TMPL_UNLESS NAME=INSTANTID_FRAUD_DEFENDER_UNCHECK_STATE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
             </TR>
             </TMPL_UNLESS>
        </TMPL_IF>
	      <TMPL_IF COMPANY_DISABLE_MAPQUEST>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MAPQUEST" VALUE="<TMPL_IF DISABLE_MAPQUEST>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Address Map:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MAPQUEST" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MAPQUEST>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MAPQUEST" VALUE='1' <TMPL_IF NAME=DISABLE_MAPQUEST>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>

                  <!--
		  <TMPL_UNLESS NAME=DISALLOW_SATELLITE_IMAGE>
	      <TMPL_IF COMPANY_DISABLE_SATELLITE_IMAGE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_SATELLITE_IMAGE" VALUE="<TMPL_IF DISABLE_SATELLITE_IMAGE>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Satellite Image:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SATELLITE_IMAGE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SATELLITE_IMAGE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SATELLITE_IMAGE" VALUE='1' <TMPL_IF NAME=DISABLE_SATELLITE_IMAGE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
		  </TMPL_UNLESS>
                  -->

              <TMPL_IF ALLOW_FCRA>
	      <TMPL_IF COMPANY_DISABLE_VARIETY_BUNDLE>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_VARIETY_BUNDLE" VALUE="<TMPL_IF DISABLE_VARIETY_BUNDLE>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Supplemental Data Sources:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VARIETY_BUNDLE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_VARIETY_BUNDLE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VARIETY_BUNDLE" VALUE='1' <TMPL_IF NAME=DISABLE_VARIETY_BUNDLE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
              </TMPL_IF>

        <!--
        <TMPL_IF SHOW_EQUIFAX_RECOVERY_REPORT_SECTION>
        <TMPL_IF EQUIFAX_RECOVERY_REPORT_SECTION_HIDE_RADIO_BUTTONS>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Link to Equifax Recovery Report:</TD>
                <td width="25%" nowrap class="unifont1" align="left">&nbsp;<TMPL_VAR NAME=EQUIFAX_RECOVERY_REPORT_STATUS></td>
              </TR>
        <TMPL_ELSE>
	        <TMPL_IF COMPANY_EQUIFAX_RECOVERY_REPORT>
	        <INPUT TYPE=HIDDEN NAME="DISABLE_EQUIFAX_RECOVERY_REPORT" VALUE="<TMPL_IF DISABLE_EQUIFAX_RECOVERY_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
	        <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Link to Equifax Recovery Report:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EQUIFAX_RECOVERY_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_EQUIFAX_RECOVERY_REPORT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EQUIFAX_RECOVERY_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_EQUIFAX_RECOVERY_REPORT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	        </TMPL_IF>
        </TMPL_IF>
        </TMPL_IF>
        -->

          <TMPL_IF PHONE_FEEDBACK_ENABLED>
	    <TMPL_IF COMPANY_DISABLE_PHONE_FEEDBACK_ALLOW>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PHONE_FEEDBACK_ALLOW" VALUE="<TMPL_IF DISABLE_PHONE_FEEDBACK_ALLOW>1<TMPL_ELSE>0</TMPL_IF>">
	    <TMPL_ELSE>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Phone Feedback:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_FEEDBACK_ALLOW" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PHONE_FEEDBACK_ALLOW>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PHONE_FEEDBACK_ALLOW" VALUE='1' <TMPL_IF NAME=DISABLE_PHONE_FEEDBACK_ALLOW>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
            </TMPL_IF>
            <TMPL_IF COMPANY_DISABLE_PHONE_FEEDBACK_DISPLAY>
              <input type="hidden" name="DISABLE_PHONE_FEEDBACK_DISPLAY" value="<TMPL_IF DISABLE_PHONE_FEEDBACK_DISPLAY>1<TMPL_ELSE>0</TMPL_IF>"/>
            <TMPL_ELSE>
              <tr>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Phone Feedback Results Display:</td>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><input type="radio" name="DISABLE_PHONE_FEEDBACK_DISPLAY" value="0" <TMPL_UNLESS NAME=DISABLE_PHONE_FEEDBACK_DISPLAY>checked="checked"</TMPL_UNLESS>/></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="radio" name="DISABLE_PHONE_FEEDBACK_DISPLAY" value="1" <TMPL_IF NAME=DISABLE_PHONE_FEEDBACK_DISPLAY>checked="checked"</TMPL_IF>/></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </tr>
            </TMPL_IF>
          </TMPL_IF>

	      <TMPL_IF ENABLE_ADDRESS_FEEDBACK_SECTION>
	            <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Address Feedback:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ADDRESS_FEEDBACK_ALLOW" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ADDRESS_FEEDBACK_ALLOW>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ADDRESS_FEEDBACK_ALLOW" VALUE='1' <TMPL_IF NAME=DISABLE_ADDRESS_FEEDBACK_ALLOW>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>

	          <TMPL_IF ENABLE_ADDRESS_FEEDBACK_DISPLAY_SECTION>
              <tr>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Address Feedback Results Display:</td>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><input type="radio" name="DISABLE_ADDRESS_FEEDBACK_DISPLAY" value="0" <TMPL_UNLESS NAME=DISABLE_ADDRESS_FEEDBACK_DISPLAY>checked="checked"</TMPL_UNLESS>/></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="radio" name="DISABLE_ADDRESS_FEEDBACK_DISPLAY" value="1" <TMPL_IF NAME=DISABLE_ADDRESS_FEEDBACK_DISPLAY>checked="checked"</TMPL_IF>/></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </tr>
	          </TMPL_IF>
	      </TMPL_IF>
	      
	  <TMPL_UNLESS DELETE_ALERTING>
	      <TMPL_IF COMPANY_DISABLE_ENTITY_ALERTING>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ENTITY_ALERTING" VALUE="<TMPL_IF DISABLE_ENTITY_ALERTING>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Person Alerts:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ENTITY_ALERTING" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ENTITY_ALERTING>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ENTITY_ALERTING" VALUE='1' <TMPL_IF NAME=DISABLE_ENTITY_ALERTING>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      </TMPL_IF>
	</TMPL_UNLESS>
  <TMPL_IF ENABLE_SSN_ONLY_PERSON_SEARCH>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;SSN Only Search (Person / <TMPL_IF NAME="COL">Deep Skip<TMPL_ELSE>Advanced Person</TMPL_IF>):</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="SSN_ONLY_PERSON_SEARCH" VALUE='1' <TMPL_IF NAME=SSN_ONLY_PERSON_SEARCH>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="SSN_ONLY_PERSON_SEARCH" VALUE='0' <TMPL_UNLESS NAME=SSN_ONLY_PERSON_SEARCH>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
  </TMPL_IF>

  <TMPL_IF ALWAYS_DISPLAY_ENABLE_SOURCE_DOCS_INFO>
      <input type="hidden" name="DISABLE_SOURCE_DOCS_INFO" value="<TMPL_IF DISABLE_SOURCE_DOCS_INFO>0<TMPL_ELSE>0</TMPL_IF>"/>
  <TMPL_ELSE>
  <TMPL_IF ENABLE_SOURCE_DOCS_INFO>
      <TMPL_IF COMPANY_DISABLE_SOURCE_DOCS_INFO>
          <input type="hidden" name="DISABLE_SOURCE_DOCS_INFO" value="<TMPL_IF DISABLE_SOURCE_DOCS_INFO>1<TMPL_ELSE>0</TMPL_IF>"/>
    <TMPL_ELSE>
          <tr>
            <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;Source Documents Information:&nbsp;&nbsp;</td>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
          <td><input type="radio" name="DISABLE_SOURCE_DOCS_INFO" value="0" <TMPL_UNLESS NAME=DISABLE_SOURCE_DOCS_INFO>checked="checked" </TMPL_UNLESS>/></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><input type="radio" name="DISABLE_SOURCE_DOCS_INFO" value="1" <TMPL_IF NAME=DISABLE_SOURCE_DOCS_INFO>checked="checked" </TMPL_IF>/></td>
          <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </tr>
    </TMPL_IF>
  </TMPL_IF>
  </TMPL_IF>

  <TMPL_IF SHOW_MOBILE_ACCESS_OPTIONS>
          <tr>
            <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;Mobile Access Enabled:&nbsp;&nbsp;</td>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
          <td><input type="radio" name="DISABLE_MOBILE_ACCESS" value="0" <TMPL_UNLESS NAME=DISABLE_MOBILE_ACCESS>checked="checked" </TMPL_UNLESS>/></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><input type="radio" name="DISABLE_MOBILE_ACCESS" value="1" <TMPL_IF NAME=DISABLE_MOBILE_ACCESS>checked="checked" </TMPL_IF>/></td>
          <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </tr>
  </TMPL_IF>
	<TMPL_IF MYACCOUNT_GROUPS_ENABLED>
          <tr>
            <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;Hide Option for No Group:&nbsp;&nbsp;</td>
            <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="HIDE_OPTION_FOR_NO_GROUP" VALUE='1' <TMPL_IF NAME=HIDE_OPTION_FOR_NO_GROUP>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="HIDE_OPTION_FOR_NO_GROUP" VALUE='0' <TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
            </td>
          </tr>
	</TMPL_IF>
           </table>

	 </fieldset>
       </TMPL_UNLESS>

	      <TMPL_IF DA_ONLY>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_PERSON" VALUE="<TMPL_IF DISABLE_PERSON><TMPL_VAR DISABLE_PERSON><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ASSESSMENT" VALUE="<TMPL_IF DISABLE_ASSESSMENT><TMPL_VAR DISABLE_ASSESSMENT><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DEEDS" VALUE="<TMPL_IF DISABLE_DEEDS><TMPL_VAR DISABLE_DEEDS><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DL" VALUE="<TMPL_IF DISABLE_DL><TMPL_VAR DISABLE_DL><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MV" VALUE="<TMPL_IF DISABLE_MV><TMPL_VAR DISABLE_MV><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_FAA_PILOT" VALUE="<TMPL_IF DISABLE_FAA_PILOT><TMPL_VAR DISABLE_FAA_PILOT><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_ACCIDENT" VALUE="<TMPL_IF DISABLE_ACCIDENT><TMPL_VAR DISABLE_ACCIDENT><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_CORPORATION" VALUE="<TMPL_IF DISABLE_CORPORATION><TMPL_VAR DISABLE_CORPORATION><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_UCC" VALUE="<TMPL_IF DISABLE_UCC><TMPL_VAR DISABLE_UCC><TMPL_ELSE>0</TMPL_IF>">
	      <INPUT TYPE=HIDDEN NAME="DISABLE_WHOIS" VALUE="<TMPL_IF DISABLE_WHOIS><TMPL_VAR DISABLE_WHOIS><TMPL_ELSE>0</TMPL_IF>">
	      </TMPL_IF>
<!-- END manage_account_disable_searches.tpl -->

