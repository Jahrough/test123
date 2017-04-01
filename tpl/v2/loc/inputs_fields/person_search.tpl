<!-- begin loc/inputs_fields/person_search.tpl -->
<TMPL_UNLESS NAME=IM_ON_MYACCURINT>
      <tr>
        <td valign="top" align="left">
        <span class="moreSearchesHeader" id="title_text"></span>
        <script>write_search_title('<TMPL_VAR NAME=PAGE_TITLE>');</script>
        </td>
      </tr>
</TMPL_UNLESS>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SSN">SSN</label></b></td>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="SSN" id="SSN" tabindex="1" size="11" maxlength="11" value="<TMPL_VAR NAME=SSN>"></td>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" id="MI" size="10" tabindex="4" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
          <tr>
           <td valign="top" colspan="4" align="left">
           <table border="0" cellpadding="0" cellspacing="0">
			  <tr>
				<td><input type="checkbox" name="NAME_VARIANTS" id="NAME_VARIANTS" tabindex="16" value="1" <TMPL_IF NAME="NAME_VARIANTS">CHECKED</TMPL_IF>></td>
				<td nowrap><label for="NAME_VARIANTS">&nbsp;Include similar sounding names&nbsp;</label></td>
				<td align="left"><a href="javascript:void(0);" onClick="show_post_popup('LOGIN/SHOW_POPUP','NameVariantsWindow',369,270,0,0,0,0,0,0,'','searches/name_variants');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
			  </tr>
			  </table>
			  </td>
			  </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="STREET_ADDRESS">Street Address</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#streetaddress','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="CITY">City</label></b></td>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="show_state_popup('statelist')"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STREET_ADDRESS" id="STREET_ADDRESS" tabindex="5" size="25" value="<TMPL_VAR NAME=STREET_ADDRESS>" maxlength=50 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="CITY" id="CITY" tabindex="6" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="STATE" id="STATE" tabindex="7" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="8" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
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
            <td class="nsinputs"><input type="text" name="COUNTY" id="COUNTY" tabindex="9" size="10" maxlength="255" value="<TMPL_VAR NAME=COUNTY>"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" size="2" tabindex="10" maxlength="2" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td><b><label for="PHONE">Phone</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#phone','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td><b><label for="DOB">DOB</label></b><a href="javascript:void(0);" onClick="general_win('<TMPL_VAR NAME=HLPPATH>/person_help.html#dob','HelpWindow',680,490,1,1,1,1,1,0);void(0);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="AGE_RANGE">Age Range</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs" colspan="1"><input type="text" name="PHONE" id="PHONE" tabindex="11" size="12" maxlength="14" value="<TMPL_VAR NAME=PHONE>"></td>
            <td class="nsinputs" colspan="1"><input type="text" name="DOB" id="DOB" size="14" tabindex="12" maxlength="10" value="<TMPL_VAR NAME=DOB>"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" id="AGE_RANGE" tabindex="13" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap>&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="14" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>
	   
<!-- end loc/inputs_fields/person_search.tpl -->
