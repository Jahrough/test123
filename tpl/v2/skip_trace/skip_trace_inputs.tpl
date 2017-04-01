<!-- begin skip_trace/skip_trace_inputs.tpl -->
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
	    <td>&nbsp;<b><label for="ACC_BALANCE">Account Balance</label></b>&nbsp;</td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="1" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
	    <td class="nsinputs"><input type="text" name="ACC_BALANCE" id="ACC_BALANCE" tabindex="2" size="8" maxlength="8" value="<TMPL_VAR NAME=ACC_BALANCE>" onChange="if(!checkFloatNum(this)) return false;"/></td>
          </tr>
       </table>

	<span id="st_expanded_form" style="display:none;">     	
	       <TMPL_UNLESS DISABLE_SKIP_TRACE_EXPANDED_FORM>
		<table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
		    <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
		    <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
		  </tr>
		  <tr>
		    <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
		    <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
		    <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="5" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
		  </tr>
	       </table>

		<table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td><b><label for="STREET_ADDRESS">Street Address</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#streetaddress','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
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

		<table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#phone','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
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
	  </TMPL_UNLESS>
	</span>

      </td>
     </tr>


<!-- end skip_trace/skip_trace_inputs.tpl -->
