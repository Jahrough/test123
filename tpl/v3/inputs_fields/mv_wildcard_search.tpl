<!-- begin inputs_fields/mv_wildcard_search.tpl -->
<div>
    <input type="text" class="w100px" id="LICENSE_PLATE" name="LICENSE_PLATE"  value="<TMPL_VAR NAME=LICENSE_PLATE>" placeholder="Tag Number">
    <div class="checkboxAndText" style="margin-top:6px;">
        <div id="chk_tagContains" class="customCheckbox">
            <input type="checkbox" id="TAG_CONTAINS" name="TAG_CONTAINS" <TMPL_IF NAME=TAG_CONTAINS>CHECKED</TMPL_IF> value="1">
        </div>
        <span>Tag Contains</span>
    </div>
    <input type="text" class="w222px" id="VIN" name="VIN" value="<TMPL_VAR NAME=VIN>" placeholder="VIN">
    <div class="helpQtn">
        <div class="helpIcon"></div>
    </div>
</div>
<TMPL_IF NAME="SHOW_NON_GOV_SOURCE_OPT">
	<div>
		<div class="checkboxAndText">
			<div id="CHK_NONGOVSOURCES" class="customCheckbox">
				<input type="checkbox" name="CHK_NONGOVSOURCES" value="1" CHECKED>
			</div>
			<span>Include Non-Governmental Sources</span>
		</div>
		<div class="helpQtnIcon">i</div>
	</div>
</TMPL_IF>
<div>
    <input type="hidden" class="w150px" readonly=true id="MAJOR_COLOR" name="MAJOR_COLOR" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR><TMPL_ELSE>All</TMPL_IF>" placeholder="Major Color">
    <input type="text" class="w150px" onClick="show_colors(1);" readonly=true style="margin-left:0px;" id="MAJOR_COLOR_FAUX" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR></TMPL_IF>" placeholder="Major Color">
    <div class="helpQtn" onClick="show_colors(1);"><div class="pickerIcon"></div></div>
    <input type="hidden" class="w150px" readonly=true id="MINOR_COLOR" name="MINOR_COLOR" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR><TMPL_ELSE>All</TMPL_IF>" placeholder="Minor Color">
    <input type="text" class="w150px" onClick="show_colors(2);" readonly=true id="MINOR_COLOR_FAUX" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR></TMPL_IF>" placeholder="Minor Color">
    <div class="helpQtn" onClick="show_colors(2);"><div class="pickerIcon"></div></div>
    <input type="text" class="w80px" id="YEAR_LOW" name="YEAR_LOW" value="<TMPL_VAR NAME=YEAR_LOW>" placeholder="Make Year">
    <span class="hyphen">-</span>
    <input type="text" class="w80px" id="YEAR_HIGH" name="YEAR_HIGH" value="<TMPL_VAR NAME=YEAR_HIGH>" placeholder="Make Year">
</div>
<div>
    <input type="hidden" class="w250px" readonly=true id="MAKE" name="MAKE" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE><TMPL_ELSE>All</TMPL_IF>" placeholder="Make">
    <input type="text" class="w250px" onClick="show_vehicles_info(1);" readonly=true style="margin-left:0px;" id="MAKE_FAUX" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE></TMPL_IF>" placeholder="Make">
    <div class="helpQtn" onClick="show_vehicles_info(1);"><div class="pickerIcon"></div></div>
    <input type="hidden" class="w250px" readonly=true id="MODEL" name="MODEL" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL><TMPL_ELSE>All</TMPL_IF>" placeholder="Models">
    <input type="text" class="w250px" onClick="checkMake();" readonly=true id="MODEL_FAUX" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL></TMPL_IF>" placeholder="Models">
    <div class="helpQtn" onClick="checkMake();"><div class="pickerIcon"></div></div>
</div>
<div>
    <input type="text" class="w80px" id="STATE" maxlength="2" name="STATE"  value="<TMPL_VAR NAME=STATE>" placeholder="State">
    <div class="helpQtn"><div class="pickerIcon"></div></div>
    <input type="text" class="w120px" id="ZIP" name="ZIP" value="<TMPL_VAR NAME=ZIP>" placeholder="ZIP Code">
    <input type="text" class="w120px" id="RADIUS"  value="<TMPL_VAR NAME=RADIUS>" name="RADIUS" placeholder="Radius (miles)">
</div>
<div>
    <input type="text" class="w150px" id="LAST_NAME" name="LAST_NAME" value="<TMPL_VAR NAME=LAST_NAME>" placeholder="Last Name">
    <input type="text" class="w150px" id="FIRST_NAME" name="FIRST_NAME" value="<TMPL_VAR NAME=FIRST_NAME>" placeholder="First Name">
    <input type="text" class="w100px" id="MI" name="MI" value="<TMPL_VAR NAME=MI>" placeholder="Middle Name">
    <input type="text" class="w80px" id="AGE_LOW"  value="<TMPL_VAR NAME=AGE_LOW>" name="AGE_LOW" placeholder="Age Min">
    <span class="hyphen">-</span>
    <input type="text" class="w80px" id="AGE_HIGH" name="AGE_HIGH" value="<TMPL_VAR NAME=AGE_HIGH>" placeholder="Age Max">
