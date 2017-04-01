<!-- begin inputs_fields/instopic_news_search.tpl -->
        <div>
            <span class="font-Arial12" style="margin-right:15px;"><strong>Category</strong></span>
            <span class="font-Arial12" style="margin-left:236px;"><strong>Relevance</strong></span>
            <br/>
        </div>
        
        <div>
		<select tabindex="1" id="CATEGORY" name="CATEGORY" onChange="load_instopics_subcat(this.options.selectedIndex)">
		<TMPL_LOOP NAME="CATEGORY_VALUES">
		<option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
		</TMPL_LOOP>
		</select>
		<select tabindex="2" id="RELEVANCE" name="RELEVANCE">
		<TMPL_LOOP NAME="RELEVANCE_VALUES">
		<option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>">&nbsp;<TMPL_VAR NAME=NAME> </option>
		</TMPL_LOOP>
		</select>
        </div>
        
        <div>
            <span class="font-Arial12" style="margin-right:15px;"><strong>Sub Category:</strong></span><br/>
        </div>
        <div>
			<script> var subcExists='<TMPL_IF SUBCATEGORY><TMPL_VAR NAME='SUBCATEGORY'><TMPL_ELSE></TMPL_IF>';</script>
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
        </div>       
        <div>
        	<input type="text" class="w222px" id="ADDITIONAL_TERMS" name="ADDITIONAL_TERMS"  value="<TMPL_VAR NAME=ADDITIONAL_TERMS>" placeholder="Additional Terms">
        </div>
     
       <div>
            <span class="font-Arial12" style="margin-right:15px;"><strong>Date:</strong></span><br/>
        </div>
        <div class="verticalRadioGroupRow">
            <div class="checkboxAndText">
                <div class="customRadio" style="margin:6px 12px 0 0;">
                    <div class="radioFiller"></div>
                    <input type="radio" name="DATE_BUTTON" style="display:none;" id="DATE" value="AFT" <TMPL_VAR NAME=ACHECK> />
                </div>
                <span class="font-Arial12">
                    <select name="AFTER_DATE">
                        <TMPL_LOOP NAME="DATE_VALUES">
                         <option value="<TMPL_VAR NAME=VAL>" <TMPL_VAR NAME=SELECTED>>&nbsp;<TMPL_VAR NAME=NAME> </option>
                        </TMPL_LOOP>
                    </select>
                </span>
            </div>
        </div>
        <div class="verticalRadioGroupRow">
            <div class="checkboxAndText">
                <div class="customRadio" style="margin:6px 12px 0 0;">
                    <div class="radioFiller"></div>
                    <input type="radio" style="display:none;" name="DATE_BUTTON" value="RNG" <TMPL_VAR NAME="RCHECK"> />
                </div>
                <span class="font-Arial12">
                    <input type=text name="NDATE_BEGIN" id="NDATE_BEGIN" size="10" value="<TMPL_VAR NAME=NDATE_BEGIN>" maxlength=30 placeholder="From">
                    <input type=text name="NDATE_END" id="NDATE_END" size="10" value="<TMPL_VAR NAME=NDATE_END>" maxlength=30 placeholder="To">
                </span>
            </div>
        </div>
        <div>
            <span class="font-Arial12">
                <strong style="margin-left:35px;float:left;">(mm/dd/yyyy) OR (mm/yyyy) OR (yyyy)</strong>
            </span>
        </div>
<!-- end inputs_fields/instopic_news_search.tpl -->
