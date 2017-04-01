<!-- BEGIN _selector_batchftp_files.tpl -->
				                <select name="<TMPL_VAR __BATCHFTP_FILES_NAME__>">
                				<option value="">-- Choose One --</option>
<TMPL_LOOP __BATCHFTP_FILES_LOOP__>
                				<option value="<TMPL_VAR basename>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR basename> [<TMPL_VAR size> bytes] (created: <TMPL_VAR modified>)</option>
</TMPL_LOOP>
                				</select>