</div>
<div>
    <div class="radioRow">
        <div class="radioRowLabel">
            <span>Gender:</span>
        </div>

        <input type="radio" name="SEX" value="A" <TMPL_IF NAME=SEX_A>checked="checked"</TMPL_IF>/>
        <span>All</span>

        <input type="radio" name="SEX" value="M" <TMPL_IF NAME=SEX_M>checked="checked"</TMPL_IF>/>
        <span>Male</span>
        
        <input type="radio" name="SEX" value="F" <TMPL_IF NAME=SEX_F>checked="checked"</TMPL_IF>/>
        <span>Female</span>
    </div>
</div>
<!--
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td colspan="3">&nbsp;<b><label for="LICENSE_PLATE">Tag Number</label></b></td>
               <td colspan="1">&nbsp;<b><label for="VIN">VIN</label> <a href="javascript:void(0);" onClick="vin_wildcard_tip();"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" title="More Information" height="13" hspace="5" width="14"></a></td>
          </tr>
          
          <tr>
            <td class="nsinputs"><input type="text" id="LICENSE_PLATE" name="LICENSE_PLATE" size="10" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>"></td>
            <td valign="middle"><input type="checkbox" name="TAG_CONTAINS" value="1"<TMPL_IF NAME=TAG_CONTAINS> CHECKED</TMPL_IF>></td>
            <td valign="middle">&nbsp;Tag Contains</td>
               <td class="nsinputs"><input type="text" id="VIN" name="VIN" size="30" maxlength="50" value="<TMPL_VAR NAME=VIN>"></td>
          </tr>
          

        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b>Major Color <a href="javascript:void(0);" onClick="show_colors(1);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Major Color" title="Select Major Color" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b>Minor Color <a href="javascript:void(0);" onClick="show_colors(2);"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="Select Minor Color" title="Select Minor Color" height="13" hspace="5" width="14"></a></td>
            <td colspan="3">&nbsp;<b><label for="YEAR_LOW">Make Year</label></b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="MAJOR_COLOR" readonly="readonly" size="24" maxlength="50" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" name="MINOR_COLOR" readonly="readonly" size="24" maxlength="50" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" id="YEAR_LOW" name="YEAR_LOW" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_LOW>"></td>
            <td nowrap class="nsinputs">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="YEAR_HIGH" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_HIGH>"></td>
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
            <td class="nsinputs"><input type="text" name="MAKE" readonly="readonly" size="40" maxlength="300" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" name="MODEL" readonly="readonly" size="40" maxlength="1000" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL><TMPL_ELSE>All</TMPL_IF>"></td>
          </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="STATE">State</label></b><a href="javascript:void(0);" onClick="state_list('STATE');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_information.gif" alt="More Information" height="13" hspace="5" width="14"></a></td>
            <td>&nbsp;<b><label for="ZIP">Zip</label></b></td>
            <td>&nbsp;<b><label for="RADIUS">Radius</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="STATE" name="STATE" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>"></td>
            <td class="nsinputs"><input type="text" name="ZIP" id="ZIP" size="5" maxlength="5" value="<TMPL_VAR NAME=ZIP>"></td>
            <td class="nsinputs"><input type="text" name="RADIUS" id="RADIUS" size="3" maxlength="2" value="<TMPL_VAR NAME=RADIUS>"></td>
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
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255></td>
            <td class="nsinputs"><input type="text" id="MI" name="MI" size="15" maxlength="255" value="<TMPL_VAR NAME=MI>"></td>
            <td class="nsinputs"><input type="text" id="AGE_LOW" name="AGE_LOW" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap class="nsinputs">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
            </tr>
        </table>
        </td>
      </tr>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
               <td valign="middle"><b>Gender:</b></a> &nbsp; </td>
                <td valign="middle"><input class="inputbody" type="radio" name="SEX" value="A" <TMPL_IF NAME=SEX_A>checked</TMPL_IF>></td>
                <td valign="middle">All &nbsp; </td>
                <td valign="middle"><input class="inputbody" type="radio" name="SEX" value="M" <TMPL_IF NAME=SEX_M>checked</TMPL_IF>></td>
                <td valign="middle">Male &nbsp; </td>
                <td valign="middle"><input class="inputbody" type="radio" name="SEX" value="F" <TMPL_IF NAME=SEX_F>checked</TMPL_IF>></td>
                <td valign="middle">Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
          </tr>
        </table>
        </td>
      </tr>
      -->
<!-- end inputs_fields/mv_wildcard_search.tpl -->
