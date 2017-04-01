<!-- begin inputs_fields/do_news_search.tpl -->
      <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws_iframe.js"></script>
      <tr>
        <td valign="top" align="left">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>Last Name</b></td>
            <td class="inputlabel">&nbsp;<b>First Name</b></td>
          </tr>

          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td class="inputlabel">&nbsp;<b>City</b></td>
            <td class="inputlabel">&nbsp;<b>Additional Terms</b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="CITY" tabindex="3" size="15" value="<TMPL_VAR NAME=CITY>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="ADDITIONAL_TERMS" tabindex="4" size="45" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>"  onBlur="this.value=this.value.toUpperCase()"></td>
	   </tr>
        </table>
        </td>
      </tr>
         
          <tr>
	   <td><table><tr>
            <td class="inputlabel">&nbsp;<b>Date</b></td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input tabindex="5" type="radio" <TMPL_VAR NAME=ACHECK> name="DATE_BUTTON" value="AFT"> &nbsp;
              <select tabindex="6" name="AFTER_DATE">
              <TMPL_LOOP NAME="DATE_VALUES">
               <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
            </span>
            </td>
	    </tr></table></td>
          </tr>

	  <tr>
	   <td><table><tr>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="inputlabel">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input tabindex="7" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</b></a> &nbsp;&nbsp;<input type=text name="NDATE_BEGIN" tabindex="8" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</a>:</b> &nbsp;&nbsp;<input type=text name="NDATE_END" tabindex="9" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
            </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/do_news_search.tpl -->
