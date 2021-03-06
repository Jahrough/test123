<!-- begin inputs_fields/accident_search.tpl -->
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <TMPL_IF NAME="NAT_ACC_ENABLE">
        	<script>write_search_title('National Motor Vehicle <TMPL_VAR NAME=PAGE_TITLE>');</script>
        <TMPL_ELSE>
        	<script>write_search_title('Florida <TMPL_VAR NAME=PAGE_TITLE>');</script>
        </TMPL_IF>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" tabindex="3" size="15" value="<TMPL_VAR NAME=MI>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="11" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <TMPL_IF NAME="INS">
            <td nowrap="nowrap">&nbsp;<a href="javascript:void(0);" onClick="displayDatePicker('DOL_DATE');"><b>Date of Loss</b></a>&nbsp;<a href="javascript:void(0);" onClick="dol_state_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td> 
            </TMPL_IF>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="4" size="35" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <TMPL_IF NAME="INS">
            <td class="nsinputs"><input onClick="displayDatePicker('DOL_DATE');" type="text" id="DOL_DATE" name="DOL_DATE" tabindex="5" size="16" maxlength="10" value="<TMPL_VAR NAME=DOL_DATE>" >&nbsp;(mm/dd/yyyy)<br /></td>
            </TMPL_IF>
            </TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td><input type="checkbox" name="STRICT" id="STRICT" tabindex="6" value="1" <TMPL_IF NAME="STRICT">checked="checked" </TMPL_IF>/></td>
            <td nowrap><label for="STRICT">&nbsp;Strict Search&nbsp;</label></td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
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
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="10" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td>
        <table cellpadding="2" cellspacing="0" border="0">
          <TMPL_IF NAME="INS">
          <tr>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">License Number</label></b></td>
            <td>&nbsp;<b><label for="ACCIDENT_NUMBER">Accident Number</label></b></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <td>&nbsp;<b><label for="ACCIDENT_STATE">Accident State</label></b>&nbsp;<span style="color: #CE0031;font-size:7pt;" >&nbsp;(Required)</span></td>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="11" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
            <td class="nsinputs"><input type="text" name="ACCIDENT_NUMBER" id="ACCIDENT_NUMBER" tabindex="12" size="20" value="<TMPL_VAR NAME=ACCIDENT_NUMBER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <td class="nsinputs" align="left"><input type="text" name="ACCIDENT_STATE" id="ACCIDENT_STATE" tabindex="13" size="3" maxlength="2" value="<TMPL_VAR NAME=ACCIDENT_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            </TMPL_IF>
          </tr>
          <TMPL_ELSE>
          <tr>
            <td>&nbsp;<b><label for="ACCIDENT_NUMBER">Accident Number</label></b></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <td>&nbsp;<b><label for="ACCIDENT_STATE">Accident State</label></b></td>
            </TMPL_IF>
            <td>&nbsp;<b><label for="LICENSE_NUMBER">License Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="ACCIDENT_NUMBER" id="ACCIDENT_NUMBER" tabindex="10" size="20" value="<TMPL_VAR NAME=ACCIDENT_NUMBER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_IF NAME="NAT_ACC_ENABLE">
            <td class="nsinputs" align="center"><input type="text" name="ACCIDENT_STATE" id="ACCIDENT_STATE" tabindex="11" size="3" maxlength="2" value="<TMPL_VAR NAME=ACCIDENT_STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
           	</TMPL_IF>
            <td class="nsinputs"><input type="text" name="LICENSE_NUMBER" id="LICENSE_NUMBER" tabindex="12" size="25" value="<TMPL_VAR NAME=LICENSE_NUMBER>" maxlength="30" onBlur="this.value=this.value.toUpperCase()" autocomplete="off"></td>
          </tr>
          </TMPL_IF>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="VIN">VIN</label></b></td>
            <td>&nbsp;<b><label for="LICENSE_PLATE">Tag Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="VIN" id="VIN" tabindex="14" size="20" maxlength="30" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" size="10" id="LICENSE_PLATE" tabindex="15" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>

<!-- end inputs_fields/accident_search.tpl -->
