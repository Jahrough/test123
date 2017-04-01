<!-- begin: $RCSfile: verify_suspended_list.tpl,v $ -->
    <TMPL_INCLUDE NAME="manage_account_top.tpl">
    <table cellpadding="0" cellspacing="0" border="0" width="90%">
    <tr>
    <td width="90%">
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
	</table>    
    </div>
    </center>
    <br><br>
	<tmpl_include name="verify_suspended_user_list.tpl">
    </td>
    </tr>
    <tr>
    <td width="100%" align="center">
    <br>
    <input type="button" onclick="window.close();" value="  CLOSE  ">
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_suspended_list.tpl,v $ -->
