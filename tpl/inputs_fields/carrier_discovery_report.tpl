<!-- begin inputs_fields/carrier_discovery_report.tpl -->
<input type="hidden" name="ACTION_REPORT" value="<TMPL_VAR NAME=ACTION_REPORT>">
<INPUT type=hidden NAME="DEMO" VALUE=<TMPL_VAR NAME=DEMO>>
<TMPL_IF DEMO><INPUT type=hidden NAME="HTMLPATH" VALUE=<TMPL_VAR NAME=HTMLPATH>></TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
        <td class="inputlabel" nowrap="nowrap" valign="top">&nbsp;<span class=unifont1boldred>*</span><b>&nbsp;Required Fields</b> - </td>
        <td class="inputlabel">Note: Search Methods are VIN only OR Name and Address. <br />For optimal results with Name and Address search, SSN,<br /> Driver License # & State should be populated.</td>
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
                <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>VIN</b></a><span class=unifont1boldred>*</span></td>
              </tr>
              <tr>
                <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="1" size="25" maxlength="255" value="<TMPL_VAR NAME=VIN>" onBlur="enable_carrier_discovery_fields();this.value=this.value.toUpperCase()" onkeyup='enable_carrier_discovery_fields();'></td>
              </tr>
            </table>
            </div>
            </td>
          </tr>
          <tr>
          <td valign="top" align="left"><br /><br />
          <table border="0" cellpadding="2" cellspacing="0" width="85%">
            <tr>
              <td width="40%"><hr class="advline" align="left" width="100%" /></td>
              <td width="20%" class="inputlabel" valign="top" align="center"><b>OR</b></td>
              <td width="40%"><hr class="advline" align="right" width="100%" /></td>
            </tr>
          </table><br /><br />
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
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Last Name</b></a><span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>First Name</b></a><span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onkeyup='enable_carrier_discovery_fields();'></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" tabindex="4" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Street Address</b></a><span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>City</b></a><span class=unifont1boldred>*</span></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist');">State</a><span class=unifont1boldred>*</span></td>
            <td class="inputlabel">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','CarrierDiscoveryWindow',309,270,0,0,0,0,1,0,'','searches/carrier_discovery');"><b>Zip</b></a><span class=unifont1boldred>*</span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" tabindex="5" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
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
            <td class="inputlabel">&nbsp;<b>SSN</b></td>
            <td class="inputlabel">&nbsp;<b>Driver License Number</b></td>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist','LICENSE_STATE')">State</a></td>
            <td class="inputlabel">&nbsp;<b>DOB</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" tabindex="9" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" tabindex="10" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" autocomplete="off" maxlength="255" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" tabindex="11" size="3" maxlength="2" value="<TMPL_VAR NAME=LICENSE_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>" autocomplete="off"></td>
          </tr>
        </table>
        </div>
        </td>
      </tr>
<!-- end inputs_fields/carrier_discovery_report.tpl -->
