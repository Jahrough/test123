<!-- BEGIN le/manage_account_disable_searches.tpl -->
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td class="unifont1" colspan="2"><b>Enable Search / Report Settings:</b><TMPL_UNLESS DA_ONLY><TMPL_UNLESS ATACRAIDS_ONLY>&nbsp;<span class="smallfont1"> (Disabling Search settings will also disable these options on Reports)</TMPL_UNLESS></TMPL_UNLESS><br></td>
          </TR>
           </table>

      <TMPL_UNLESS DA_ONLY>

          <!-- People -->
      <TMPL_UNLESS ATACRAIDS_ONLY>
      <fieldset>
      <span class="unifont1bold"><legend>People</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

          <TMPL_UNLESS ENABLE_MYACC_V3>
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

        <TMPL_UNLESS HIDE_RT_PERSON>
          <TMPL_IF COMPANY_DISABLE_RT_PERSON>
          <INPUT TYPE=HIDDEN NAME="DISABLE_RT_PERSON" VALUE="<TMPL_IF DISABLE_RT_PERSON>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real-Time Person Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_PERSON" VALUE='0' <TMPL_UNLESS NAME=DISABLE_RT_PERSON>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_RT_PERSON" VALUE='1' <TMPL_IF NAME=DISABLE_RT_PERSON>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
      </TMPL_UNLESS>

          <TMPL_IF NAME=ENABLE_ADVANCED_SEARCH>
          <TMPL_IF COMPANY_DISABLE_ADV>
          <INPUT TYPE=HIDDEN NAME="DISABLE_ADV" VALUE="<TMPL_IF DISABLE_ADV>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="10%" nowrap class="unifont1" align="left">&nbsp;<TMPL_IF NAME="COL">Deep Skip Search:<TMPL_ELSE>Advanced Person Search:</TMPL_IF>&nbsp;&nbsp;</TD>
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

          <TMPL_UNLESS NAME=DISALLOW_PAW_SEARCH>
          <TMPL_IF COMPANY_DISABLE_PAW>
          <INPUT TYPE=HIDDEN NAME="DISABLE_PAW" VALUE="<TMPL_IF DISABLE_PAW>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;People at Work:&nbsp;&nbsp;</TD>
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

          <TMPL_INCLUDE NAME=instant_id.tpl> <!-- new InstantID options -->

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
          </TMPL_UNLESS>

              <TMPL_IF NAME="INS">
          <TMPL_IF COMPANY_DISABLE_PSPR>
          <INPUT TYPE=HIDDEN NAME="DISABLE_PSPR" VALUE="<TMPL_IF DISABLE_PSPR>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Statewide Public Records:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PSPR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PSPR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PSPR" VALUE='1' <TMPL_IF NAME=DISABLE_PSPR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

          </TMPL_IF>
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

              <TMPL_IF ENABLE_V2>
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

              <TMPL_IF SHOW_SOCIAL_REPORT>
              <TMPL_IF COMPANY_DISABLE_SOC_REPORT>
              <INPUT TYPE=HIDDEN NAME="DISABLE_SOC_REPORT" VALUE="<TMPL_IF DISABLE_SOC_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Virtual Identity Search:</TD>
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
              
              <TMPL_IF SHOW_LOCATION_REPORT_LINK>
              <TMPL_IF COMPANY_DISABLE_LOCATION_REPORT>
                  <INPUT TYPE=HIDDEN NAME="DISABLE_LOCATION_REPORT" VALUE="<TMPL_IF DISABLE_LOCATION_REPORT>1<TMPL_ELSE>0</TMPL_IF>">                
              <TMPL_ELSE>
                  <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Law Enforcement Location Report:</TD>
                    <td width="25%" align="left">
                      <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                          <td><INPUT TYPE=RADIO NAME="DISABLE_LOCATION_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_LOCATION_REPORT>CHECKED</TMPL_UNLESS>></td>
                          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                          <td><INPUT TYPE=RADIO NAME="DISABLE_LOCATION_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_LOCATION_REPORT>CHECKED</TMPL_IF>></td>
                          <td class="unifont1">No</td>
                        </tr>
                      </table>
                    </td>
                  </TR>
              </TMPL_IF>
              </TMPL_IF>
        <TMPL_IF SHOW_POWER_BOOLEAN>
              <TMPL_IF COMPANY_DISABLE_POWER_BOOLEAN>
              <input type="hidden" name="DISABLE_POWER_BOOLEAN" VALUE="<TMPL_IF DISABLE_POWER_BOOLEAN>1<TMPL_ELSE>0</TMPL_IF>"/>
              <TMPL_ELSE>
              <tr>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Power Search:</td>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><input type="radio" name="DISABLE_POWER_BOOLEAN" VALUE="0" <TMPL_UNLESS NAME=DISABLE_POWER_BOOLEAN>checked="checked"</TMPL_UNLESS>/></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="radio" name="DISABLE_POWER_BOOLEAN" VALUE="1" <TMPL_IF NAME=DISABLE_POWER_BOOLEAN>checked="checked"</TMPL_IF>/></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </tr>
              </TMPL_IF>
        </TMPL_IF>

        <TMPL_UNLESS HIDE_WORKPLACE>
        <TMPL_IF SHOW_WORKPLACE_SEARCH>
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
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_UNLESS HIDE_PASSPORT_SEARCH>
        <TMPL_IF COMPANY_DISABLE_PASSPORT_SEARCH>
            <INPUT TYPE=HIDDEN NAME="DISABLE_PASSPORT_SEARCH" VALUE="<TMPL_IF DISABLE_PASSPORT_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
        <TMPL_ELSE>
            <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Passport Validation Report:</TD>
                <td width="25%" align="left">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_PASSPORT_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PASSPORT_SEARCH>CHECKED</TMPL_UNLESS>></td>
                            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                            <td><INPUT TYPE=RADIO NAME="DISABLE_PASSPORT_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_PASSPORT_SEARCH>CHECKED</TMPL_IF>></td>
                            <td class="unifont1">No</td>
                        </tr>
                    </table>
                </td>
            </TR>
        </TMPL_IF>
        </TMPL_UNLESS>

        <TMPL_IF SHOW_MANAGE_SM_MONITOR>
              <TMPL_IF COMPANY_DISABLE_SM_MONITOR>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_SM_MONITOR" VALUE="<TMPL_IF DISABLE_SM_MONITOR>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Accurint&reg; Social Media Analytics:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SM_MONITOR"<TMPL_UNLESS IM_ON_COMP_SEC><TMPL_UNLESS MANAGE_GROUPS> onclick="show_hide_sm_monitor_block(1);"</TMPL_UNLESS></TMPL_UNLESS> VALUE='0' <TMPL_UNLESS NAME=DISABLE_SM_MONITOR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SM_MONITOR"<TMPL_UNLESS IM_ON_COMP_SEC><TMPL_UNLESS MANAGE_GROUPS> onclick="show_hide_sm_monitor_block(0);"</TMPL_UNLESS></TMPL_UNLESS> VALUE='1' <TMPL_IF NAME=DISABLE_SM_MONITOR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
	      <TMPL_UNLESS IM_ON_COMP_SEC>
          <TMPL_UNLESS MANAGE_GROUPS>
	        <TR>
              <td colspan="2" width="100%">
                <div id="SM_MONITOR_ROLES" style="<TMPL_IF DISABLE_SM_MONITOR> display:none;<TMPL_ELSE> display:inline-block;</TMPL_IF>text-align:left;">          
                  <span class="unifont1">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Role:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <INPUT TYPE=RADIO NAME="SM_MONITOR_ROLE" VALUE='1' <TMPL_IF NAME=SM_MONITOR_1>CHECKED</TMPL_IF>>
                    Super&nbsp;&nbsp;&nbsp;
                    <INPUT TYPE=RADIO NAME="SM_MONITOR_ROLE" VALUE='2' <TMPL_IF NAME=SM_MONITOR_2>CHECKED</TMPL_IF>>
                    Basic&nbsp;&nbsp;&nbsp;
                    <INPUT TYPE=RADIO NAME="SM_MONITOR_ROLE" VALUE='3' <TMPL_IF NAME=SM_MONITOR_3>CHECKED</TMPL_IF>>
                    Read Only&nbsp;
                  </span>
                </div>
              </td>
            </TR>
          </TMPL_UNLESS>  
	      </TMPL_UNLESS>
	      </TMPL_IF>
        
        
        </TMPL_IF>

        <TMPL_UNLESS DO_NOT_DISPLAY_KBA>      
        <TMPL_UNLESS HIDE_KBA>
        <TMPL_IF COMPANY_DISABLE_KBA>
          <INPUT TYPE=HIDDEN NAME="DISABLE_KBA" VALUE="<TMPL_IF DISABLE_KBA>1<TMPL_ELSE>0</TMPL_IF>">
        <TMPL_ELSE>
          <tr>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;ID Verification Report:</TD>
            <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_KBA" VALUE='0' <TMPL_UNLESS NAME=DISABLE_KBA>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_KBA" VALUE='1' <TMPL_IF NAME=DISABLE_KBA>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
 	          </table>
            </td>
          </tr>
        </TMPL_IF>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        </TMPL_IF>
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

          <TMPL_IF INS>
          <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
          <TMPL_IF COMPANY_DISABLE_SEC>
          <INPUT TYPE=HIDDEN NAME="DISABLE_SEC" VALUE="<TMPL_IF DISABLE_SEC>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;SEC Filings:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SEC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SEC>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SEC" VALUE='1' <TMPL_IF NAME=DISABLE_SEC>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
          </TMPL_UNLESS>

          <TMPL_IF COMPANY_DISABLE_OSHA>
          <INPUT TYPE=HIDDEN NAME="DISABLE_OSHA" VALUE="<TMPL_IF DISABLE_OSHA>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;OSHA Investigative Reports:</TD>
          <td width="25%" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_OSHA" VALUE='0' <TMPL_UNLESS NAME=DISABLE_OSHA>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_OSHA" VALUE='1' <TMPL_IF NAME=DISABLE_OSHA>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
          </tr>
          </table>
          </td>
          </TR>
          </TMPL_IF>

          <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
          <TMPL_IF COMPANY_DISABLE_DBGLOBAL>
          <INPUT TYPE=HIDDEN NAME="DISABLE_DBGLOBAL" VALUE="<TMPL_IF DISABLE_DBGLOBAL>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;D & B Global Market Identifiers:</TD>
          <td width="25%" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_DBGLOBAL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DBGLOBAL>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_DBGLOBAL" VALUE='1' <TMPL_IF NAME=DISABLE_DBGLOBAL>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
          </tr>
          </table>
          </td>
          </TR>
          </TMPL_IF>
          </TMPL_UNLESS>

          </TMPL_IF>

        <TMPL_IF ENABLE_V2>
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

          <TMPL_IF COMPANY_DISABLE_FEIN>
          <INPUT TYPE=HIDDEN NAME="DISABLE_FEIN" VALUE="<TMPL_IF DISABLE_FEIN>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Federal Employer ID Numbers (FEIN):&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FEIN" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FEIN>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FEIN" VALUE='1' <TMPL_IF NAME=DISABLE_FEIN>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
        </TMPL_IF>


           </table>
     </fieldset>


    <!-- Health Care -->
     <fieldset>
      <span class="unifont1bold"><legend>Health Care</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

              <TMPL_IF COMPANY_DISABLE_PROVIDER>
              <INPUT TYPE=HIDDEN NAME="DISABLE_PROVIDER" VALUE="<TMPL_IF DISABLE_PROVIDER>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Provider Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PROVIDER" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PROVIDER>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_PROVIDER" VALUE='1' <TMPL_IF NAME=DISABLE_PROVIDER>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_SANCTION>
              <INPUT TYPE=HIDDEN NAME="DISABLE_SANCTION" VALUE="<TMPL_IF DISABLE_SANCTION>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Provider Sanction Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SANCTION" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SANCTION>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SANCTION" VALUE='1' <TMPL_IF NAME=DISABLE_SANCTION>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>


          <TMPL_IF COMPANY_DISABLE_OABMS>
          <INPUT TYPE=HIDDEN NAME="DISABLE_OABMS" VALUE="<TMPL_IF DISABLE_OABMS>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;American Board of Medical Specialties:&nbsp;&nbsp;</TD>
          <td width="25%" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_OABMS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_OABMS>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_OABMS" VALUE='1' <TMPL_IF NAME=DISABLE_OABMS>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
          </tr>
          </table>
          </td>
          </TR>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_NPI_SEARCH>
          <INPUT TYPE=HIDDEN NAME="DISABLE_NPI_SEARCH" VALUE="<TMPL_IF DISABLE_NPI_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;NPI Data Search:</TD>
          <td width="25%" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_NPI_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_NPI_SEARCH>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_NPI_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_NPI_SEARCH>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
          </tr>
          </table>
          </td>
          </TR>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_CLIA_SEARCH>
          <INPUT TYPE=HIDDEN NAME="DISABLE_CLIA_SEARCH" VALUE="<TMPL_IF DISABLE_CLIA_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
          <td width="75%" nowrap class="unifont1" align="left">&nbsp;CLIA Certificate Search:</TD>
          <td width="25%" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
          <td><INPUT TYPE=RADIO NAME="DISABLE_CLIA_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CLIA_SEARCH>CHECKED</TMPL_UNLESS>></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><INPUT TYPE=RADIO NAME="DISABLE_CLIA_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_CLIA_SEARCH>CHECKED</TMPL_IF>></td>
          <td class="unifont1">No</td>
          </tr>
          </table>
          </td>
          </TR>
          </TMPL_IF>

          <TMPL_UNLESS HIDE_NCPDP>
              <TMPL_IF COMPANY_DISABLE_NCPDP_SEARCH>
              <INPUT TYPE=HIDDEN NAME="DISABLE_NCPDP_SEARCH" VALUE="<TMPL_IF DISABLE_NCPDP_SEARCH>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
              <td width="75%" nowrap class="unifont1" align="left">&nbsp;NCPDP Search:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
              <tr>
              <td><INPUT TYPE=RADIO NAME="DISABLE_NCPDP_SEARCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_NCPDP_SEARCH>CHECKED</TMPL_UNLESS>></td>
              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
              <td><INPUT TYPE=RADIO NAME="DISABLE_NCPDP_SEARCH" VALUE='1' <TMPL_IF NAME=DISABLE_NCPDP_SEARCH>CHECKED</TMPL_IF>></td>
              <td class="unifont1">No</td>
              </tr>
              </table>
              </td>
              </TR>
              </TMPL_IF>
           </TMPL_UNLESS>
           <TMPL_IF COMPANY_DISABLE_DISCLOSED_ENTITY_REPORT>
             <INPUT TYPE=HIDDEN NAME="DISABLE_DISCLOSED_ENTITY_REPORT" VALUE="<TMPL_IF DISABLE_DISCLOSED_ENITY_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
           <TMPL_ELSE>
             <TR>
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;Disclosed Entity:</TD>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
             <td><INPUT TYPE=RADIO NAME="DISABLE_DISCLOSED_ENTITY_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DISCLOSED_ENTITY_REPORT>CHECKED</TMPL_UNLESS>></td>
             <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
             <td><INPUT TYPE=RADIO NAME="DISABLE_DISCLOSED_ENTITY_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_DISCLOSED_ENTITY_REPORT>CHECKED</TMPL_IF>></td>
             <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
             </TR>
           </TMPL_IF>
           <TMPL_IF COMPANY_DISABLE_PROVIDER_REPORT_CARD>
             <INPUT TYPE=HIDDEN NAME="DISABLE_PROVIDER_REPORT_CARD" VALUE="<TMPL_IF DISABLE_PROVIDER_REPORT_CARD>1<TMPL_ELSE>0</TMPL_IF>">
           <TMPL_ELSE>
             <TR>
             <td width="75%" nowrap class="unifont1" align="left">&nbsp;Provider Report Card:</TD>
             <td width="25%" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
             <tr>
             <td><INPUT TYPE=RADIO NAME="DISABLE_PROVIDER_REPORT_CARD" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PROVIDER_REPORT_CARD>CHECKED</TMPL_UNLESS>></td>
             <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
             <td><INPUT TYPE=RADIO NAME="DISABLE_PROVIDER_REPORT_CARD" VALUE='1' <TMPL_IF NAME=DISABLE_PROVIDER_REPORT_CARD>CHECKED</TMPL_IF>></td>
             <td class="unifont1">No</td>
             </tr>
             </table>
             </td>
             </TR>
           </TMPL_IF>
           </table>
     </fieldset>

          <!-- Assets -->

     <fieldset>
      <span class="unifont1bold"><legend>Assets</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

          <TMPL_UNLESS DO_NOT_DISPLAY_COMBINED_MVR>
          <TMPL_IF COMPANY_DISABLE_COMBINED_MVR>
          <INPUT TYPE=HIDDEN NAME="DISABLE_COMBINED_MVR" VALUE="<TMPL_IF DISABLE_COMBINED_MVR>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Advanced Motor Vehicles:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_COMBINED_MVR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_COMBINED_MVR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_COMBINED_MVR" VALUE='1' <TMPL_IF NAME=DISABLE_COMBINED_MVR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
          </TMPL_UNLESS>

          <TMPL_IF COMPANY_DISABLE_CARFAX>
          <INPUT TYPE=HIDDEN NAME="DISABLE_CARFAX" VALUE="<TMPL_IF DISABLE_CARFAX>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Carfax:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CARFAX" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CARFAX>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CARFAX" VALUE='1' <TMPL_IF NAME=DISABLE_CARFAX>CHECKED</TMPL_IF>></td>
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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real Property:</TD>
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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Assessments:</TD>
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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Property Deeds:</TD>
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

          <TMPL_IF ALLOW_AVM_REPORT>
          <TMPL_IF COMPANY_DISABLE_AVM>
          <INPUT TYPE=HIDDEN NAME="DISABLE_AVM" VALUE="<TMPL_IF DISABLE_AVM>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Automated Valuation Models:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_AVM" VALUE='0' <TMPL_UNLESS NAME=DISABLE_AVM>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_AVM" VALUE='1' <TMPL_IF NAME=DISABLE_AVM>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_VESSEL>
          <INPUT TYPE=HIDDEN NAME="DISABLE_VESSEL" VALUE="<TMPL_IF DISABLE_VESSEL>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Watercraft:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VESSEL" VALUE='0' <TMPL_UNLESS NAME=DISABLE_VESSEL>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_VESSEL" VALUE='1' <TMPL_IF NAME=DISABLE_VESSEL>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_AIRCRAFT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_AIRCRAFT" VALUE="<TMPL_IF DISABLE_AIRCRAFT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FAA Aircraft:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_AIRCRAFT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_AIRCRAFT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_AIRCRAFT" VALUE='1' <TMPL_IF NAME=DISABLE_AIRCRAFT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
           </table>
     </fieldset>
     </TMPL_UNLESS>

    <!-- Analytics -->
    <TMPL_UNLESS HIDE_CRIME_ANALYTICS>
      <fieldset>
      <span class="unifont1bold"><legend>Analytics</legend></span>
      <TMPL_IF ALLOW_ATACRAIDS_SSO>
        <TMPL_IF COMPANY_DISABLE_ATACRAIDS>
          <INPUT TYPE=HIDDEN NAME="DISABLE_ATACRAIDS" VALUE="<TMPL_IF DISABLE_ATACRAIDS>1<TMPL_ELSE>0</TMPL_IF>">
        <TMPL_ELSE>
          <table border="0" cellpadding="0" cellspacing="0" width="95%">
            <tr>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;Accurint&reg; Crime Analysis:</TD>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
              <td><INPUT TYPE=RADIO NAME="DISABLE_ATACRAIDS"<TMPL_UNLESS IM_ON_COMP_SEC><TMPL_UNLESS MANAGE_GROUPS> onclick="show_hide_atacraids_block(1);"</TMPL_UNLESS></TMPL_UNLESS> VALUE='0' <TMPL_UNLESS NAME=DISABLE_ATACRAIDS>CHECKED</TMPL_UNLESS>></td>
              <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
              <td><INPUT TYPE=RADIO NAME="DISABLE_ATACRAIDS"<TMPL_UNLESS IM_ON_COMP_SEC><TMPL_UNLESS MANAGE_GROUPS> onclick="show_hide_atacraids_block(0);"</TMPL_UNLESS></TMPL_UNLESS> VALUE='1' <TMPL_IF NAME=DISABLE_ATACRAIDS>CHECKED</TMPL_IF>></td>
              <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
            </tr>
            <TMPL_UNLESS IM_ON_COMP_SEC>
              <TMPL_UNLESS MANAGE_GROUPS>
                <tr>
                <td colspan="2" width="100%">
                  <div id="ATACRAIDS_ROLES" style="<TMPL_IF DISABLE_ATACRAIDS> display:none;<TMPL_ELSE> display:inline-block;</TMPL_IF>text-align:left;">
                    <span class="unifont1">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Role:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <INPUT TYPE=RADIO NAME="ATACRAIDS_ROLE" VALUE='1' <TMPL_IF NAME=ATACRAIDS_ROLE_1>CHECKED</TMPL_IF>>
                      Admin&nbsp;&nbsp;&nbsp;
                      <INPUT TYPE=RADIO NAME="ATACRAIDS_ROLE" VALUE='2' <TMPL_IF NAME=ATACRAIDS_ROLE_2>CHECKED</TMPL_IF>>
                      Basic&nbsp;&nbsp;&nbsp;
                    </span>
                  </div>
                </td>
                </tr>
              </TMPL_UNLESS>  
            </TMPL_UNLESS>
          </table>
        </TMPL_IF>
      </TMPL_IF>

      <TMPL_IF ALLOW_AVCC>
        <table border="0" cellpadding="0" cellspacing="0" width="95%">
          <TMPL_IF IM_ON_COMP_SEC>
            <tr>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;Accurint&reg; Virtual Crime Center:</TD>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
                <td><INPUT TYPE=RADIO NAME="DISABLE_AVCC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_AVCC>CHECKED</TMPL_UNLESS>></td>
                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                <td><INPUT TYPE=RADIO NAME="DISABLE_AVCC" VALUE='1' <TMPL_IF NAME=DISABLE_AVCC>CHECKED</TMPL_IF>></td>
                <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
            </tr>   
          <TMPL_ELSE>
            <TMPL_IF COMPANY_AVCC_ENABLED>
              <tr>
              <td width="75%" nowrap class="unifont1" align="left">&nbsp;Accurint&reg; Virtual Crime Center:</TD>
              <td width="25%" align="left">
              <table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_AVCC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_AVCC>CHECKED</TMPL_UNLESS>></td>
                  <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                  <td><INPUT TYPE=RADIO NAME="DISABLE_AVCC" VALUE='1' <TMPL_IF NAME=DISABLE_AVCC>CHECKED</TMPL_IF>></td>
                  <td class="unifont1">No</td>
                </tr>
              </table>
              </td>
              </tr>   
            </TMPL_IF>
          </TMPL_IF>
        </table>
      </TMPL_IF>
      </fieldset>
    </TMPL_UNLESS>

    <!-- Licenses -->
    <TMPL_UNLESS ATACRAIDS_ONLY>
     <fieldset>
      <span class="unifont1bold"><legend>Licenses</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
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

          <TMPL_IF COMPANY_DISABLE_FAA_PILOT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_FAA_PILOT" VALUE="<TMPL_IF DISABLE_FAA_PILOT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;FAA Pilots:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FAA_PILOT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FAA_PILOT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FAA_PILOT" VALUE='1' <TMPL_IF NAME=DISABLE_FAA_PILOT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_HUNTING_LICENSE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_HUNTING_LICENSE" VALUE="<TMPL_IF DISABLE_HUNTING_LICENSE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Hunting and Fishing License Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_HUNTING_LICENSE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_HUNTING_LICENSE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_HUNTING_LICENSE" VALUE='1' <TMPL_IF NAME=DISABLE_HUNTING_LICENSE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_CONCEALED_WEAPON>
              <INPUT TYPE=HIDDEN NAME="DISABLE_CONCEALED_WEAPON" VALUE="<TMPL_IF DISABLE_CONCEALED_WEAPON>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Concealed Weapon Permit Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CONCEALED_WEAPON" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CONCEALED_WEAPON>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CONCEALED_WEAPON" VALUE='1' <TMPL_IF NAME=DISABLE_CONCEALED_WEAPON>CHECKED</TMPL_IF>></td>
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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Voter Registration Search:</TD>
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

              <TMPL_IF COMPANY_DISABLE_FIREARMS>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FIREARMS" VALUE="<TMPL_IF DISABLE_FIREARMS>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Firearms Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FIREARMS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FIREARMS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FIREARMS" VALUE='1' <TMPL_IF NAME=DISABLE_FIREARMS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_DEA>
              <INPUT TYPE=HIDDEN NAME="DISABLE_DEA" VALUE="<TMPL_IF DISABLE_DEA>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;DEA Controlled Substances Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEA" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DEA>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_DEA" VALUE='1' <TMPL_IF NAME=DISABLE_DEA>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

                <TMPL_UNLESS NAME=DISALLOW_MVR_REPORT>
              <TMPL_IF COMPANY_DISABLE_MVR>
              <INPUT TYPE=HIDDEN NAME="DISABLE_MVR" VALUE="<TMPL_IF DISABLE_MVR>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;MVR Reports (Driving Records):</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MVR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MVR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MVR" VALUE='1' <TMPL_IF NAME=DISABLE_MVR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_UNLESS>
           </table>
     </fieldset>
		
          <!-- Courts -->

     <fieldset>
       <span class="unifont1bold"><legend>Courts</legend></span>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
          <TMPL_IF ENABLE_V2>
          <TMPL_IF NAME="HYBRID_BLJ">
          <TMPL_IF COMPANY_DISABLE_BLJ>
          <INPUT TYPE=HIDDEN NAME="DISABLE_BLJ" VALUE="<TMPL_IF DISABLE_BLJ>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Bankruptcy, Liens &amp; Judgments Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BLJ" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BLJ>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BLJ" VALUE='1' <TMPL_IF NAME=DISABLE_BLJ>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
          </TMPL_IF>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_BANKRUPTCY>
          <INPUT TYPE=HIDDEN NAME="DISABLE_BANKRUPTCY" VALUE="<TMPL_IF DISABLE_BANKRUPTCY>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Bankruptcy Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BANKRUPTCY" VALUE='0' <TMPL_UNLESS NAME=DISABLE_BANKRUPTCY>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_BANKRUPTCY" VALUE='1' <TMPL_IF NAME=DISABLE_BANKRUPTCY>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_LIEN>
          <INPUT TYPE=HIDDEN NAME="DISABLE_LIEN" VALUE="<TMPL_IF DISABLE_LIEN>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Liens and Judgments Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_LIEN" VALUE='0' <TMPL_UNLESS NAME=DISABLE_LIEN>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_LIEN" VALUE='1' <TMPL_IF NAME=DISABLE_LIEN>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_CRIM>
          <INPUT TYPE=HIDDEN NAME="DISABLE_CRIM" VALUE="<TMPL_IF DISABLE_CRIM>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;State & Local Criminal:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CRIM" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CRIM>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CRIM" VALUE='1' <TMPL_IF NAME=DISABLE_CRIM>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_CIVIL_COURT>
              <INPUT TYPE=HIDDEN NAME="DISABLE_CIVIL_COURT" VALUE="<TMPL_IF DISABLE_CIVIL_COURT>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Civil Courts Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CIVIL_COURT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_CIVIL_COURT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_CIVIL_COURT" VALUE='1' <TMPL_IF NAME=DISABLE_CIVIL_COURT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

          <TMPL_IF COMPANY_DISABLE_ACCIDENT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_ACCIDENT" VALUE="<TMPL_IF DISABLE_ACCIDENT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;National Motor Vehicle Accidents Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ACCIDENT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ACCIDENT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_ACCIDENT" VALUE='1' <TMPL_IF NAME=DISABLE_ACCIDENT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>

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
        </TMPL_IF>
          </TMPL_IF>
              <TMPL_IF COMPANY_DISABLE_SEXPREDATOR>
              <INPUT TYPE=HIDDEN NAME="DISABLE_SEXPREDATOR" VALUE="<TMPL_IF DISABLE_SEXPREDATOR>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Sexual Offenders Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SEXPREDATOR" VALUE='0' <TMPL_UNLESS NAME=DISABLE_SEXPREDATOR>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_SEXPREDATOR" VALUE='1' <TMPL_IF NAME=DISABLE_SEXPREDATOR>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_OFFICIAL_RECORDS>
              <INPUT TYPE=HIDDEN NAME="DISABLE_OFFICIAL_RECORDS" VALUE="<TMPL_IF DISABLE_OFFICIAL_RECORDS>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Official Records Search:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_OFFICIAL_RECORDS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_OFFICIAL_RECORDS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_OFFICIAL_RECORDS" VALUE='1' <TMPL_IF NAME=DISABLE_OFFICIAL_RECORDS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_MARRIAGE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_MARRIAGE" VALUE="<TMPL_IF DISABLE_MARRIAGE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Marriages / Divorces:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MARRIAGE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MARRIAGE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MARRIAGE" VALUE='1' <TMPL_IF NAME=DISABLE_MARRIAGE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF COMPANY_DISABLE_FORECLOSURE>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FORECLOSURE" VALUE="<TMPL_IF DISABLE_FORECLOSURE>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Foreclosures:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FORECLOSURE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FORECLOSURE>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_FORECLOSURE" VALUE='1' <TMPL_IF NAME=DISABLE_FORECLOSURE>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>

              <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
              <TMPL_IF COMPANY_DISABLE_JAILBOOKING>
              <INPUT TYPE=HIDDEN NAME="DISABLE_JAILBOOKING" VALUE="<TMPL_IF DISABLE_JAILBOOKING>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Jail Bookings:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_JAILBOOKING" VALUE='0' <TMPL_UNLESS NAME=DISABLE_JAILBOOKING>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_JAILBOOKING" VALUE='1' <TMPL_IF NAME=DISABLE_JAILBOOKING>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
              </TMPL_IF>
              </TMPL_IF>

          <TMPL_UNLESS DO_NOT_DISPLAY_FED_CIVIL_COURT>
          <TMPL_IF COMPANY_DISABLE_FED_CIVIL_COURT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_FED_CIVIL_COURT" VALUE="<TMPL_IF DISABLE_FED_CIVIL_COURT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;Federal Civil Court Records:&nbsp;&nbsp;</TD>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
            <td><INPUT TYPE=RADIO NAME="DISABLE_FED_CIVIL_COURT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FED_CIVIL_COURT>CHECKED</TMPL_UNLESS>></td>
            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
            <td><INPUT TYPE=RADIO NAME="DISABLE_FED_CIVIL_COURT" VALUE='1' <TMPL_IF NAME=DISABLE_FED_CIVIL_COURT>CHECKED</TMPL_IF>></td>
            <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </TR>
          </TMPL_IF>
          </TMPL_UNLESS>
          
          <TMPL_IF COMPANY_DISABLE_FED_CRIM_COURT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_FED_CRIM_COURT" VALUE="<TMPL_IF DISABLE_FED_CRIM_COURT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;Federal Criminal Court Records:&nbsp;&nbsp;</TD>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
            <td><INPUT TYPE=RADIO NAME="DISABLE_FED_CRIM_COURT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_FED_CRIM_COURT>CHECKED</TMPL_UNLESS>></td>
            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
            <td><INPUT TYPE=RADIO NAME="DISABLE_FED_CRIM_COURT" VALUE='1' <TMPL_IF NAME=DISABLE_FED_CRIM_COURT>CHECKED</TMPL_IF>></td>
            <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </TR>
          </TMPL_IF>

                  <!--
          <TMPL_IF COMPANY_DISABLE_COURT_CASE>
          <INPUT TYPE=HIDDEN NAME="DISABLE_COURT_CASE" VALUE="<TMPL_IF DISABLE_COURT_CASE>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
          <TR>
            <td width="75%" nowrap class="unifont1" align="left">&nbsp;Court Case by Topic:&nbsp;&nbsp;</TD>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
            <td><INPUT TYPE=RADIO NAME="DISABLE_COURT_CASE" VALUE='0' <TMPL_UNLESS NAME=DISABLE_COURT_CASE>CHECKED</TMPL_UNLESS>></td>
            <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
            <td><INPUT TYPE=RADIO NAME="DISABLE_COURT_CASE" VALUE='1' <TMPL_IF NAME=DISABLE_COURT_CASE>CHECKED</TMPL_IF>></td>
            <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </TR>
          </TMPL_IF>
          -->

          
           </table>
     </fieldset>
      </TMPL_UNLESS>
      </TMPL_UNLESS>



          <!-- Directory Assistance -->

      <TMPL_UNLESS ATACRAIDS_ONLY>
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

        <TMPL_UNLESS ENABLE_V2>
        <TMPL_IF NAME=ENABLE_LOCATE_PLUS_SEARCH>
          <TMPL_IF COMPANY_DISABLE_LOCATE_PLUS>
          <INPUT TYPE=HIDDEN NAME="DISABLE_LOCATE_PLUS" VALUE="<TMPL_IF DISABLE_LOCATE_PLUS>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Phone Network Gateway:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_LOCATE_PLUS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_LOCATE_PLUS>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_LOCATE_PLUS" VALUE='1' <TMPL_IF NAME=DISABLE_LOCATE_PLUS>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </TR>
          </TMPL_IF>
        </TMPL_IF>
        </TMPL_UNLESS>
     </table>
     </fieldset>
     </TMPL_UNLESS>


      <!-- Next Steps -->
       <TMPL_UNLESS ATACRAIDS_ONLY>
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
      <!-- Dynamic Desktop -->
      <TMPL_INCLUDE NAME="dynamic_desktop/dynamic_desktop_security_control.tpl">
          <!-- Case Connect -->
          <TMPL_IF MANAGE_GROUPS>
          <TMPL_ELSE>
   			<TMPL_INCLUDE NAME=myaccount/case_connect/admin_radio_block.tpl>
   		  </TMPL_IF>
   </TMPL_UNLESS>


       <TMPL_IF SHOW_INTERNATIONAL_SECTION>
       <TMPL_UNLESS COMP_DISABLE_INTERNATIONAL_NODES>
       <fieldset>
       <span class="unifont1bold"><legend>International</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TMPL_IF COMPANY_DISABLE_INTDOCKETS>
                <INPUT TYPE=HIDDEN NAME="DISABLE_INTDOCKETS" VALUE="<TMPL_IF DISABLE_INTDOCKETS>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                <TR>
                  <td width="75%" nowrap class="unifont1" align="left">&nbsp;Court Dockets:</TD>
                  <td width="25%" align="left">
                  <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_INTDOCKETS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_INTDOCKETS>CHECKED</TMPL_UNLESS>></td>
                      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_INTDOCKETS" VALUE='1' <TMPL_IF NAME=DISABLE_INTDOCKETS>CHECKED</TMPL_IF>></td>
                      <td class="unifont1">No</td>
                    </tr>
                  </table>
                  </td>
                </TR>
              </TMPL_IF>
              <TMPL_IF COMPANY_DISABLE_INTPROFLIC>
                <INPUT TYPE=HIDDEN NAME="DISABLE_INTPROFLIC" VALUE="<TMPL_IF DISABLE_INTPROFLIC>1<TMPL_ELSE>0</TMPL_IF>">
              <TMPL_ELSE>
                <TR>
                  <td width="75%" nowrap class="unifont1" align="left">&nbsp;Professional Certifications:</TD>
                  <td width="25%" align="left">
                  <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_INTPROFLIC" VALUE='0' <TMPL_UNLESS NAME=DISABLE_INTPROFLIC>CHECKED</TMPL_UNLESS>></td>
                      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                      <td><INPUT TYPE=RADIO NAME="DISABLE_INTPROFLIC" VALUE='1' <TMPL_IF NAME=DISABLE_INTPROFLIC>CHECKED</TMPL_IF>></td>
                      <td class="unifont1">No</td>
                    </tr>
                  </table>
                  </td>
                </TR>
              </TMPL_IF>
           </table>
       </fieldset>
       </TMPL_UNLESS>
       </TMPL_IF>


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
  <TMPL_IF NAME=ALLOW_ASOS_BATCH>
    <TMPL_IF COMPANY_DISABLE_ASOS_BATCH>
    <INPUT TYPE=HIDDEN NAME="DISABLE_ASOS_BATCH" VALUE="<TMPL_IF DISABLE_ASOS_BATCH>1<TMPL_ELSE>0</TMPL_IF>">
    <TMPL_ELSE>
    <TR>
     <td width="75%" nowrap class="unifont1" align="left">&nbsp;ASOS Batch:</TD>
     <td width="25%" align="left">
     <table border="0" cellpadding="0" cellspacing="0">
       <tr>
         <td><INPUT TYPE=RADIO NAME="DISABLE_ASOS_BATCH" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ASOS_BATCH>CHECKED</TMPL_UNLESS>></td>
         <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
         <td><INPUT TYPE=RADIO NAME="DISABLE_ASOS_BATCH" VALUE='1' <TMPL_IF NAME=DISABLE_ASOS_BATCH>CHECKED</TMPL_IF>></td>
         <td class="unifont1">No</td>
       </tr>
     </table>
     </td>
    </TR>
    </TMPL_IF>
  </TMPL_IF>

  <TMPL_IF ENABLE_DYNAMIC_REPORTS2>
      <TMPL_IF COMPANY_DISABLE_DYNAMIC_REPORTS2>
          <input type="hidden" name="DISABLE_DYNAMIC_REPORTS2" value="<TMPL_IF DISABLE_DYNAMIC_REPORTS2>1<TMPL_ELSE>0</TMPL_IF>"/>
    <TMPL_ELSE>
          <tr>
            <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;Dynamic Reports:&nbsp;&nbsp;</td>
            <td width="25%" align="left">
            <table border="0" cellpadding="0" cellspacing="0">
              <tr>
          <td><input type="radio" name="DISABLE_DYNAMIC_REPORTS2" value="0" <TMPL_UNLESS NAME=DISABLE_DYNAMIC_REPORTS2>checked="checked" </TMPL_UNLESS>/></td>
          <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
          <td><input type="radio" name="DISABLE_DYNAMIC_REPORTS2" value="1" <TMPL_IF NAME=DISABLE_DYNAMIC_REPORTS2>checked="checked" </TMPL_IF>/></td>
          <td class="unifont1">No</td>
              </tr>
            </table>
            </td>
          </tr>
    </TMPL_IF>
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
	<TMPL_IF SECURITY_COMPANY>
		<TMPL_IF SA>
          <tr>
            <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;Mobile Only Option:&nbsp;&nbsp;</td>
            <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="MOBILE_ONLY_OPTION" VALUE='1' <TMPL_IF NAME=MOBILE_ONLY_OPTION>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="MOBILE_ONLY_OPTION" VALUE='0' <TMPL_UNLESS NAME=MOBILE_ONLY_OPTION>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
            </td>
          </tr>
        </TMPL_IF>
     </TMPL_IF>
           </table>

     </fieldset>
       </TMPL_UNLESS>
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
<!-- END le/manage_account_disable_searches.tpl -->

