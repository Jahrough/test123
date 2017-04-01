<!-- begin audit_content.tpl -->
    <div class="admin_box">
      <form id="AUDIT_FORM" action="<TMPL_VAR ACTION>" method="post">
        <div id="TOP_FORM1">
          <TMPL_INCLUDE NAME=common_hidden_input.tpl>
          <input type="hidden" name="EVENT"/>
          <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
          <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
<TMPL_IF SA_DISABLED>
          <div class="restrict_box">
            <h1 class="myaccounttitle" id="H1"><br>Please Note!</h1>
  <TMPL_IF NAME="SA_DISABLED_REASON_OTP_ROAMING">
            <p class="unifont1" style="text-align: left; margin-left: 2cm;">
	      <br>
              Your administrator privileges have been temporarily revoked because you bypassed the Secure Token
              Authentication.
            </p>
  <TMPL_ELSE>
            <p class="unifont1" style="text-align: left; margin-left: 2cm;">
              <br>
	      Your administrator privileges have been temporarily revoked because you are accessing our system
              from a location not in the list of approved locations.
            </p>
            <p class="unifont1" style="text-align: left; margin-left: 2cm;">
              If you want to add this location, please contact Customer Support.
            </p>
    </TMPL_IF>
            <p class="unifont1" style="text-align: left; margin-left: 2cm;">
	    Thank you for your cooperation in making our systems secure.</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
