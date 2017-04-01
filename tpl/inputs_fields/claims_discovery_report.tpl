<!-- begin inputs_fields/claims_discovery_report.tpl -->
<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>">
<input type="hidden" name="USERID" value="<TMPL_VAR NAME=USERID>">
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
        <td valign="top">&nbsp;*<b>&nbsp;Required Fields&nbsp; -- &nbsp;</b></td>
        <td><b>Note:</b> Search Methods are VIN only OR Name and Address. <br />For optimal results with Name and Address search, SSN,<br /> Driver License # & State should be populated.</td>
        </td>
        </table>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>
            <div id="div4">
            <table cellpadding="2" cellspacing="0" border="0">
              <tr>
                <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>VIN</b></a><span class=unifont1boldred>*</span></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="1" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN>" onBlur="enable_claims_discovery_fields();this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
              </tr>
            </table>
            </div>
            </td>
          </tr>
          <tr>
          <td valign="top" align="left"><br />
          <table border="0" cellpadding="2" cellspacing="0" width="85%">
            <tr>
              <td width="40%"><hr class="advline" align="left" width="100%" /></td>
              <td width="20%" class="inputlabel" valign="top" align="center"><b>OR</b></td>
              <td width="40%"><hr class="advline" align="right" width="100%" /></td>
            </tr>
          </table><br />
          </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div1'>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Last Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>First Name</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="Phone">Phone</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_claims_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="4" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="11" size="15" maxlength="255" value="<TMPL_VAR NAME=PHONE>"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <div id='div2'>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Street Address</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>City</b></a><span class=unifont1boldred>*</span></td>
            <td class="unifont1">&nbsp;<a href="javascript:void(0);" onClick="show_state_popup('statelist');"><b>State</b></a><span class=unifont1boldred>*</span></td>
            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Zip</b></a><span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
      <tr>
        <td>
        <div id='div3'>
        <table cellpadding="2" cellspacing="0" border="0">
          <tr>
            <td>&nbsp;<b><label for="DOB">DOB</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">XXDriver License Number</label></b></td>
            <td class="unifont1">&nbsp;<a href="javascript:void(0);" onClick="show_state_popup('statelist','LICENSE_STATE')"><b>State</b></a></td>

            <td>&nbsp;<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>VIN</b></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="DOB" id="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="9" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="10" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" autocomplete="off" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" id="LICENSE_STATE" tabindex="12" size="25" value="<TMPL_VAR NAME=LICENSE_STATE>" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>

            <td class="nsinputs"><input type="text" name="VIN1" id="VIN1" tabindex="13" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN1>"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
<!-- end inputs_fields/claims_discovery_report.tpl -->
