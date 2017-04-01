<!-- begin: $RCSfile: verify_history.tpl,v $ -->
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
	<TMPL_IF NAME=VERIFICATION_LOOP>
	    <TMPL_IF NAME="SHOW_VERIFY_LINK">
	    <br>
	    <div class="genbox">
	    <a href="javascript:send_event('MANAGE/VERIFY_ACCOUNT_NOW');">Verify Account</a>
	    </div>
	    </TMPL_IF>
	<TMPL_LOOP NAME=VERIFICATION_LOOP>
        <table border="1" cellpadding="3" cellspacing="0" width="100%">
          <tr bgcolor="#999999">
            <TD class="unifont1bold" align="center" nowrap="nowrap">Verified by:</TD>
            <TD class="unifont1bold" align="center" nowrap="nowrap">Verified On:</TD>
            <TD class="unifont1bold" align="center" nowrap="nowrap">Verified from IP:</TD>
          </tr>
          <tr bgcolor="white">
            <TD class="unifont1" valign="top"><TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME> (<TMPL_VAR NAME=LOGINID>)</TD>
            <TD class="unifont1" valign="top"><TMPL_VAR NAME=DATE_ADDED>&nbsp;</TD>
            <TD class="unifont1" valign="top"><TMPL_VAR NAME=IP></TD>
          </tr>
        </table>
        <table border="1" cellpadding="3" cellspacing="0" width="100%">
          <tr bgcolor="#999999">
            <TD class="unifont1bold" align="center" nowrap="nowrap">Users Verified:</TD>
            <TD class="unifont1bold" align="center" nowrap="nowrap">Users Suspended as a result of verification:</TD>
          </tr>
          <tr bgcolor="white">
            <TD class="unifont1" valign="top">
	    <div class="scrollbox">
	    <ul><TMPL_LOOP NAME=VERIFIED_LIST><li><TMPL_VAR NAME="FIRSTNAME"> <TMPL_VAR NAME="LASTNAME"> (<TMPL_VAR NAME="LOGINID">)</li></TMPL_LOOP></ul>&nbsp;
	    </div>
	    </TD>
            <TD class="unifont1" valign="top">
	    <div class="scrollbox">
	    <ul><TMPL_LOOP NAME=SUSPEND_LIST><li><TMPL_VAR NAME="FIRSTNAME"> <TMPL_VAR NAME="LASTNAME"> (<TMPL_VAR NAME="LOGINID">)</li></TMPL_LOOP></ul>&nbsp;
	    </div>
	    </TD>
          </tr>
        </table>
        </TMPL_LOOP>
	<TMPL_ELSE>
        <center>
	<table border="0" cellpadding="3" cellspacing="0" width="80%">
	<tr>
	<TD class="unifont1" valign="top" align=center>
	There is no verification history for your company at this time. <br>
	<TMPL_IF SHOW_VERIFY_LINK>
	If you would like to verify now, please click the button below.
	<br><br>
	<input class="verifyaccount" type="button" onclick="send_event('MANAGE/VERIFY_ACCOUNT_NOW');" value="   VERIFY NOW   ">
	</TMPL_IF>
	<br><br>
	</TD>
	</tr>
	</table>
	</center>
	</TMPL_IF>
    </td>
    </tr>
    </table>
    <TMPL_INCLUDE NAME="manage_account_bottom.tpl">
<!-- end: $RCSfile: verify_history.tpl,v $ -->
