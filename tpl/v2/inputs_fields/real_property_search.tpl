<!-- begin inputs_fields/real_property_search.tpl -->
<script>
var real = '<TMPL_VAR NAME=APPLICATION_TYPE>';
if (real == 'le' || real == 'irs' || real == 'gov') { real = ' '; } else { real = ' Real '; }
</script>
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <td><b><label for="LOOKUP_TYPE">Search Options</label></b></td>
	    <td><a href="javascript:void(0);" onClick="real_prop_select_tip ();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
	    <td class="nsinputs" align="left">
	      <select name="LOOKUP_TYPE" id="LOOKUP_TYPE" tabindex="1">
		<TMPL_UNLESS NAME="DISABLE_REAL_PROPERTY_SEARCH">
		<option value="" <TMPL_UNLESS NAME="LOOKUP_TYPE_A"><TMPL_UNLESS NAME="LOOKUP_TYPE_D">selected="selected"</TMPL_UNLESS></TMPL_UNLESS>>
		  All<script>document.write(real);</script>Property
		</option>
		</TMPL_UNLESS>
		<TMPL_UNLESS NAME="DISABLE_ASSESSMENT_SEARCH">
		<option value="A" <TMPL_IF NAME="LOOKUP_TYPE_A"><TMPL_UNLESS NAME="LOOKUP_TYPE_D">selected="selected"</TMPL_UNLESS></TMPL_IF>>Property Assessments
		</option>
		</TMPL_UNLESS>
		<TMPL_UNLESS NAME="DISABLE_DEEDS_SEARCH">
		<option value="D" <TMPL_IF NAME="LOOKUP_TYPE_D"><TMPL_UNLESS NAME="LOOKUP_TYPE_A">selected="selected"</TMPL_UNLESS></TMPL_IF>>Mortgages &amp; Property Deeds
		</option>
		</TMPL_UNLESS>
		<TMPL_IF NAME="DISABLE_REAL_PROPERTY_SEARCH">
		    <TMPL_IF NAME="DISABLE_ASSESSMENT_SEARCH">
			<TMPL_IF NAME="DISABLE_DEEDS_SEARCH">
			<option value="" selected="selected">No Search Available</option>
			</TMPL_IF>
		    </TMPL_IF>
		</TMPL_IF>
	      </select>
	    </td>
          </tr>
        </table>
        </td>
      </tr>
    </TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="LAST_NAME">Last Name</label></b></td>
            <td><b><label for="FIRST_NAME">First Name</label></b></td>
            <td><b><label for="MI">Middle Name</label></b></td>
            <TMPL_IF NAME="SHOW_LINKID">
                <td nowrap>&nbsp;<b><label for="UNIQUEID">LexID<span class="sup">SM</span></label></b></td>
                <td><a href="javascript:void(0);" onClick="lexid_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            </TMPL_IF>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="15" id="MI" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
			<TMPL_IF NAME="SHOW_LINKID"><td colspan="2" class="nsinputs"><input id="UNIQUEID" type="text" name="UNIQUEID" tabindex="5" size="11" maxlength="25" value="<TMPL_VAR NAME=UNIQUEID>"></td></TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
	  <tr>
		<td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
			<td><b><label for="COMPANY_NAME">Company Name</label></b></td>
		  </tr>
		  <tr>
			<td class="nsinputs"><input type="text" name="COMPANY_NAME" size="25" id="COMPANY_NAME" tabindex="6" maxlength="255" value="<TMPL_VAR NAME=COMPANY_NAME>" onBlur="this.value=this.value.toUpperCase()"></td>
		  </tr>
	  </table>
	  </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="STREET_ADDRESS">Street Address</label></b></td>
            <td><b><label for="CITY">City</label></b></td>
            <TMPL_UNLESS GOV>
            <TMPL_UNLESS LE>
               <td><b><label for="COUNTY">County</label></b></td>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            <td><b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><b><label for="ZIP">Zip</label></b></td>
            <TMPL_IF GOV>
               <td><b><label for="COUNTY">County</label></b></td>
            </TMPL_IF>
            <TMPL_IF LE>
               <td><b><label for="COUNTY">County</label></b></td>
            </TMPL_IF>
            
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="7" size="27" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="8" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <TMPL_UNLESS GOV>
            <TMPL_UNLESS LE>
               <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex=9"" size="15" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </TMPL_UNLESS>
            </TMPL_UNLESS>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="10" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="11" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <TMPL_IF GOV>
               <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="12" size="15" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </TMPL_IF>
            <TMPL_IF LE>
               <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="13" size="15" value="<TMPL_VAR NAME=COUNTY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            </TMPL_IF>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="PARCEL_ID">Parcel Number</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="PARCEL_ID" id="PARCEL_ID" tabindex="14" size="20" maxlength="255" value="<TMPL_VAR NAME=PARCEL_ID>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td align="left" valign="top">
        <table cellpadding="0" cellspacing="0" border="0">
          <tr>
            <td>
              <input type="checkbox" name="PHONETICS" tabindex="15" value="1" id="phonetics_cb"
               checked="checked" onClick="either_strict_or_phonetics(this)"/>
            </td>
            <td nowrap="nowrap">&nbsp;<label for="phonetics_cb">Include similar sounding names</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="phonetics_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>
              <input type="checkbox" name="STRICT" tabindex="16" value="1" id="strict_cb" 
	      onClick="either_strict_or_phonetics(this)"/>
            </td>
            <td nowrap="nowrap">&nbsp;<label for="strict_cb">Strict Search</label>&nbsp;</td>
            <td align="left"><a href="javascript:void(0);" onClick="strict_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <TMPL_IF SHOW_CURR_REC_ONLY_CB>
	     <td>
	        <input type="checkbox" name="CURRONLY" tabindex="17" value="1" id="curr_only"/>
	     </td>
	     <td nowrap="nowrap">&nbsp;<label for="curr_only">Include current record only</label>&nbsp;</td>
	     <td align="left"><a href="javascript:void(0);" onClick="current_record_tip();"<img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
        </TMPL_IF>
          </tr>
        
            <TMPL_IF GOV>
          <tr>
               <td>
                 <input type="checkbox" name="ADDRESS_MATCH_ONLY" tabindex="18" value="1" id="address_match_only" 
                 <TMPL_IF NAME="ADDRESS_MATCH_ONLY">checked="checked" </TMPL_IF>
                 onClick="either_strict_or_phonetics(this)"/>
               </td>
               <td nowrap="nowrap">&nbsp;<label for="real_only">Return Physical Property Address Matches Only</label>&nbsp;</td>
               <td align="left"><a href="javascript:void(0);" onClick="physical_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
            </TMPL_IF>
            <TMPL_IF LE>
          <tr>
               <td>
                 <input type="checkbox" name="ADDRESS_MATCH_ONLY" tabindex="19" value="1" id="address_match_only" 
                 <TMPL_IF NAME="ADDRESS_MATCH_ONLY">checked="checked" </TMPL_IF>
                 onClick="either_strict_or_phonetics(this)"/>
               </td>
               <td nowrap="nowrap">&nbsp;<label for="real_only">Return Physical Property Address Matches Only</label>&nbsp;</td>
               <td align="left"><a href="javascript:void(0);" onClick="physical_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
            </TMPL_IF>
            
        </table>
        </td>
      </tr>

<!-- end inputs_fields/real_property_search.tpl -->
