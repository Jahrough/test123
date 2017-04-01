<!-- BEGIN _selector_ir_strategies.tpl -->
								<select name="<TMPL_VAR __SELECTOR_IR_STRATEGIES_NAME__>">
                				<option value="">-- Choose One --</option>
<TMPL_LOOP __SELECTOR_IR_STRATEGIES__>
                				<option value="<TMPL_VAR STRATEGY_ID>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR DISPLAY_NAME></option>
</TMPL_LOOP>
                				</select>
<!-- END _selector_ir_strategies.tpl -->
