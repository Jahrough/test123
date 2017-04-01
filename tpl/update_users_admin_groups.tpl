<!-- BEGIN update_users_admin_groups.tpl -->
	<fieldset>
		<div align="left" class="unifont1bold"><legend>Current User Groups</legend></div>
			<table border="0" cellpadding="0" cellspacing="0" width="95%">
				<TMPL_LOOP NAME='USER_GROUPS_LIST'>
				<tr>
					<td width="75%" nowrap class="unifont1" align="left">&nbsp;<TMPL_VAR NAME='GROUP_NAME'></td>
					<td width="25%" align="left">
					<table border="0" cellpadding="0" cellspacing="0">
					  <tr>
						<td><INPUT TYPE=RADIO NAME="<TMPL_VAR NAME=GROUP_ID>" VALUE='0' checked></td>
						<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
						<td><INPUT TYPE=RADIO NAME="<TMPL_VAR NAME=GROUP_ID>" VALUE='1'></td>
						<td class="unifont1">No</td>
					  </tr>
					</table>
				  </td>
				</tr>
				</TMPL_LOOP>
			</table>
		</span>
	</fieldset>
<!-- END update_users_admin_groups.tpl -->