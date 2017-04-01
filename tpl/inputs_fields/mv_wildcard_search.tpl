<!-- begin inputs_fields/mv_wildcard_search.tpl -->


      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td colspan="3" class="inputlabel">&nbsp;<b>Tag Number</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LICENSE_PLATE" size="10" tabindex="1" maxlength="20" value="<TMPL_VAR NAME=LICENSE_PLATE>" onBlur="this.value=this.value.toUpperCase()"></td>
	    <td valign="middle"><input type="checkbox" tabindex="2" name="TAG_CONTAINS" value="1"<TMPL_IF NAME=TAG_CONTAINS> CHECKED</TMPL_IF>></td>
            <td class="inputlabel" valign="middle">&nbsp;Tag Contains</td>
	  </tr>

        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Major Color<a class="inputlinklabel" href="javascript:void(0);" onClick="show_colors(1);">&nbsp;Select</a></b></td>
            <td class="inputlabel">&nbsp;<b>Minor Color<a class="inputlinklabel" href="javascript:void(0);" onClick="show_colors(2);">&nbsp;Select</a></b></td>
            <td colspan="3" class="inputlabel">&nbsp;<b>Make Year</b>&nbsp; </td>
          </tr>
          <tr>
	    <td class="nsinputs"><input type="text" name="MAJOR_COLOR" readonly="readonly" tabindex="3" size="24" maxlength="50" value="<TMPL_IF NAME=MAJOR_COLOR><TMPL_VAR NAME=MAJOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
	    <td class="nsinputs"><input type="text" name="MINOR_COLOR" readonly="readonly" tabindex="4" size="24" maxlength="50" value="<TMPL_IF NAME=MINOR_COLOR><TMPL_VAR NAME=MINOR_COLOR><TMPL_ELSE>All</TMPL_IF>"></td>
            <td class="nsinputs"><input type="text" name="YEAR_LOW" tabindex="5" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_LOW>"></td>
            <td nowrap class="inputlabel">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="YEAR_HIGH" tabindex="6" size="4" maxlength="4" value="<TMPL_VAR NAME=YEAR_HIGH>"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Make <a class="inputlinklabel" href="javascript:void(0);" onClick="show_vehicles_info(1);">&nbsp;Select</a></b></td>
            <td class="inputlabel">&nbsp;<b>Models <a class="inputlinklabel" href="javascript:void(0);" onClick="show_vehicles_info(2);">&nbsp;Select</a></b></td>
          </tr>
          <tr>
	    <td class="nsinputs"><input type="text" name="MAKE" readonly="readonly" tabindex="7" size="40" maxlength="300" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MAKE><TMPL_ELSE>All</TMPL_IF>"></td>
	    <td class="nsinputs"><input type="text" name="MODEL" readonly="readonly" tabindex="8" size="40" maxlength="1000" value="<TMPL_IF NAME=MAKE><TMPL_VAR NAME=MODEL><TMPL_ELSE>All</TMPL_IF>"></td>
          </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="unifont1">&nbsp;<a class="inputlinklabel" href="javascript:void(0);" onClick="show_state_popup('statelist')">State</a></td>
            <td class="inputlabel">&nbsp;<b>Zip (<a class="inputlinklabel" href="javascript:void(0);" onClick="show_zip_popup()"><span id="zips">Enter</span></a> up to 20 zip codes)</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="STATE" tabindex="9" size="3" maxlength="2" value="<TMPL_VAR NAME=STATE>" onBlur="this.value=this.value.toUpperCase()"></td>
	    <td class="nsinputs"><input type="text" name="ZIPS" readonly="readonly" tabindex="10" size="20" maxlength="120" value="<TMPL_IF NAME=ZIPS><TMPL_VAR NAME=ZIPS></TMPL_IF>" onClick="show_zip_popup()"></td>
          </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
            <td class="inputlabel">&nbsp;<b>Middle Name</b></td>
            <td colspan="3" class="inputlabel">&nbsp;<b>Age Range</b>&nbsp; </td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="11" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="12" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="MI" size="15" tabindex="13" maxlength="255" value="<TMPL_VAR NAME=MI>" onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="AGE_LOW" tabindex="14" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_LOW>"></td>
            <td nowrap class="inputlabel">&nbsp;-&nbsp;</td>
            <td class="nsinputs"><input type="text" name="AGE_HIGH" tabindex="15" size="3" maxlength="3" value="<TMPL_VAR NAME=AGE_HIGH>"></td>
            </tr>
        </table>
        </td>
      </tr>

      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
               <td class="inputlabel" valign="middle"><b>Gender:</b></a>&nbsp; </td>
                <td valign="middle"><input class="inputbody" tabindex="16" type="radio" name="SEX" value="A" <TMPL_IF NAME=SEX_A>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">All</td>
                <td valign="middle"><input class="inputbody" tabindex="17" type="radio" name="SEX" value="M" <TMPL_IF NAME=SEX_M>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">Male</td>
                <td valign="middle"><input class="inputbody" tabindex="18" type="radio" name="SEX" value="F" <TMPL_IF NAME=SEX_F>checked</TMPL_IF>></td>
                <td class="inputlabel" valign="middle">Female&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          </tr>
          </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/mv_wildcard_search.tpl -->
