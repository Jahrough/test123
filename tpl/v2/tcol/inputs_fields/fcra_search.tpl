
<!-- begin tcol/inputs_fields/fcra_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td>
<TMPL_IF FCRA_BK_COURT_LINKS_SEARCH>
     <input type="hidden" name=COURT_LINK_TYPE_<TMPL_VAR NAME="COURT_LINK_TYPE"> value=1 class="resettable">
    <div id="messageBlock">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top"><strong>Important Messages:</strong></td>
          </tr>
          <tr>
            <td nowrap valign="top"><strong>Docket/Document Search:</strong></td>
          </tr>
          <tr>
            <td >Two dockets are accessible from this search, the LN Re-Created Docket and the PACER Docket. The LN Re-Created Dockets contain docket entries from 11/1/2009 and forward.  LN Docket entries may take up to 48 hours to post after the clerk posts information to the docket.   If you would like to receive a docket directly from PACER, please choose the PACER option from the results screen and we will pull a real time docket from PACER for you. Prices will vary between the two options. Please contact your account representative for pricing.&nbsp;&nbsp;<span class=smallfontred>For documents pulled from PACER, results will be static .pdf.</span><br></td>
          </tr>
          <tr>
            <td nowrap valign="top"><strong>Creditor's Matrix Search:</strong></td>
          </tr>
          <tr>
            <td >You may have two choices for a Creditor's Matrix; one we have already pulled, or an original pull from PACER.  Prices differ between the two options.  If you choose a previously pulled Creditor's Matrix, please note that it may not be up to date.  Always note the <u><i>date of previously pulled matrix</i></u> prior to choosing to view the previously pulled Creditor's Matrix.<br></td>
          </tr>
          <tr>
            <td nowrap valign="top"><strong>Claims Register Search:</strong></td>
          </tr>
          <tr>
            <td >You may have two choices for a Claims Register; one we have already pulled, or an original pull from PACER.  Prices differ between the two options.  You will only be able to choose a previously pulled Claims Register if the POC Deadline date has passed.  Since the Claims Register can change daily, if the POC Deadline date has not passed you can only choose to pull a NEW Claims Register.  If the POC Deadline date has passed, and you choose a previously pulled Claims Register, please note that there is still a chance that it may not be up to date.  Always note the <u><i>date last pulled</i></u> prior to choosing to view the previously pulled Claims Register.  Previously pulled Claims Registers will only be available for 30 days from the date of the previous pull.<strong>&nbsp;&nbsp;NOTE: If there is no POC Deadline date or the POC Deadline date is in the future, you will not be able to pull an existing Claims Register.</strong><br></td>
          </tr>
          <tr>
            <td nowrap valign="top"><span class=unifont1bold>Important:</span></td>
          </tr>
          <tr>
            <td valign="top"><span class=smallfontred>Because of legislation passed in Rhode Island in June 2012, we are no longer able to provide results in certain circumstances.  To find out more about this new legislation, please click <b><a href="http://www.cdiaonline.org/About/content.cfm?ItemNumber=10988" target="_blank">here</a></b>.</span></td>
          </tr>
</table>
    </div>
</TMPL_IF>
<TMPL_IF FCRA_LIENS_SEARCH>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b></span></td>
            <td>Important: Because of legislation passed in Rhode Island in June 2012, we are no longer able to provide results in certain circumstances. Please click <b><a href="http://www.cdiaonline.org/About/content.cfm?ItemNumber=10988" target="_blank">here</a></b> to find out more about this new legislation.</td>
          </tr>
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldorange><b>*</b></span></td>
            <td>Note: Case Number will be used under two conditions: 1) LexID is provided 2) When &#39;Run Search&#39; is selected from Next Steps column.</td>
          </tr>

        </table>
