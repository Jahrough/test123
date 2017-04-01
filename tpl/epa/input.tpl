<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<!-- begin epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
  <head>
    <title>LexisNexis Verification for EPA</title>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/patterns.js"></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/PopupBox.js"></script>
    <script type="text/javascript">//<![CDATA[

      var css_path = "<TMPL_VAR CSSPATH>";

    //]]></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/epa.js"></script>
    <link href="<TMPL_VAR CSSPATH>/epa.css" rel="stylesheet" type="text/css"/>
  </head>
  <body id="bd-logo<TMPL_IF NAME=SHOW_STATE_VERSION>-state</TMPL_IF>">
    <form action="<TMPL_VAR EPA_ACTION>" method="post" id="EPAFORM">
        <br /><br />
      <div>
        <input type="hidden" name="EPA_PREFILL" value="<TMPL_VAR EPA_PREFILL>"/>
        <input type="hidden" name="EVENT" value="EPA/SUBMIT"/>
        <label>* Required Fields</label><br/>
<TMPL_IF TYPE_P>
        <input type="hidden" name="COMPANY_NAME" id="COMPANY_NAME" />
        <input type="hidden" name="STREET_ADDRESS" id="STREET_ADDRESS" />
        <input type="hidden" name="CITY" id="CITY" />
        <input type="hidden" name="STATE" id="STATE" />
        <input type="hidden" name="ZIP" id="ZIP" />
        <input type="hidden" name="WORK_PHONE" id="WORK_PHONE" />
        <input type="hidden" name="FEIN" id="FEIN" />
        <input type="hidden" name="TYPE" id="TYPE" value="<TMPL_VAR type>"/>
<TMPL_ELSE>
        <input type="hidden" name="TYPE" id="TYPE" value="<TMPL_VAR type>"/>
        <span class="inField">
          <label for="COMPANY_NAME">Company Name *</label><br/>
          <input id="COMPANY_NAME" name="COMPANY_NAME" value="<TMPL_VAR COMPANY_NAME>" type="text"
           class="pattern_required pattern_company" size="30" maxlength="100"/>
        </span>
        <br/>
        <span class="inField">
          <label for="STREET_ADDRESS">Street Address *</label><br/>
          <input id="STREET_ADDRESS" name="STREET_ADDRESS" value="<TMPL_VAR STREET_ADDRESS>" type="text"
           class="pattern_required pattern_address" size="35" maxlength="100"/>
        </span>
        <br/>
        <span class="inField">
          <label for="CITY">City *</label><br/>
          <input id="CITY" name="CITY" value="<TMPL_VAR CITY>" type="text" size="15"
           class="pattern_required pattern_city" maxlength="60"/>
        </span>
        <span class="inField">
          <label id="STATE_LBL" for="STATE">State *</label><br/>
          <select name="STATE" id="STATE">
  <TMPL_LOOP STATE_SEL>
            <option value="<TMPL_VAR VALUE>" 
             <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>><TMPL_VAR NAME=LABEL></option>
  </TMPL_LOOP>
          </select>
        </span>
        <span class="inField">
          <label for="ZIP">Zip *</label><br/>
          <input id="ZIP" name="ZIP" value="<TMPL_VAR ZIP>" type="text" size="10"
           maxlength="5" class="pattern_required pattern_zip5"/>
        </span>
        <br/>
        <span class="inField">
          <label for="WORK_PHONE">Work Phone</label><br/>
          <input id="WORK_PHONE" name="WORK_PHONE" value="<TMPL_VAR WORK_PHONE>" type="text" size="15"
           maxlength="10" class="pattern_phone10" />
        </span>
        <span class="inField">
          <label for="FEIN">FEIN</label><br/>
          <input id="FEIN" name="FEIN" value="<TMPL_VAR FEIN>" type="text" size="15"
           maxlength="10" class="pattern_ein" />
        </span>
</TMPL_IF>
        <br/>
        <h1>Authorized Representative</h1>
        <span class="inField">
          <label for="LAST_NAME">Last Name *</label><br/>
          <input id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>" type="text"
           maxlength="60" class="pattern_required pattern_name" size="20"/>
        </span>
        <span class="inField">
          <label for="FIRST_NAME">First Name *</label><br/>
          <input id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>" type="text"
           maxlength="60" class="pattern_required pattern_name" size="15"/>
        </span>
        <span class="inField">
          <label for="MIDDLE_NAME">Middle Name</label><br/>
          <input id="MIDDLE_NAME" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>" type="text" size="10"
           maxlength="60" class="pattern_name" />
        </span>
        <span class="inField">
          <label for="SSN4">SSN (Last 4) *</label><br/>
          <input id="SSN4" name="SSN4" value="<TMPL_VAR SSN4>" type="text" size="5" maxlength="4"
           class="pattern_required pattern_ssn4" />
        </span>
        <br/>
        <span class="inField">
          <label for="HOME_ADDRESS">Home Address *</label><br/>
          <input id="HOME_ADDRESS" name="HOME_ADDRESS" value="<TMPL_VAR HOME_ADDRESS>" type="text" size="35"
           maxlength="60" class="pattern_required pattern_address" />
        </span>
        <br/>
        <span class="inField">
          <label for="HOME_CITY">Home City *</label><br/>
          <input id="HOME_CITY" name="HOME_CITY" value="<TMPL_VAR HOME_CITY>" type="text" size="15"
           maxlength="60" class="pattern_required pattern_city" />
        </span>
        <span class="inField">
          <label id="HOME_STATE_LBL" for="HOME_STATE">Home State *</label><br/>
          <select name="HOME_STATE" id="HOME_STATE">
<TMPL_LOOP NAME=HOME_STATE_SEL>
            <option value="<TMPL_VAR NAME=VALUE>" 
             <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>><TMPL_VAR NAME=LABEL></option>
</TMPL_LOOP>
          </select>
        </span>
        <span class="inField">
          <label for="HOME_ZIP">Home Zip *</label><br/>
          <input id="HOME_ZIP" name="HOME_ZIP" value="<TMPL_VAR HOME_ZIP>" type="text" size="8"
           maxlength="5" class="pattern_required pattern_zip5" />
        </span>
        <br/>
        <span class="inField">
          <label for="HOME_PHONE">Home Phone</label><br/>
          <input id="HOME_PHONE" name="HOME_PHONE" value="<TMPL_VAR HOME_PHONE>" type="text" size="15"
           maxlength="10" class="pattern_phone10" />
        </span>
        <span class="inField">
          <label for="DOB">Date of Birth *</label><br/>
          <input id="DOB" name="DOB" value="<TMPL_VAR DOB>" type="text" size="10"
           maxlength="10" class="pattern_required pattern_dob" />
        </span>
        <br/>
        <div class="btRow">
          <input id="SUBMIT" name="SUBMIT" value="Submit" type="submit" class="Btn"/>
          <input id="CANCEL" value="Cancel" type="button" class="Btn"/>
        </div>
      </div>
    </form>
<!-- begin footer -->
<div id="footer">
      <a href="http://www.lexisnexis.com/terms/copyright.aspx" target="_blank">Copyright &copy;</a> <script>document.write(new Date().getFullYear());</script> LexisNexis. All rights Reserved.&nbsp; <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a> <span>|</span> <a rel="external" href="<TMPL_VAR NAME=HTMLPATH>/epa/privacy.html">Privacy & Security</a>
</div>
<!-- end footer -->
  </body>
</html>
<!-- end epa/input.tpl SRV: <TMPL_VAR SERVER_ID>-->
