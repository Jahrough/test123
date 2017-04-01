<!-- dynamic_report_template_colcomp.tpl -->

<input xmlns="" type="hidden" name="KEY_VALUES" 
value="
err_msg^<tmpl_var name=error_dreport>^

<tmpl_if name=template_selected>
template_selected^1^
<tmpl_else>
template_selected^0^
<tmpl_if name=max_template_saved>
drptAction^You have 4 templates saved. Please select a template to delete, rename or overwrite.^
<tmpl_else>
drptAction^^
</tmpl_if>
</tmpl_if>

result_code^<TMPL_VAR NAME=result_code>^
request_type^<TMPL_VAR NAME=request_type>^

saved_pref_count^<tmpl_if name=saved_pref_count><TMPL_VAR NAME=saved_pref_count><tmpl_else>0</tmpl_if>^

template_name_1^<TMPL_VAR NAME=template1-name>^
template_name_2^<TMPL_VAR NAME=template2-name>^
template_name_3^<TMPL_VAR NAME=template3-name>^
template_name_4^<TMPL_VAR NAME=template4-name>^

template_value_1^<tmpl_if name=template1-name><TMPL_VAR NAME=template1-value><tmpl_else></tmpl_if>^
template_value_2^<tmpl_if name=template2-name><TMPL_VAR NAME=template2-value><tmpl_else></tmpl_if>^
template_value_3^<tmpl_if name=template3-name><TMPL_VAR NAME=template3-value><tmpl_else></tmpl_if>^
template_value_4^<tmpl_if name=template4-name><TMPL_VAR NAME=template4-value><tmpl_else></tmpl_if>^

template_active_1^<tmpl_if name=template1-active>1<tmpl_else>0</tmpl_if>^
template_active_2^<tmpl_if name=template2-active>1<tmpl_else>0</tmpl_if>^
template_active_3^<tmpl_if name=template3-active>1<tmpl_else>0</tmpl_if>^
template_active_4^<tmpl_if name=template4-active>1<tmpl_else>0</tmpl_if>^






eof^eof">
	
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
		<div id="drptAction">
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
