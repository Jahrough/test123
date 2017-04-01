<!-- begin inputs_fields/mv_wildcard_search.tpl -->

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
            <td colspan="3">&nbsp;<b><label for="LICENSE_PLATE">Tag Number</label></b></td>
               <td colspan="1">&nbsp;<b><label for="VIN">VIN</label> <a href="javascript:void(0);" onClick="vin_wildcard_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" title="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          
          <tr>
            <td class="nsinputs"><input type="text" id="LICENSE_PLATE" name="LICENSE_PLATE" size="10" tabindex="1" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td valign="middle"><input type="checkbox" tabindex="2" name="TAG_CONTAINS" value="1"<TMPL_IF NAME=TAG_CONTAINS> CHECKED</TMPL_IF>></td>
            <td valign="middle">&nbsp;Tag Contains</td>
               <td class="nsinputs"><input type="text" id="VIN" name="VIN" size="30" tabindex="3" maxlength="50" value="<TMPL_VAR NAME=VIN>" onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
	  <TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
		  <tr>
			<td valign="top" align="left">
			<table border="0" cellpadding="2" cellspacing="0">
			  <tr>
				<td>&nbsp;<input type="checkbox" name="CHK_NONGOVSOURCES" id="CHK_NONGOVSOURCES" tabindex="14" value="1" CHECKED></td>
				<td><b><label for="CHK_NONGOVSOURCES">Include Non-Governmental Sources</label></b><a href="javascript:void(0);" onClick="nonGovSource_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
			  </tr>
			</table>
			</td>
		  </tr>
      </TMPL_IF>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b>Major Color <a href="javascript:void(0);" onClick="show_colors(1);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Major Color" title="Select Major Color" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b>Minor Color <a href="javascript:void(0);" onClick="show_colors(2);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Minor Color" title="Select Minor Color" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="YEAR_LOW">Make Year</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="MAJOR_COLOR" readonly="readonly" tabindex="5" size="24" maxlength="50" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" name="MINOR_COLOR" readonly="readonly" tabindex="5" size="24" maxlength="50" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" id="YEAR_LOW" name="YEAR_LOW" tabindex="6" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_LOW>"></td>
            <td nowrap class="nsinputs">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="YEAR_HIGH" tabindex="7" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b>Make <a href="javascript:void(0);" onClick="show_vehicles_info(1);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Make" title="Select Make" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b>Models <a href="javascript:void(0);" onClick="show_vehicles_info(2);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Models" title="Select Models" height="13" hspace="5" width="14"></a></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="MAKE" readonly="readonly" tabindex="8" size="40" maxlength="300" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" name="MODEL" readonly="readonly" tabindex="9" size="40" maxlength="1000" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL><TMPL_ELSE>All</TMPL_IF>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
	    <!-- <td>&nbsp;<b><label for="CITY">City</label></b></td> -->
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
            <td>&nbsp;<b><label for="RADIUS">Radius</label></b></td>
          </tr>
          <tr>
            <!-- <td class="nsinputs" colspan="1"><input type="text" name="CITY" id="CITY" tabindex="10" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td> -->
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" tabindex="11" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" tabindex="12" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" tabindex="13" size="3" maxlength="2" value="<TMPL_VAR NAME=RADIUS>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="MI">Middle Name</label></b></td>
            <td colspan="3">&nbsp;<b><label for="AGE_LOW">Age Range</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="14" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="15" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI" size="15" tabindex="16" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="AGE_LOW" name="AGE_LOW" tabindex="17" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap class="nsinputs">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="18" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
            </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
               <td valign="middle"><b>Gender:</b></a> &nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="19" type="radio" name="SEX" value="A" <TMPL_IF NAME=SEX_A>checked</TMPL_IF>></td>
                <td valign="middle">All &nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="20" type="radio" name="SEX" value="M" <TMPL_IF NAME=SEX_M>checked</TMPL_IF>></td>
                <td valign="middle">Male &nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="21" type="radio" name="SEX" value="F" <TMPL_IF NAME=SEX_F>checked</TMPL_IF>></td>
                <td valign="middle">Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/mv_wildcard_search.tpl -->
