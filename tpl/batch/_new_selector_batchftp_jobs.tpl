<!-- BEGIN _selector_batchftp_jobs.tpl -->
								<select name="<TMPL_VAR __BATCHFTP_FTPJOBS_NAME__>">
                				<option value="">-- Choose One --</option>
<TMPL_LOOP __BATCHFTP_FTPJOBS_LOOP__>
                				<option value="<TMPL_VAR FTP_USERID>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR FTP_USERID> (created: <TMPL_VAR DATECREATED>)</option>
</TMPL_LOOP>
                				</select>
<!-- END _selector_batchftp_jobs.tpl -->
