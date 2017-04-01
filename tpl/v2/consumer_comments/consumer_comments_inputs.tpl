<!-- begin consumer_comments/consumer_comments_inputs.tpl -->
      <tr>
        <td>
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><strong>Enter an Address OR Phone number below to check for Consumer Comments:</strong></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
		<table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td><b><label for="STREET_ADDRESS">Street Address</label></b></td>
		    <td>&nbsp;<b><label for="CITY">City</label></b></td>
		    <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
		    <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
		  </tr>
		  <tr>
		    <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="6" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onFocus="javascript:consumer_comments_enforce_search_by();"></td>
		    <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="7" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()" onFocus="javascript:consumer_comments_enforce_search_by();"></td>
		    <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="8" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()" onFocus="javascript:consumer_comments_enforce_search_by();"></td>
		    <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="9" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>" onFocus="javascript:consumer_comments_enforce_search_by();"></td>
		  </tr>
                  <tr>
                      <td valign="top" align="left" colspan="2"><br />
                          <table border="0" cellpadding="2" cellspacing="0" width="85%">
                          <tr>
                              <td width="40%"><hr class="advline" align="left" width="100%" /></td>
                              <td width="20%" valign="top" align="center"><b>OR</b></td>
                              <td width="40%"><hr class="advline" align="right" width="100%" /></td>
                          </tr>
                          </table><br />
                      </td>
                      <td colspan="2">&nbsp;</td>
                  </tr>
	       </table>

		<table border="0" cellpadding="2" cellspacing="0">
		  <tr>
		    <td><b><label for="PHONE">Phone</label></b></td>
		  </tr>
		  <tr>
		    <td class="nsinputs" colspan="1"><input type="text" name="PHONE" id="PHONE" tabindex="12" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>" onFocus="javascript:consumer_comments_enforce_search_by();"></td>
		  </tr>
	       </table>

      </td>
     </tr>


<!-- end consumer_comments/consumer_comments_inputs.tpl -->
