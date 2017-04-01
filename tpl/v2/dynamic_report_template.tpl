	<div id="err_dreport" class="err_msg"><tmpl_var name=error_dreport></div>

	<div style="color:#2777A1;font-weight:bold;margin:10px 0 10px 0;"> User-Defined Templates </div>
			<tmpl_if name=saved_pref_count>
				 <select name="REPORT_ORDER_PREFS" style="width:180px;" onchange="show_template(this.value);">
				 <option selected="selected" value="">Templates</option>
					 <TMPL_IF name=template1-name><option <tmpl_if name=template1-active>selected="selected"</tmpl_if> value="<TMPL_VAR NAME=template1-name>"><TMPL_VAR NAME=template1-name></TMPL_IF>
					 <TMPL_IF name=template2-name><option <tmpl_if name=template2-active>selected="selected"</tmpl_if> value="<TMPL_VAR NAME=template2-name>"><TMPL_VAR NAME=template2-name></TMPL_IF>
					 <TMPL_IF name=template3-name><option <tmpl_if name=template3-active>selected="selected"</tmpl_if> value="<TMPL_VAR NAME=template3-name>"><TMPL_VAR NAME=template3-name></TMPL_IF>
					 <TMPL_IF name=template4-name><option <tmpl_if name=template4-active>selected="selected"</tmpl_if> value="<TMPL_VAR NAME=template4-name>"><TMPL_VAR NAME=template4-name></TMPL_IF>
				</select>
			<tmpl_else>
				&nbsp;&nbsp;<span style="color:#ed1c24;font-weight:bold;">No template saved</span>&nbsp;&nbsp;
			</tmpl_if>

	<div id="tpl_btns" style="display:none;">
		<br/>
		<table width="90%" class="smallfont1">
			<tr><td align="center"><span style="color:green;" id="tpl_text"> </span></td></tr>
			<tr><td align="center"><input style="width:120px;" type="text" id="template_name" size="20"></input></td></tr>
			<tr><td align="center">
				<div id="tplAction"></div>
			</td></tr>
		</table>
	</div>	

	<div id="drpt_btns">
		<br/>
		<div id="drptAction" style="max-width: 250px">
			<tmpl_if name=template_selected>
				<div class="btnR" onClick="template_options('R')">Rename</div>&nbsp;<div class="btnR" onClick="template_options('S')">Save Current Settings</div>&nbsp;<div class="btnR" onClick="template_options('D')">Delete</div>
			<tmpl_else>
				<tmpl_if name=max_template_saved>
					<div class="green">You have 4 templates saved. Please select a template to delete, rename or overwrite.</div><br/>
				<tmpl_else>
					<div class="btnR" onClick="template_options('S')">Save Current Settings</div>
				</tmpl_if>
			</tmpl_if>
		</div>
	</div>
	<div id="lineVertGrayDot"></div>

	<TMPL_IF name=template1-name><input type="hidden" id="<TMPL_VAR NAME=template1-name>" name="<TMPL_VAR NAME=template1-name>" value="<TMPL_VAR NAME=template1-value>"></TMPL_IF>
	<TMPL_IF name=template2-name><input type="hidden" id="<TMPL_VAR NAME=template2-name>" name="<TMPL_VAR NAME=template2-name>" value="<TMPL_VAR NAME=template2-value>"></TMPL_IF>
	<TMPL_IF name=template3-name><input type="hidden" id="<TMPL_VAR NAME=template3-name>" name="<TMPL_VAR NAME=template3-name>" value="<TMPL_VAR NAME=template3-value>"></TMPL_IF>
	<TMPL_IF name=template4-name><input type="hidden" id="<TMPL_VAR NAME=template4-name>" name="<TMPL_VAR NAME=template4-name>" value="<TMPL_VAR NAME=template4-value>"></TMPL_IF>
	<input type="hidden" name="max_template_saved" value="<tmpl_var name=max_template_saved>">
	<input type="hidden" name="saved_pref_count" value="<tmpl_var name=saved_pref_count>">