<TMPL_ELSE>
<TMPL_IF FCRA_BANKRUPTCY_SEARCH>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldred><b>*</b></span></td>
            <td>Important: Because of legislation passed in Rhode Island in June 2012, we are no longer able to provide results in certain circumstances. Please click <b><a href="http://www.cdiaonline.org/About/content.cfm?ItemNumber=10988" target="_blank">here</a></b> to find out more about this new legislation.</td>
          </tr>
          <tr>
            <td nowrap valign="top">&nbsp;<span class=unifont1boldorange><b>*</b></span></td>
            <td>Note: Abbreviated or Full Case Number will be used under two conditions: 1) LexID is provided 2) When &#39;Run Search&#39; is selected from Next Steps column.</td>
          </tr>
        </table>
</TMPL_IF>
</TMPL_IF>
        </td>
      </tr>
     <TMPL_IF FCRA_LIENS_SEARCH>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="CASE_NUMBER" title="See note above"><span class=unifont1boldorange><b>*</b></span>&nbsp;Case Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="1" size="15" maxlength="11" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <TMPL_ELSE>
      <TMPL_IF FCRA_BANKRUPTCY_SEARCH>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="CASE_NUMBER" title="See note above"><span class=unifont1boldorange><b>*</b></span>&nbsp;Abbreviated Case Number</label></b><a href="javascript:void(0);" onClick="abbrev_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="1" size="15" maxlength="11" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
          </tr>
          <tr>
            <td>&nbsp;<b><label for="FULL_CASE_NUMBER" title="See note above"><span class=unifont1boldorange><b>*</b></span>&nbsp;Full Case Number</label></b><a href="javascript:void(0);" onClick="full_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="FULL_CASE_NUMBER" id="FULL_CASE_NUMBER" tabindex="1" size="20" maxlength="18" value="<TMPL_VAR NAME=FULL_CASE_NUMBER>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <TMPL_ELSE>
      <TMPL_IF FCRA_BK_COURT_LINKS_SEARCH>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="CASE_NUMBER">Abbreviated Case Number</label></b><a href="javascript:void(0);" onClick="abbrev_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="FULL_CASE_NUMBER">Full Case Number</label></b><a href="javascript:void(0);" onClick="full_case_number_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CASE_NUMBER" id="CASE_NUMBER" tabindex="1" size="20" maxlength="11" value="<TMPL_VAR NAME=CASE_NUMBER>"></td>
            <td class="nsinputs"><input type="text" name="FULL_CASE_NUMBER" id="FULL_CASE_NUMBER" tabindex="1" size="20" maxlength="18" value="<TMPL_VAR NAME=FULL_CASE_NUMBER>"></td>
          </tr>
        </table>
        </td>
      </tr>
     </TMPL_IF>
     </TMPL_IF>
     </TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="1" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="5" size="11" maxlength="25" value=""></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="STREET_ADDRESS">Street Address</label></b><a href="javascript:void(0);" onClick="address_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="8" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="9" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="11" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <TMPL_UNLESS FCRA_BK_COURT_LINKS_SEARCH>
               <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </TMPL_UNLESS>
            <TMPL_IF FCRA_BK_COURT_LINKS_SEARCH>
                <td>&nbsp;<b><label for="COURT_LINK_TYPE">Get Court Link</label></b></td>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1"><input type="text" name="PHONE" id="PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <TMPL_UNLESS FCRA_BK_COURT_LINKS_SEARCH>
               <td class="nsinputs" colspan="1"><input type="text" name="DOB" id="DOB" size="14" tabindex="13" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            </TMPL_UNLESS>
            <TMPL_IF FCRA_BK_COURT_LINKS_SEARCH>
                <td class="nsinputs" colspan="1">
                    <select name="COURT_LINK_TYPE" tabindex="14">
                        <TMPL_LOOP NAME=COURT_LINK_TYPE_LOOP>
                            <option value="<TMPL_VAR NAME="VALUE">"<TMPL_IF NAME="SELECTED"> selected</TMPL_IF>><TMPL_VAR NAME="DESC"></option>
                        </TMPL_LOOP>
                    </select>
                </td>
            </TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
<!-- end tcol/inputs_fields/fcra_search.tpl -->
