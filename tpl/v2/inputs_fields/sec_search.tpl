<!-- begin inputs_fields/sec_search.tpl -->
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
            <td>&nbsp;<label for="COMPANY_NAME"><b>Company Name</b></label></td>
            <td>&nbsp;<label for="TICKER"><b>Ticker</b></label></td>
            <td>&nbsp;<label for="LAST_NAME"><b>Last Name</b></label></td>
            <td>&nbsp;<label for="FIRST_NAME"><b>First Name</b></label></td>
          </tr>

          <tr>
            <td class="nsinputs"><input type="text" id="COMPANY_NAME" name="COMPANY_NAME" tabindex="1" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="TICKER" name="TICKER" tabindex="2" size="15" value="<TMPL_VAR NAME=TICKER>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="LAST_NAME" name="LAST_NAME" tabindex="3" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" id="FIRST_NAME" name="FIRST_NAME" tabindex="4" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="ADDITIONAL_TERMS"><b>Additional Terms</b></label></td>
            <td>&nbsp;<label for="SOURCE"><b>Source</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS" tabindex="5" size="38" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs">
              <select tabindex="6" name="SOURCE" id="SOURCE">
              <TMPL_LOOP NAME="SOURCE_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
            </td>
          </tr>
        </table>
        </td>
      </tr>
         
          <tr>
	   <td><table><tr>
            <td>&nbsp;<b>Date</b></td>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
              <input tabindex="7" type="radio" <TMPL_VAR NAME=ACHECK> name="DATE_BUTTON" value="AFT"> &nbsp;
              <select tabindex="8" name="AFTER_DATE">
              <TMPL_LOOP NAME="DATE_VALUES">
               <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
            </td>
	    </tr></table></td>
          </tr>

	  <tr>
	   <td><table><tr>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td valign="top">
	    <span class="smalllabel">
              <input tabindex="9" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</b></a> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_BEGIN','below');" type=text name="NDATE_BEGIN" tabindex="10" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</a>:</b> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_END','below');" type=text name="NDATE_END" tabindex="11" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
	    </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/sec_search.tpl -->
