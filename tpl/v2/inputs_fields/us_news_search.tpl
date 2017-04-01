<!-- begin inputs_fields/us_news_search.tpl -->

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
            <td>&nbsp;<b><label for="SUBJECT">Subject</label></b></td>
          </tr>

          <tr>
            <td class="nsinputs"><input id="SUBJECT" type="text" name="SUBJECT" tabindex="1" size="45" value="<TMPL_VAR NAME=SUBJECT>"  onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>

          <tr>
	   <td><table><tr>
            <td>&nbsp;<b><label for="AFTER_DATE">Date</label></b></td>
            <td class="nsinputs" valign="top">
            <span class="smalllabel">
              <input tabindex="2" type="radio" <TMPL_VAR NAME=ACHECK> name="DATE_BUTTON" value="AFT"> &nbsp;
              <select id="AFTER_DATE" tabindex="3" name="AFTER_DATE">
              <TMPL_LOOP NAME="DATE_VALUES">
               <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
            </span>
            </td>
	    </tr></table></td>
          </tr>

	  <tr>
	   <td><table border="0"><tr>
            <td>&nbsp;<b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </b></td>
            <td valign="top">
	    <span class="smalllabel">
              <input tabindex="4" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</b></a> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_BEGIN','below');" type=text name="NDATE_BEGIN" tabindex="5" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</a>:</b> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_END','below');" type=text name="NDATE_END" tabindex="6" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
	    </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/us_news_search.tpl -->
