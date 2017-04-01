<!-- begin col/inputs_fields/person_search.tpl -->
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
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="5" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
          <tr>
           <td valign="top" colspan="4" align="left">
           <table border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td><input type="checkbox" name="NAME_VARIANTS" id="NAME_VARIANTS" tabindex="16" value="1" <TMPL_IF NAME="NAME_VARIANTS">CHECKED</TMPL_IF>></td>
				<td nowrap><label for="NAME_VARIANTS">&nbsp;Include name variations&nbsp;</label></td>
				<td align="left"><a href="javascript:void(0);" onClick="name_variants_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
			  </tr>
			  </table>
			  </td>
			  </tr>
        </table>
        </td>
      </tr>

      
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0" class="skip_widget">
          <tr>
            <td colspan="3">&nbsp;<span class="skip_text"><b><label for="ACC_BALANCE">Account Balance<TMPL_IF SKIP_LIMIT_BY_BALANCE_FLAG>&nbsp;(required)</TMPL_IF></label></b></span></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="ACC_BALANCE" id="ACC_BALANCE" tabindex="20" size="11" maxlength="11" value="" <TMPL_IF ENABLE_SKIP_TRACE><TMPL_ELSE>disabled</TMPL_IF>  onChange="if(!checkFloatNum(this)) return false;" ></td>
	    <td>&nbsp;&nbsp;</td>
	    <td class="no-print" align="center">
		<TMPL_IF ENABLE_SKIP_TRACE>
                      <input name="BUTTON" tabindex="101" id="searchBtn" style="width:100px;" type="button" value="Run Skip Wizard" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="validate_st_search('<TMPL_VAR NAME="ACTION_MISC">','<TMPL_VAR NAME="SKIP_LIMIT_BY_BALANCE_FLAG">');">
		<TMPL_ELSE>
			<input name="BUTTON" tabindex="101" id="clearSrch" style="width:100px;" type="button" value="Run Skip Wizard" onBlur="ENTER_FOCUS=0;" onFocus="ENTER_FOCUS=1" onClick="javascript:report_win('<TMPL_VAR HTMLPATH>/tcol/skip_wizard.html')">
		</TMPL_IF>
            </td>
          </tr>
          <tr>
            <td colspan="3">&nbsp;<span class="skip_text" style="font-size:90%;">(Additional charges may apply)</span></td>
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
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="6" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
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
            <td><b><label for="COUNTY"> County</label></b></td>
            <td><b><label for="RADIUS"> Radius</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="10" size="10" maxlength="255" value="<TMPL_VAR NAME=COUNTY>"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" size="2" tabindex="11" maxlength="2" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onClick="phone_tip_7_or_10();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="dob_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="AGE_RANGE">Age Range</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1"><input type="text" name="PHONE" id="PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs" colspan="1"><input type="text" name="DOB" id="DOB" size="14" tabindex="13" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" id="AGE_RANGE" tabindex="14" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="15" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>
	   
           <!--
	   <TMPL_UNLESS DISABLE_BANKRUPTCY>
		  <tr>
           <td valign="top" colspan="4" align="left">
             <table border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td><input type="checkbox" name="USE_BANKRUPTCIES" id="INC_BANKRUPTCIES" tabindex="17" value="1"<TMPL_IF NAME="USE_BANKRUPTCIES">CHECKED</TMPL_IF>></td>
				<td nowrap><label for="INC_BANKRUPTCIES">&nbsp;Include Bankruptcies</label><TMPL_UNLESS HIDE_PRICES> ($0.25)</TMPL_UNLESS>&nbsp;</td>
			    <TMPL_IF LEG><td>&nbsp;<a class="inputlinklabel_v2" href="javascript:general_win('<TMPL_VAR NAME=PRICE_URL>','PriceSchedule','','',1,1,1,1,1,0);void(0);"><b>(Click For Prices)</b></a></td></TMPL_IF>
				<td align="left"><a href="javascript:void(0);" onClick="bankruptcy_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>

			  </tr>
			 </table>
		  </td>
		  </tr>
       </TMPL_UNLESS>
       -->

<!-- end col/inputs_fields/person_search.tpl -->
