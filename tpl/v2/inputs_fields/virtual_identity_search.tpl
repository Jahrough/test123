<!-- begin inputs_fields/virtual_identity_search.tpl -->
<INPUT type=hidden NAME="ACTION_REPORT" VALUE="<TMPL_VAR NAME=ACTION_REPORT>" />
<INPUT type=hidden NAME="SHOWING_SEARCH_RESULTS" ID="SHOWING_SEARCH_RESULTS" VALUE="<TMPL_VAR NAME=SHOWING_SEARCH_RESULTS>" />
<INPUT type=hidden NAME="SHOW_EMAIL_FORM" ID="SHOW_EMAIL_FORM" VALUE="<TMPL_VAR NAME=SHOW_EMAIL_FORM>" />
<input type="hidden" name="VIR_EMAIL_INPUTS" ID="VIR_EMAIL_INPUTS" value="0" />
      <tr>
        <td valign="top" align="left">
          <table border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td valign="top" align="left">Find Virtual Identity by</td>
              <td><INPUT TYPE=RADIO NAME="VIR_SEARCH_TYPE" VALUE='1' onclick="quick_vir_toggle(1);" CHECKED></td>
              <td class="unifont1">Name & Address&nbsp;&nbsp;&nbsp;</td>
              <td class="unifont1">OR&nbsp;&nbsp;&nbsp;</td>
              <td><INPUT TYPE=RADIO NAME="VIR_SEARCH_TYPE" VALUE='2' onclick="quick_vir_toggle(2);"></td>
              <td class="unifont1">Email Address</td>
            </tr>
          </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
          <div id="lineVertRedDot"></div>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
<div id="vir_all_inputs_srch" style="display: <TMPL_IF NAME=VIR_EMAIL_INPUTS>none<TMPL_ELSE>block</TMPL_IF>;">        
          <table border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td valign="top" align="left">The more criteria you provide the more precise (narrow) the results will be.<br>Use less criteria to broaden results.</td>
            </tr>
          </table>
          <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
                  <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
                  <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
                  <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
                </tr>
                <tr>
                  <td class="nsinputs">
                    <input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" maxlength="255" 
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=LAST_NAME>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" maxlength="255"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=FIRST_NAME>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="MI" size="10" id="MI" tabindex="3" maxlength="255"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=MI>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="SSN" id="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off">
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b><label for="STREET_ADDRESS">Street Address</label></b></td>
                  <td>&nbsp;<b><label for="CITY">City</label></b></td>
		  <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                  <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
                  <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                </tr>
                <tr>
                  <td class="nsinputs">
                    <input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="20"  maxlength="50" 
                      onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=STREET_ADDRESS>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="CITY" id="CITY" tabindex="6" size="15"  maxlength="255"
                      onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=CITY>" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="3" 
                      value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()" />
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" 
                      value="<TMPL_VAR NAME=ZIP>">
                  </td>
                  <td class="nsinputs">
                    <input type="text" name="DOB" size="8" id="DOB" tabindex="9" maxlength="12" 
                      value="<TMPL_VAR NAME=DOB>" />
                  </td>
                </tr>
                <tr>
            		  <td valign="top" align="left">
            		    <TMPL_IF NAME="SHOW_LINKID">
            		      <table border="0" cellpadding="2" cellspacing="0">
                  			<tr>
                  			  <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                  			  <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
                  			</tr>
                  			<tr>
                  			  <td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="14" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td>
                  			</tr>
                      </table>
                  	</TMPL_IF>
                  </td>
                 </tr>
               </table>
            </td>
          </tr>
        </table>
</div>
<div id="vir_email_srch" style="display: <TMPL_IF NAME=VIR_EMAIL_INPUTS>block<TMPL_ELSE>none</TMPL_IF>;">        
<input type="hidden" name="VIR_EMAIL_FORM" ID="VIR_EMAIL_FORM" value="1" />
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td valign="top" align="left">
              <table border="0" cellpadding="2" cellspacing="0">
                <tr>
                  <td>&nbsp;<b><label for="EMAIL">Email</label></b></td>
                </tr>
                <tr>
                  <td  class="nsinputs">
                    <input type="text" name="EMAIL" id="EMAIL" tabindex="10" size="60" maxlength="75"
                     onBlur="this.value=this.value.toUpperCase()" value="<TMPL_VAR NAME=EMAIL>" />
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
</div>        
        </td>
      </tr>
<!-- end inputs_fields/virtual_identity_search.tpl -->
