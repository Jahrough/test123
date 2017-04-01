<!-- begin inputs_fields/neg_news_search.tpl -->
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
            <td>&nbsp;<b><label for="LAST_NAME">Last Name</label></b></td>
            <td>&nbsp;<b><label for="FIRST_NAME">First Name</label></b></td>
            <td>&nbsp;<b><label for="COMPANY_NAME">Company Name</label></b></td>
          </tr>

          <tr>
            <td class="nsinputs"><input type="text" name="LAST_NAME" id="LAST_NAME" tabindex="1" size="15" value="<TMPL_VAR NAME=LAST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="FIRST_NAME" id="FIRST_NAME" tabindex="2" size="15" value="<TMPL_VAR NAME=FIRST_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="COMPANY_NAME" id="COMPANY_NAME" tabindex="3" size="20" value="<TMPL_VAR NAME=COMPANY_NAME>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>


      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="WORDS">Words in the Article</label></b></td>
            <td>&nbsp;<b><label for="NOWORDS">Without Words</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs"><input type="text" name="WORDS" id="WORDS" tabindex="4" size="27" value="<TMPL_VAR NAME=WORDS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
            <td class="nsinputs"><input type="text" name="NOWORDS" id="NOWORDS" tabindex="5" size="15" value="<TMPL_VAR NAME=NOWORDS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
         
      <tr>
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<b><label for="SOURCE">Source</label></b></td>
          </tr>
          <tr>
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="6" name="SOURCE" id="SOURCE">
              <TMPL_LOOP NAME="SOURCE_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>
            </td>
          </tr>
        </table>
        </td>
      </tr>


          <tr>
	   <td><table><tr>
            <td>&nbsp;<b><label for="DATE">Date</label></b></td>
            <td>&nbsp;&nbsp;&nbsp;</td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input id="DATE" tabindex="7" type="radio" <TMPL_VAR NAME=ACHECK> name="DATE_BUTTON" value="AFT"> &nbsp;
              <select tabindex="8" name="AFTER_DATE">
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
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td valign="top">
            <span class="smalllabel">
              <input tabindex="9" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</label></b></a> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_BEGIN','below');" type=text name="NDATE_BEGIN" tabindex="10" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</label></a>:</b> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_END','below');" type=text name="NDATE_END" tabindex="11" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
            </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/neg_news_search.tpl -->
