<!-- begin: $RCSfile: verify_account.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <script>

    </script>
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%" class="unifont1">
    <center>
    <div class="infobox">
	<table border="0" width="100%">
	<tr>
	<td align="left" width="35%" nowrap="nowrap">
	<b>Company ID:</b> <tmpl_var name="COMPANY_ID">
	</td>
	<td align ="left" width="65%" nowrap="nowrap">
	<b>Company Name:</b> <tmpl_var name="COMPANYNAME">
	</td>
	</tr>
	</table><br>
    
    To ensure the security of your account,  please verify that each of the users below are valid users and should have access to your account by checking the check box next to their loginid.&nbsp;&nbsp;If any users are not selected by checking the box, those users will be suspended.
	<ul>
	<li>A <span style="color: red;">red</span> background indicates that the user has been added to the system in the last 30 days.</li>
	<li>A user highlighted in <span style="color: blue;">blue</span> indicates they are System Administrators.&nbsp;&nbsp;Pay special attention to administrator accounts because these accounts can create new users within your account.</li>
	</ul>
	<div class="genbox">
	    <center>
	    <table width="80%" cellspacing="2">
	    <tr>
	    <td align="left" width="25%" class="smallfont1">
	    &nbsp;
	    </td>
	    <td align="right" width="15%" class="smallfont1">
	    <b>Admin User</b>
	    </td>
	    <td align="right" width="15%" class="smallfont1" nowrap="nowrap">
	    <b>User</b>
	    </td>
	    <td align="right" width="10%" class="smallfont1">
	    <b>Total</b>
	    </td>
	    <td align="right" width="15%" class="smallfont1">
	    &nbsp;
	    </td>
	    </tr>

	    <tr>
	    <td align="left" class="smallfont1">
	    <b>Active</b>
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_ACTIVE_ADMIN_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_ACTIVE_REG_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_ACTIVE_USERS">
	    </td>
	    <td align="right" class="smallfont1">
	    &nbsp;
	    </td>
	    </tr>

	    <tr>
	    <td align="left" class="smallfont1">
	    <b>Suspended</b>
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_INACTIVE_ADMIN_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_INACTIVE_REG_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_INACTIVE_USERS">
	    </td>
	    <td align="left" class="smallfont1">
	     &nbsp;[ <a href="javascript:void(0)" onclick="general_win('<tmpl_var name=ACTION>?SESSION_ID=<tmpl_var name=SESSION_ID>&CSRF_TOKEN=<tmpl_var name=CSRF_TOKEN>&EVENT=MANAGE/VERIFY_ACCOUNT_SUSPENDED&VERIFICATION_ID=<tmpl_var name=VERIFICATION_ID>', 'SuspendedList', 800, 550, null, null, null, 1);">View List</a> ]
	    </td>
	    </tr>

	    <tr>
	    <td align="left" class="smallfont1">
	    <b>Total</b>
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_ADMIN_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_REG_USERS">
	    </td>
	    <td align="right" class="smallfont1" bgcolor="#eeeeee">
	    <tmpl_var name="TOTAL_USERS">
	    </td>
	    <td align="right" class="smallfont1">
	    &nbsp;
	    </td>
	    </tr>
	    </table>
	    </center>
	</div>
        <br>
    User verification <TMPL_UNLESS NAME=DEADLINE_PASSED>must be completed by <TMPL_VAR NAME=DEADLINE> (<TMPL_VAR NAME=DAYS_REMAINING> days remaining) or Social Security and Drivers License numbers will be masked on your account.<TMPL_ELSE> was not completed before <TMPL_VAR NAME=DEADLINE>. Social Security and Drivers License numbers have been masked for your account, and will only be unmasked after verification is complete.</TMPL_UNLESS> 
    <br><br>
    <span class="smallfont1"><a href="javascript:send_event('MANAGE/VERIFICATION_LOG')">View Verification History</a></span>
    </div>
    </center>
    <br><br>
    <center> 
	<tmpl_include name="verify_user_paging_links.tpl">
	<tmpl_if name="NEXT_OFFSET">
	<br><br>
	<strong>Note:</strong> Results exceed page size, please view all pages in order to verify the account.
	</tmpl_if>
    </center>	
    </td>
    </tr>
    
    <tr>
    <td width="90%" class="unifont1" align="center">
    <br>
	<tmpl_include name="verify_user_list.tpl">
    <center> 
	<tmpl_include name="verify_user_paging_links.tpl">
        <br>
	<br>
	[ <a href="javascript:void(0)" onclick="general_win('<tmpl_var name="ACTION_MISC">?SESSION_ID=<tmpl_var name="SESSION_ID">&CSRF_TOKEN=<tmpl_var name=CSRF_TOKEN>&EVENT=MANAGE/VERIFY_ACCOUNT_CSV', 'DownloadList', 800, 550, null, null, null, 1);"><TMPL_VAR NAME='DOWNLOAD_BUTTON_TXT'></a> ]
    </center>	
    <br>
    </td>
    </tr>
    
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_account.tpl,v $ -->
