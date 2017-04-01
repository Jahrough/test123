<!-- begin inputs_fields/adv_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><INPUT type=hidden NAME="ADV_SEARCH_FORM" VALUE="1"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="3" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="4" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>" autocomplete="off"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="5" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
		<!--<td><input type="checkbox" name="PHONETICS" tabindex="16" value="1" <TMPL_IF NAME="PHONETICS">CHECKED</TMPL_IF>></td>-->
		<td><input type="checkbox" name="PHONETICS" id="PHONETICS" tabindex="80" value="1" <TMPL_IF NAME="PHONETICS">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"></td>
		<td nowrap><label for="PHONETICS">&nbsp;Include similar sounding names&nbsp;</label></td>
		<td align="left"><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>

		<td><input type="checkbox" name="STRICT" id="STRICT" tabindex="81" value="1" <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>onClick="either_strict_or_phonetics(this)"></td>
		<td nowrap><label for="STRICT">&nbsp;Strict Search&nbsp;</label></td>
		<td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
    <TMPL_IF NAME="SHOW_FULL_ADDR_HISTORY">
		  <td><input type="checkbox" name="FULLADDRHIST" id="FULLADDRHIST" tabindex="82" value="1" <TMPL_IF NAME="FULLADDRHIST">checked="checked" </TMPL_IF></td>
		  <td nowrap><label for="FULLADDRHIST">&nbsp;Include Full Address History&nbsp;</label></td>
		  <td align="left"><a href="javascript:void(0);" onClick="fulladdresshist_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
    </TMPL_IF>
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
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="6" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="7" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="8" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="9" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="COUNTY">County</label></b></td>
            <td><b><label for="RADIUS">Radius</label></b></td>
            <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="AGE_RANGE">Age Range</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="10" size="14" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" tabindex="11" size="3" maxlength="3" value="<TMPL_VAR NAME=RADIUS>"></td>
            <td class="nsinputs"><input type="text" name="PHONE" id="PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs"><input type="text" name="DOB" id="DOB" size="14" tabindex="13" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" id="AGE_RANGE" tabindex="14" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="15" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
        </table>

     <TMPL_IF ENABLE_DRIVER_LICENSE_ADV_SEARCH>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">Driver License Number</label></b>&nbsp;[<a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','760',0,0,0,1,1,0,'','coverage/dl_coverage');"><b>Coverage</b></a>]</td>
            <!--
	    <td>&nbsp;<b><label for="LICENSE_NUMBER">Driver License Number</label></b><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','HTMLCoverage','420','760',0,0,0,1,1,0,'','coverage/dl_coverage');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" title="Click For Driver License Coverage" alt="Click For Driver License Coverage" height="13" hspace="5" width="14"></a></td>
	    -->
            <td>&nbsp;<b><label for="LICENSE_STATE">Driver License State</label></b><a href="javascript:void(0);" onClick="state_list('LICENSE_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="16" size="35" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="255" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_STATE" id="LICENSE_STATE" tabindex="17" size="25" value="<TMPL_VAR NAME=LICENSE_STATE>" maxlength="2" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
     </TMPL_IF>
     <TMPL_UNLESS DO_NOT_DISPLAY_FDN_CHECKBOX>
     <TMPL_UNLESS HIDE_FDN_SEARCH_INDICATOR>
     <TMPL_IF FDN_DATA_ENABLED>
     <TMPL_UNLESS COMPANY_DISABLE_FDN_SEARCH_INDICATOR>
     <table border="0" cellpadding="2" cellspacing="0">
       <tr>
	<td><input type="checkbox" name="FRAUD_DEFENSE_IND" id="FRAUD_DEFENSE_IND" tabindex="92" value="1" <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">disabled="disabled" <TMPL_ELSE><TMPL_IF NAME="FDN_PREFS_CHECKBOX_ENABLED"> CHECKED</TMPL_IF></TMPL_IF> /></td>
	<td nowrap><label for="FRAUD_DEFENSE_IND">&nbsp;Include LexisNexis&reg; Fraud Defense Network (FDN)</label><TMPL_UNLESS HIDE_PRICES> ($0.20)&nbsp;</TMPL_UNLESS></td>
	<td align="left"><a href="javascript:void(0);" onClick="fraud_defense_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
       </tr>
       <TMPL_IF NAME="FRAUD_DEFENSE_GLBA_INVALID">
         <tr>
           <td style="color: blue" colspan="3">&nbsp;&nbsp;Fraud Defense Network option currently disabled</td>
         </tr>
       </TMPL_IF>
     </table>
     </TMPL_UNLESS>
     </TMPL_IF>
     </TMPL_UNLESS>
     </TMPL_UNLESS>

	 <br /><span class="medgray">Additional Subject Information</span>
	  <div id="lineVertRedDot"></div>

        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="OTHER_LAST_NAME">Other Last Name</label></b></td>
            <td>&nbsp;<b><label for="OTHER_CITY">Other City</label></b></td>
            <td>&nbsp;<b><label for="OTHER_STATE">Other State</label></b><a href="javascript:void(0);" onClick="state_list('OTHER_STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="OTHER_STATE2">Other State</label></b><a href="javascript:void(0);" onClick="state_list('OTHER_STATE2');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="OTHER_LAST_NAME" id="OTHER_LAST_NAME" tabindex="18" size="12" value="<TMPL_VAR NAME=OTHER_LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_CITY" id="OTHER_CITY" tabindex="19" size="15" value="<TMPL_VAR NAME=OTHER_CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_STATE" id="OTHER_STATE" tabindex="20" size="12" maxlength="2" value="<TMPL_VAR NAME=OTHER_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="OTHER_STATE2" id="OTHER_STATE2" tabindex="21" size="12" maxlength="2" value="<TMPL_VAR NAME=OTHER_STATE2>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="RELATIVE_FIRST_NAME">Relative First Name</label></b></td>
            <td>&nbsp;<b><label for="RELATIVE_FIRST_NAME2">Other Relative First Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="RELATIVE_FIRST_NAME" id="RELATIVE_FIRST_NAME" tabindex="22" size="20" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="RELATIVE_FIRST_NAME2" id="RELATIVE_FIRST_NAME2" tabindex="23" size="20" value="<TMPL_VAR NAME=RELATIVE_FIRST_NAME2>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/adv_search.tpl -->
