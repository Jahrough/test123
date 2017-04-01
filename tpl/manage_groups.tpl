<!-- begin manage_groups.tpl -->
<script src="<TMPL_VAR NAME='JSPATH'>/sorttable.js"></script>
<input type=hidden name="PAGE_NUMBER" value=<TMPL_IF NAME="CURRENT_PAGE"><TMPL_VAR NAME="CURRENT_PAGE"><TMPL_ELSE>1</TMPL_IF>>
<input type=hidden name="PREVIOUS_ALL_GROUPS" value=<TMPL_VAR NAME="PREVIOUS_ALL_GROUPS">>
<input type=hidden name="SUSPEND_CHECKED_GROUPS" value=0>
<table border="0" cellpadding="0" cellspacing="0" width="880">
	<tr>
		<td valign="top">
			<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
				<tr>
					<td align="center">
						<table border="0" cellpadding="0" cellspacing="0" class="myaccountbody" width="860">
							<tr>
								<td height="12" class="myaccountborder" width="856"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
							</tr>
							<tr>
							  <td align="center" class="myaccounttitle"><br>Manage Groups<br><br></td>
							</tr>
							<tr height="39">
								<td align="center" valign="middle" height="39">
									<table border="0" cellpadding="0" cellspacing="0">
										<tr>
											<td><TMPL_UNLESS CANNOT_ADD_GROUP><a href="javascript:send_event('MANAGE/ADD_GROUP')"><img alt="" width="89" height="24" border="0" name="addgroupadmin" src="<TMPL_VAR NAME=IMGPATH>/add_group.gif"></a></TMPL_UNLESS></td>
											<td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;</td>
											<td><a href="javascript:send_event('MANAGE/DELETE_GROUP');" onClick="return delete_group()"><img width="89" height="24" border="0" name="deletegroup" src="<TMPL_VAR NAME=IMGPATH>/delete_group.gif"></a></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td height="12" class="myaccountborder" width="856"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>

<TMPL_IF NAME="MANAGE_GROUP_ERROR">
	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center" valign="top">
				<table border="1" cellpadding="3" cellspacing="0" width="860">
					<tr bgcolor="silver">
						<td class="myaccounttitle" align="center" bgcolor="silver">
							<TMPL_IF NAME="ERROR_NOSELECT">Please Select a Group</TMPL_IF>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</TMPL_IF>

<TMPL_IF NAME="GROUP_ADDED">
	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center" valign="top">
				<table border="1" cellpadding="3" cellspacing="0" width="860">
					<tr BGCOLOR="silver">
						<td class="myaccounttitle" align="center" bgcolor="silver"><TMPL_VAR NAME="GROUP_ADDED"></TD>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</TMPL_IF>

<TMPL_IF NAME="MESSAGE">
	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center" valign="top">
				<table border="1" cellpadding="3" cellspacing="0" width="860">
					<tr>
						<td class="myaccounttitle" align="center" bgcolor="silver"><TMPL_VAR NAME=MESSAGE></TD>
					</tr>
				<table>
			</td>
		</tr>
	</table>
</TMPL_IF>

<TMPL_IF NAME=GROUP_LIST>
	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td class="myaccountborder"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="12" height="12"></td>
		</tr>
	</table>

	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center" valign="top">
				<table border="1" cellpadding="3" cellspacing="0" width="860" class="sortable" id="order_list">
					<tr class="myaccountbody">
						<td class="unifont1bold" align=left NOWRAP width="10">Delete</td>
						<td class="unifont1bold" align=left NOWRAP>Group Name</td>
					</tr>
					<TMPL_LOOP NAME=GROUP_LIST>
					<tr bgcolor="white">
						<td class="unifont1" width="10"><input type="radio" name="admingroup" value="<TMPL_VAR NAME=GROUP_ID>" onClick="delete_group_set(<TMPL_VAR NAME=GROUP_ID>, '<TMPL_VAR NAME=GROUP_NAME_ESC>', <TMPL_VAR NAME=GROUP_USER_COUNT>,0)"/></td>
						<td class="unifont1">
							<a href="javascript:update_group('<TMPL_VAR NAME=GROUP_ID>','<TMPL_VAR NAME=GROUP_NAME_ESC>', 1)"><b><TMPL_VAR NAME=GROUP_NAME></b></a>
						</td>
					</tr>
					</TMPL_LOOP>
				</table>
			</td>
		</tr>
	</table>
<TMPL_ELSE>


	<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
		<tr>
			<td align="center">
				<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
					<tr height="12">
						<td height="12" width="856" class="myaccountborder"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
					</tr>
					<tr>
						<td align="center">
							<table border="0" cellpadding="0" cellspacing="0" width="640" class="myaccountbody">
								<tr>
									<td align="center"><img alt="" border="0" with="1" height="20" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
								</tr>
								<tr>
									<td class="unifont2">
										Please add a group with the above "Add Group" button
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<tr heignt="12">
						<td height="12" width="856" class="myaccountbody"><img alt="" height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
					</tr>

				</table>
			</td>
		</tr>
	</table>

</TMPL_IF>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

		</td>
	</tr>
</table>


<span class="smallfont1">&nbsp;<br></span>

<INPUT TYPE="HIDDEN" NAME="LOGINID" VALUE="">
<INPUT TYPE="HIDDEN" NAME="SORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="OLDSORT" VALUE="<TMPL_VAR NAME=SORT>">
<INPUT TYPE="HIDDEN" NAME="SORTDIR" VALUE="<TMPL_VAR NAME=SORTDIR>">
<INPUT TYPE="HIDDEN" NAME="GROUP_ID" VALUE="<TMPL_VAR NAME=GROUP_ID>">
<INPUT TYPE="HIDDEN" NAME="GROUP_NAME" VALUE="<TMPL_VAR NAME=GROUP_NAME>">
<INPUT TYPE="HIDDEN" NAME="GROUP_USER_COUNT" VALUE="<TMPL_VAR NAME=GROUP_USER_COUNT>">
<INPUT TYPE="HIDDEN" NAME="GROUP_STATUS" VALUE="<TMPL_VAR NAME=GROUP_STATUS>">
<!-- end manage_groups.tpl -->