<TMPL_ELSE>
          <h1 id="H1">Case Audit Management</h1>
          <h2 id="H2">User Activity Search</h2>
          <div id="TOP_FORM">
            <div>
              <span class="input">
                <label for="COMPANYID" class="left_label">Company:</label>
              </span>
              <span class="input">
  <TMPL_IF HAS_CHILD>
                <select name="COMPANYID" id="COMPANYID">
    <TMPL_LOOP COMPANY>             <option value="<TMPL_VAR VALUE>"<TMPL_IF
      SELECTED> selected="selected"</TMPL_IF>><TMPL_VAR LABEL></option>
    </TMPL_LOOP>
                </select>
  <TMPL_ELSE>
                <input type="hidden" name="COMPANYID" id="COMPANYID" value="<TMPL_VAR COMPANYID>"/>
                <label><TMPL_VAR COMPANYNAME></label>
  </TMPL_IF>
             </span>
            </div>
            <div>
              <span class="input">
                <label for="STATUS_ALL" class="left_label">User Status:</label>
              </span>
              <span class="input">
	        <input value="1" id="STATUS_ACTIVE" type="radio" name="USER_STATUS" checked="checked"/>
		<label for="STATUS_ACTIVE">Active Users</label>
		<input value="0" id="STATUS_INACTIVE" type="radio" name="USER_STATUS"/>
		<label for="STATUS_INACTIVE">Inactive Users</label>
		<input  value="2" id="STATUS_ALL" type="radio" name="USER_STATUS"/>
		<label for="STATUS_ALL">All</label>
              </span>
            </div>
            <div>
              <span class="input">
                <label for="LOGINID" class="left_label">User ID:</label>
              </span>
              <span class="input">
                <select name="LOGINID" id="LOGINID">
                  <option>loading...</option>
                </select>
              </span>
            </div>
            <div>
              <span class="input">
                <label for="DATE_FROM" class="left_label">Date Range:</label>
              </span>
              <span class="dateinput">
                <input onClick="displayDatePicker('DATE_FROM','below');" id="DATE_FROM" name="DATE_FROM" type="text" value="<TMPL_VAR DATE_FROM>" size="10"/>
                <label for="DATE_TO">to</label>
                <input onClick="displayDatePicker('DATE_TO','below');" id="DATE_TO" name="DATE_TO" value="<TMPL_VAR DATE_TO>" type="text" size="10"/>
                <input id="DATE_ALL" type="checkbox" name="DATE_ALL" value="1" <TMPL_IF DATE_ALL>checked="checked" </TMPL_IF>/>
		<label for="DATE_ALL">All</label>
	      </span>
            </div>
            <div>
              <span class="input">
                <label class="left_label">&nbsp;</label>
                <label>Searches are limited to 2 years from the prior date</label>
              </span>
            </div>
          </div>
        </div>
        <div>
          <div id="HID_CRIT">
            <label><a href="javascript:void(0);" id="SHO_LNK">
              <img alt="" src="<TMPL_VAR IMGPATH>/arrow_right.gif"/>
              Show Additional Search Criteria
            </a></label>
          </div>
          <div id="SHO_CRIT">
            <label><a href="javascript:void(0);" id="HID_LNK">
              <img alt="" src="<TMPL_VAR IMGPATH>/arrow_down.gif"/>
              Hide Additional Search Criteria
            </a></label>
            <div style="text-align: left;">
              <span class="input in1">
                <label for="LAST_NAME">Last Name</label><br/>
                <input id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>" type="text" size="30"/>
              </span>
              <span class="input in2">
                <label for="FIRST_NAME">First Name</label><br/>
                <input id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>" type="text" size="25"/>
              </span>
              <span class="input in6">
                <label for="MIDDLE_NAME">Middle Initial</label><br/>
                <input id="MIDDLE_NAME" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>" type="text" size="5" maxlength="1"/>
              </span>
              <span class="input in4">
                <input id="PHONETICS" name="PHONETICS" value="1" type="checkbox"/>
                <label id="PHONTCS_LABEL" for="PHONETICS">Include Similar Sounding Names</label> <img onMouseOver="this.style.cursor='pointer';" onMouseOut="this.style.cursor='none';" onClick="phonetics_tip();" width="14" height="13" alt="More Information" title="More Information" src="<TMPL_VAR IMGPATH>/v2/ico_information.gif"/>
              </span>
            </div>
            <div style="text-align: left;">
              <span class="input in1">
                <label for="SSN">SSN</label><br/>
                <input id="SSN" name="SSN" value="<TMPL_VAR SSN>" type="text" size="15" autocomplete="off"/>
              </span>
              <span class="input in2">
                <label for="DOB">DOB</label><br/>
                <input id="DOB" name="DOB" value="<TMPL_VAR DOB>" type="text" size="20"/>
              </span>
              <span class="input in3">
                <label for="LICENSE">Driver License Number</label><br/>
                <input id="LICENSE" name="LICENSE" value="<TMPL_VAR LICENSE>" type="text" size="20"/>
              </span>
              <span class="input in4">
                <label for="LINK_ID">LexID<span class="sup">SM</span></label><br/>
                <input id="LINK_ID" name="LINK_ID" value="<TMPL_VAR LINK_ID>" type="text" size="20"/>
              </span>
            </div>
            <div style="text-align: left;">
              <span class="input in1">
                <label for="COMPANY_NAME">Company Name</label><br/>
                <input id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR COMPANY_NAME>" type="text" size="30"/>
              </span>
              <span class="input in5">
                <label for="FEIN">FEIN / Charter Number / UCC Original Filing Number</label><br/>
                <input id="FEIN" name="FEIN" value="<TMPL_VAR FEIN>" type="text" size="45"/>
              </span>
            </div>
            <div style="text-align: left;">
              <span class="input in1">
                <label for="STREET_ADDRESS">Street Address</label><br/>
                <input id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR STREET_ADDRESS>" type="text" size="30"/>
              </span>
              <span class="input in2">
                <label for="CITY">City</label><br/>
                <input id="CITY" name="CITY" value="<TMPL_VAR CITY>" type="text" size="25"/>
              </span>
              <span class="input in3">
                <label id="STATE_LBL" for="STATE">State</label> <img onMouseOver="this.style.cursor='pointer';" onMouseOut="this.style.cursor='none';" onClick="state_list('STATE');" width="14" height="13" alt="State Selection" title="State Selection" src="<TMPL_VAR IMGPATH>/v2/ico_information.gif"/><br/>
                <input id="STATE" name="STATE" value="<TMPL_VAR STATE>" type="text" size="3"/>
              </span>
              <span class="input in3">
                <label for="ZIP">Zip</label><br/>
                <input id="ZIP" name="ZIP" value="<TMPL_VAR ZIP>" type="text" size="15"/>
              </span>
            </div>
            <div style="text-align: left;">
              <span class="input in1">
                <label for="PHONE">Phone</label><br/>
                <input id="PHONE" name="PHONE" value="<TMPL_VAR PHONE>" type="text" size="20"/>
              </span>
              <span class="input in5">
                <label for="DOMAIN_NAME">Domain Name</label><br/>
                <input id="DOMAIN_NAME" name="DOMAIN_NAME" value="<TMPL_VAR DOMAIN_NAME>" type="text" size="45"/>
              </span>
            </div>
          </div>
          <div id="BTN_BAR">
            <label>Show
              <select name="COUNT" id="COUNT">
                <option value="25" selected="selected">25</option>
                <option value="50">50</option>
                <option value="75">75</option>
              </select>
              Per Page
            </label>
            <img class="button" id="SEARCH_BTN" alt="search" src="<TMPL_VAR IMGPATH>/search_button.gif"/>
            <img class="button" id="CLEAR_BTN" alt="clear" src="<TMPL_VAR IMGPATH>/clear_button.gif"/>
          </div>
        </div>
      </form>
      <div id="ERROR">
      </div>
    </div>
    <div id="RESULTS_DIV">
      <form id="AUDIT_FORM2" action="<TMPL_VAR ACTION_DOWNLOAD>" method="get">
        <div id="PAGE_BAR">
          <TMPL_INCLUDE NAME=common_hidden_input.tpl>
          <input type="hidden" name="SKIN_TYPE"/>
          <input type="hidden" name="APPLICATION_TYPE"/>
          <input type="hidden" id="EVENT" name="EVENT" value="SEARCH_DOWNLOAD2/AUDIT_SEARCH"/>
          <input type="hidden" name="COMPANYID"/>
          <input type="hidden" name="USER_STATUS"/>
          <input type="hidden" name="LOGINID"/>
          <input type="hidden" id="COUNT2" name="COUNT"/>
          <input type="hidden" name="DATE_FROM"/>
          <input type="hidden" name="DATE_TO"/>
          <input type="hidden" name="LAST_NAME"/>
          <input type="hidden" name="FIRST_NAME"/>
          <input type="hidden" name="MIDDLE_NAME"/>
          <input type="hidden" name="PHONETICS"/>
          <input type="hidden" name="SSN"/>
          <input type="hidden" name="DOB"/>
          <input type="hidden" name="LICENSE"/>
          <input type="hidden" name="LINK_ID"/>
          <input type="hidden" name="COMPANY_NAME"/>
          <input type="hidden" name="FEIN"/>
          <input type="hidden" name="STREET_ADDRESS"/>
          <input type="hidden" name="CITY"/>
          <input type="hidden" name="STATE"/>
          <input type="hidden" name="ZIP"/>
          <input type="hidden" name="PHONE"/>
          <input type="hidden" name="DOMAIN_NAME"/>
          <input type="hidden" id="START" name="START"/>
          <span id="COUNT_PANEL">
            <label id="ROW_COUNT"></label>
            <img id="EXPORT_BTN" src="<TMPL_VAR IMGPATH>/btn_export_off.gif" alt="Export to CSV" />
          </span>
          <span class="input in5">&nbsp;
          </span>
          <span id="PAGE_PANEL">
            <img id="REW_BTN" src="<TMPL_VAR IMGPATH>/btn_rewind_off.gif" alt="First Page" />
            <img id="PREV_BTN" src="<TMPL_VAR IMGPATH>/btn_prev_off.gif" alt="Previous Page" />
            <label id="PAGE_COUNT"></label>
            <img id="FW_BTN" src="<TMPL_VAR IMGPATH>/btn_fw_off.gif" alt="Next Page" />
            <img id="FF_BTN" src="<TMPL_VAR IMGPATH>/btn_ff_off.gif" alt="Last Page" />
          </span>
        </div>
        <div id="INFRAME">
          <div id="V_SPACE"><TMPL_VAR RESULTS></div>
        </div>
        <div><label>^&nbsp;Use Scroll Bar To View All Columns&nbsp;^</label></div>
        <div id="PAGE_BAR2">
          <span id="COUNT_PANEL2">
            <label id="ROW_COUNT2"></label>
            <img id="EXPORT_BTN2" src="<TMPL_VAR IMGPATH>/btn_export_off.gif" alt="Export to CSV" />
          </span>
          <span class="input in5">&nbsp;
          </span>
          <span id="PAGE_PANEL2">
            <img id="REW_BTN2" src="<TMPL_VAR IMGPATH>/btn_rewind_off.gif" alt="First Page" />
            <img id="PREV_BTN2" src="<TMPL_VAR IMGPATH>/btn_prev_off.gif" alt="Previous Page" />
            <label id="PAGE_COUNT2"></label>
            <img id="FW_BTN2" src="<TMPL_VAR IMGPATH>/btn_fw_off.gif" alt="Next Page" />
            <img id="FF_BTN2" src="<TMPL_VAR IMGPATH>/btn_ff_off.gif" alt="Last Page" />
          </span>
</TMPL_IF>
        </div>
      </form>
    </div>
<!-- end audit_content.tpl -->

