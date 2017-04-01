<!-- BEGIN _selector_ir_scores.tpl -->
								<select name="<TMPL_VAR __SELECTOR_IR_SCORES_NAME__>">
                				<option value="">-- Choose One --</option>
<TMPL_LOOP __SELECTOR_IR_SCORES__>
                				<option value="<TMPL_VAR STRATEGY_ID>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
</TMPL_LOOP>
                				</select>
<!-- END _selector_ir_scores.tpl -->
