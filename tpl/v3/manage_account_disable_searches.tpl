<!-- BEGIN base manage_account_disable_searches.tpl -->
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td class="unifont1" colspan="2"><b>Enable Search / Report Settings:</b><TMPL_UNLESS DA_ONLY>&nbsp;<span class="smallfont1"> (Disabling Search settings will also disable these options on Reports)</TMPL_UNLESS><br></td>
	      </TR>
           </table>
	      
	      <TMPL_UNLESS DA_ONLY>

	      <!-- People -->
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

        <TMPL_UNLESS DELETE_POWER_BOOLEAN>
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
        </TMPL_UNLESS>

              <TMPL_UNLESS GOV>
              <TMPL_UNLESS LE>
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
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
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

              <TMPL_UNLESS GOV>
	      <TMPL_UNLESS LE>
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
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>
	   
        <TMPL_UNLESS BPS>
	      <TMPL_UNLESS IRB>
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
	      </TMPL_UNLESS>
	      </TMPL_UNLESS>

           
           </table>
	 </fieldset>

	      <!-- Assets -->

	 <fieldset>
	  <span class="unifont1bold"><legend>Assets</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
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
	      
          <TMPL_UNLESS HIDE_RT_MVR>
	      <TMPL_IF COMPANY_DISABLE_RT_MVR>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_RT_MVR" VALUE="<TMPL_IF DISABLE_RT_MVR>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Real-Time Motor Vehicle Registrations:&nbsp;&nbsp;</TD>
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

	      <TMPL_IF SHOW_MV_WILD_CARD_OPTIONS>	
	      <TMPL_IF COMPANY_DISABLE_MV_WILDCARD>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MV_WILDCARD" VALUE="<TMPL_IF DISABLE_MV_WILDCARD>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Motor Vehicles Wildcard Search:&nbsp;&nbsp;</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MV_WILDCARD" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MV_WILDCARD>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_MV_WILDCARD" VALUE='1' <TMPL_IF NAME=DISABLE_MV_WILDCARD>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
	      </TMPL_IF>
	      </TMPL_IF>

           </table>
	 </fieldset>

	      <!-- Licenses -->

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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;<TMPL_IF IRB>Driving Records<TMPL_ELSE>MVR Reports (Driving Records)</TMPL_IF>:</TD>
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
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Florida Accidents Search:</TD>
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

	      <TMPL_IF INS>
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

	      </TMPL_IF>
           </table>
	 </fieldset>
      </TMPL_UNLESS>



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

	   <TMPL_UNLESS DA_ONLY>
	      <TMPL_IF COMPANY_DISABLE_DA_WIRELESS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_DA_WIRELESS" VALUE="<TMPL_IF DISABLE_DA_WIRELESS>1<TMPL_ELSE>0</TMPL_IF>">
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

              <TMPL_UNLESS GOV>
	      <TMPL_UNLESS LE>
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
     </table>
	 </fieldset>

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


	      <!-- Record Retrieval -->
    <TMPL_IF NAME="INS">
	 <fieldset>
	  <span class="unifont1bold"><legend>Record Retrieval</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Medical Records:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
		    <TMPL_IF NAME="EMSI_APPROVED">
		      <TMPL_IF COMPANY_DISABLE_EMSI>
		      <INPUT TYPE=HIDDEN NAME="DISABLE_EMSI" VALUE="<TMPL_IF DISABLE_EMSI>1<TMPL_ELSE>0</TMPL_IF>">
		      <TMPL_ELSE>
			<td><INPUT TYPE=RADIO NAME="DISABLE_EMSI" VALUE='0' <TMPL_UNLESS NAME=DISABLE_EMSI>CHECKED</TMPL_UNLESS>></td>
			<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
			<td><INPUT TYPE=RADIO NAME="DISABLE_EMSI" VALUE='1' <TMPL_IF NAME=DISABLE_EMSI>CHECKED</TMPL_IF>></td>
			<td class="unifont1">No</td>
                      </TMPL_IF> 
                    <TMPL_ELSE>
			<td colspan="4" nowrap class="unifont1" align="left">
			<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','EnableWindow',620,550,0,0,0,0,0,0,'','emsi_enable_um');">Click to enable </a>   
			</td>
                   </TMPL_IF>
                  </tr>
                </table>
                </td>    
              </TR>
	   </table>
	 </fieldset>
     </TMPL_IF>


    <!-- News -->
    <TMPL_UNLESS RESTRICT_LNLP_CONTENT>
    <TMPL_IF NAME="INS">
	 <fieldset>
	  <span class="unifont1bold"><legend>News</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

	      <TMPL_UNLESS DONT_SHOW_NEWS>
	      <TMPL_UNLESS NAME=DISALLOW_LN_NEWS_SEARCH>
	      <TMPL_IF COMPANY_DISABLE_NEWS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_NEWS" VALUE="<TMPL_IF DISABLE_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;News Search:&nbsp;&nbsp;</TD>
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

	      <TMPL_IF COMPANY_DISABLE_INSTOPICS_NEWS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_INSTOPICS_NEWS" VALUE="<TMPL_IF DISABLE_INSTOPICS_NEWS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
	      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Insurance Topics in the News:&nbsp;&nbsp;</TD>
	      <td width="25%" align="left">
	      <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_INSTOPICS_NEWS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_INSTOPICS_NEWS>CHECKED</TMPL_UNLESS>></td>
	      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_INSTOPICS_NEWS" VALUE='1' <TMPL_IF NAME=DISABLE_INSTOPICS_NEWS>CHECKED</TMPL_IF>></td>
	      <td class="unifont1">No</td>
	      </tr>
	      </table>
	      </td>
	      </TR>
	      </TMPL_IF>

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
	   </table>
	 </fieldset>
   </TMPL_IF>
   </TMPL_UNLESS>
	      

    <!-- Health Care -->
    <TMPL_IF NAME="INS">
	 <fieldset>
	  <span class="unifont1bold"><legend>Health Care</legend></span>
           <table border="0" cellpadding="0" cellspacing="0" width="95%">

	      <TMPL_IF COMPANY_DISABLE_MP_PROVIDERS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MP_PROVIDERS" VALUE="<TMPL_IF DISABLE_MP_PROVIDERS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
	      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Medical Professions Providers:&nbsp;&nbsp;</TD>
	      <td width="25%" align="left">
	      <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_PROVIDERS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MP_PROVIDERS>CHECKED</TMPL_UNLESS>></td>
	      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_PROVIDERS" VALUE='1' <TMPL_IF NAME=DISABLE_MP_PROVIDERS>CHECKED</TMPL_IF>></td>
	      <td class="unifont1">No</td>
	      </tr>
	      </table>
	      </td>
	      </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_MP_SPECIALITIES>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MP_SPECIALITIES" VALUE="<TMPL_IF DISABLE_MP_SPECIALITIES>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
	      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Medical Professions Specialties:&nbsp;&nbsp;</TD>
	      <td width="25%" align="left">
	      <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_SPECIALITIES" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MP_SPECIALITIES>CHECKED</TMPL_UNLESS>></td>
	      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_SPECIALITIES" VALUE='1' <TMPL_IF NAME=DISABLE_MP_SPECIALITIES>CHECKED</TMPL_IF>></td>
	      <td class="unifont1">No</td>
	      </tr>
	      </table>
	      </td>
	      </TR>
	      </TMPL_IF>

	      <TMPL_IF COMPANY_DISABLE_MP_HOSPITALS>
	      <INPUT TYPE=HIDDEN NAME="DISABLE_MP_HOSPITALS" VALUE="<TMPL_IF DISABLE_MP_HOSPITALS>1<TMPL_ELSE>0</TMPL_IF>">
	      <TMPL_ELSE>
	      <TR>
	      <td width="75%" nowrap class="unifont1" align="left">&nbsp;Medical Professions Hospitals:&nbsp;&nbsp;</TD>
	      <td width="25%" align="left">
	      <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_HOSPITALS" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MP_HOSPITALS>CHECKED</TMPL_UNLESS>></td>
	      <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
	      <td><INPUT TYPE=RADIO NAME="DISABLE_MP_HOSPITALS" VALUE='1' <TMPL_IF NAME=DISABLE_MP_HOSPITALS>CHECKED</TMPL_IF>></td>
	      <td class="unifont1">No</td>
	      </tr>
	      </table>
	      </td>
	      </TR>
	      </TMPL_IF>
	      
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

	   </table>
	 </fieldset>
   </TMPL_IF>

	  <!-- Next Steps -->
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

            <TMPL_UNLESS DO_NOT_DISPLAY_FDN_CHECKBOX>
            <TMPL_IF FDN_DATA_ENABLED>
            <TMPL_IF COMPANY_DISABLE_FDN_SEARCH_INDICATOR>
              <INPUT TYPE=HIDDEN NAME="DISABLE_FDN_SEARCH_INDICATOR" VALUE="<TMPL_IF DISABLE_FDN_SEARCH_INDICATOR>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
              <tr>
                <td width="75%" nowrap="nowrap" class="unifont1" align="left">&nbsp;LexisNexis&reg; Fraud Defense Network Search Indicator:&nbsp;&nbsp;</td>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><input type="radio" name="DISABLE_FDN_SEARCH_INDICATOR" value="0" <TMPL_UNLESS NAME=DISABLE_FDN_SEARCH_INDICATOR>checked="checked" </TMPL_UNLESS>/></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><input type="radio" name="DISABLE_FDN_SEARCH_INDICATOR" value="1" <TMPL_IF NAME=DISABLE_FDN_SEARCH_INDICATOR>checked="checked" </TMPL_IF>/></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>
              </tr>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_UNLESS>

		  			  
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

        <TMPL_IF SHOW_EQUIFAX_RECOVERY_REPORT_SECTION>
        <TMPL_IF EQUIFAX_RECOVERY_REPORT_SECTION_HIDE_RADIO_BUTTONS>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Link to Equifax Recovery Report:</TD>
                <td width="25%" nowrap class="unifont1" align="left" style="padding-left:52px">&nbsp;<TMPL_VAR NAME=EQUIFAX_RECOVERY_REPORT_STATUS></td>
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

        <TMPL_IF SHOW_EQUIFAX_CREDIT_REPORT_SECTION>
        <TMPL_IF EQUIFAX_CREDIT_REPORT_SECTION_HIDE_RADIO_BUTTONS>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Equifax Credit Report:</TD>
                <td width="25%" nowrap class="unifont1" align="left">&nbsp;<TMPL_VAR NAME=EQUIFAX_CREDIT_REPORT_STATUS></td>
              </TR>
        <TMPL_ELSE>
          <TMPL_IF COMPANY_EQUIFAX_CREDIT_REPORT>
          <INPUT TYPE=HIDDEN NAME="DISABLE_EQUIFAX_CREDIT_REPORT" VALUE="<TMPL_IF DISABLE_EQUIFAX_CREDIT_REPORT>1<TMPL_ELSE>0</TMPL_IF>">
          <TMPL_ELSE>
              <TR>
                <td width="75%" nowrap class="unifont1" align="left">&nbsp;Equifax Credit Report:</TD>
                <td width="25%" align="left">
                <table border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EQUIFAX_CREDIT_REPORT" VALUE='0' <TMPL_UNLESS NAME=DISABLE_EQUIFAX_CREDIT_REPORT>CHECKED</TMPL_UNLESS>></td>
                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                    <td><INPUT TYPE=RADIO NAME="DISABLE_EQUIFAX_CREDIT_REPORT" VALUE='1' <TMPL_IF NAME=DISABLE_EQUIFAX_CREDIT_REPORT>CHECKED</TMPL_IF>></td>
                    <td class="unifont1">No</td>
                  </tr>
                </table>
                </td>    
              </TR>
          </TMPL_IF>
        </TMPL_IF>
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

