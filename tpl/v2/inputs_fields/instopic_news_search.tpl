<!-- begin inputs_fields/instopic_news_search.tpl -->
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
            <td>&nbsp;<label for="CATEGORY"><b>Category</b></label></td>
            <td>&nbsp;<label for="RELEVANCE"><b>Relevance</b></label></td>
          </tr>

          <tr>
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="1" id="CATEGORY" name="CATEGORY" onChange="load_instopics_subcat(this.options.selectedIndex)">
              <TMPL_LOOP NAME="CATEGORY_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>
            </td>
            <td class="nsinputs">
            <span class="smalllabel">
              <select tabindex="2" id="RELEVANCE" name="RELEVANCE">
              <TMPL_LOOP NAME="RELEVANCE_VALUES">
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
        <td align="left" valign="top">
        <table border="0" cellpadding="2" cellspacing="0">
          <tr>
            <td>&nbsp;<label for="SUBCATEGORY"><b>Sub-Category</b></label></td>
            <td>&nbsp;<label for="ADDITIONAL_TERMS"><b>Additional Terms</b></label></td>
          </tr>
          <tr>
            <td class="nsinputs">
	    <script> var subcExists='<TMPL_IF SUBCATEGORY><TMPL_VAR NAME='SUBCATEGORY'><TMPL_ELSE></TMPL_IF>';</script>
            <span class="smalllabel">
              <select tabindex="3" id="SUBCATEGORY" name="SUBCATEGORY"> <option value="">Select a Category Above</option> </select> 
	      <script>
	         if(subcExists){
		     load_instopics_subcat(document.<TMPL_VAR NAME='SEARCH_NAME'>.CATEGORY.value,subcExists);
		 }
              </script>
              <TMPL_LOOP NAME="SOURCE_VALUES">
              <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
              </TMPL_LOOP>
              </select>
             </span>
            </td>
            <td class="nsinputs"><input type="text" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS" tabindex="4" size="38" value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" maxlength=255 onBlur="this.value=this.value.toUpperCase()"></td>
          </tr>
        </table>
        </td>
      </tr>
         
          <tr>
	   <td><table><tr>
            <td>&nbsp;<b>Date</b></td>
            <td>&nbsp;&nbsp;&nbsp;</td>
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
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td valign="top">
            <span class="smalllabel">
              <input tabindex="7" type="radio" <TMPL_VAR NAME=RCHECK> name="DATE_BUTTON" value="RNG"> &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_BEGIN','below');"><b>From:</b></a> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_BEGIN','below');" type=text name="NDATE_BEGIN" tabindex="8" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30> &nbsp; &nbsp; &nbsp;
               <a href="javascript:void(0);" onClick="displayDatePicker('NDATE_END','below');"><b>To</a>:</b> &nbsp;&nbsp;<input onClick="displayDatePicker('NDATE_END','below');" type=text name="NDATE_END" tabindex="9" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</b> 
            </span>
            </td>
	  </tr>
        </table>
        </td>
      </tr>
<!-- end inputs_fields/instopic_news_search.tpl -->
