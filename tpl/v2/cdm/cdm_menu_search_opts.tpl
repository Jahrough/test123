<!-- begin cdm_menu_search_opts.tpl -->
	<ul class="cdm_search_menu">
		<li>
			&nbsp;&nbsp;
			<label for="GRAPH_TYPE">Chart: </label>
			<select name="GRAPH_TYPE" id="GRAPH_TYPE" tabindex="1">
				<TMPL_LOOP NAME="GRAPH_TYPES">
					<option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VAL>"> <TMPL_VAR NAME=NAME> </option>
				</TMPL_LOOP>
			</select>
		</li>
		<li>
			&nbsp;&nbsp;
			<label for="PORTFOLIO_ID">Portfolio:</label>
			<select name="PORTFOLIO_ID" id="portfolio_id" tabindex="2">
				<option value="ALL">All Accounts</option>
				<tmpl_loop PORTFOLIO_IDS>
					<option value="<tmpl_var NAME='VALUE'>" <TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR NAME='DESC'></option>
				</tmpl_loop>
			</select>
		</li>
		<li>
			&nbsp;&nbsp;
			<label for="START_DATE">Start Date:  </label>
			<input type="text" name="START_DATE" size="10" tabindex="3" <TMPL_IF NAME=START_DATE>value="<TMPL_VAR NAME=START_DATE>"</TMPL_IF> maxlength=30 onclick='javascript: this.value = ""' >
		</li>
		<li>
			<a href="javascript:void(0);" onClick="displayDatePicker('START_DATE','below');" tabindex="4"><img src="<TMPL_VAR NAME='IMGPATH'>/v2/date_picker.gif"></a>
		</li>
		<li>
			&nbsp;&nbsp;
			<label for="END_DATE">End Date:  </label>
			<input type="text" name="END_DATE" size="10" tabindex="5" <TMPL_IF NAME=END_DATE>value="<TMPL_VAR NAME=END_DATE>"</TMPL_IF> maxlength=30 onclick='javascript: this.value = ""' >
		</li>
		<li>
			<a href="javascript:void(0);" onClick="displayDatePicker('END_DATE','below');" tabindex="6"><img src="<TMPL_VAR NAME='IMGPATH'>/v2/date_picker.gif"></a><span width="1"/>
			<a href="javascript:void(0);" onClick="generic_tip('Date Range','Data is only available for three (3) years back from the date the report was run.');" tabindex="7"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/v2/ico_information.gif" alt="More Information" height="13" width="14"></a>
			&nbsp;&nbsp;
		</li>
		<li>
			<input name="BUTTON" type="button" value="Submit" tabindex="8" onclick="if(!validate_cdm()) return false;send_event('<TMPL_VAR NAME=EVENT>');" onkeypress="if(!validate_cdm()) return false;send_event('<TMPL_VAR NAME=EVENT>');">
			&nbsp;&nbsp;
		</li>
	</ul>
<!-- end cdm_menu_search_opts.tpl -->