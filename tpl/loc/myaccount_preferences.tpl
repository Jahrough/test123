<!-- begin myaccount_preferences.tpl -->
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">

<table border="0" cellpadding="0" cellspacing="0" width="880" class="myaccountborder">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td align="center">
	<br>

	<select class="unifont1" name="CHOOSE_PREFS" onChange="send_event('MYACCOUNT/SHOW_PREFERENCES');">
		<option value="USER"<TMPL_IF SHOW_USER_PREFS> SELECTED</TMPL_IF>>Other User Settings</option>
		<option value="COMPREHENSIVE"<TMPL_IF SHOW_COMPREHENSIVE_PREFS> SELECTED</TMPL_IF>>Comprehensive Report Options</option>
		<!--<option value="BUS"<TMPL_IF SHOW_BUS_PREFS> SELECTED</TMPL_IF>>Business Report Options</option>-->
	</select>
	<br><br>
	<TMPL_IF SAVEMSG><div class="smallfont1"><b>Your Preferences have been Saved.</b></div><br>
	</TMPL_IF>

	
	<TMPL_IF SHOW_BUS_PREFS>
		<span class="myaccounttitle">Comprehensive Business Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
		<br><br>
		<TMPL_INCLUDE NAME=../v2/report/short_bus_report_body.tpl>
		<br>
		<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
		<br>
		<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="BUS">
	<TMPL_ELSE>
			<TMPL_IF SHOW_COMPREHENSIVE_PREFS>
				<span class="myaccounttitle">Comprehensive Report Features<TMPL_UNLESS HIDE_PRICES> and Pricing</TMPL_UNLESS></span>
				<TMPL_INCLUDE NAME=../v2/loc/report/short_comprehensive_report_body.tpl>
				<br>
				<TMPL_INCLUDE NAME=myaccount_preferences_horizontal_line.tpl>
				<br>
				<INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="COMPREHENSIVE">
			<TMPL_ELSE>
				<TMPL_IF SHOW_USER_PREFS>
					    <TMPL_INCLUDE NAME=loc/user_settings_prefs.tpl>
					    <br>
					    <TMPL_INCLUDE NAME=../myaccount_preferences_horizontal_line.tpl>
					    <br>
					    <INPUT TYPE="HIDDEN" NAME="SHOW_PREFS" VALUE="USER">
				</TMPL_IF>
			</TMPL_IF>
	</TMPL_IF>

	<TMPL_UNLESS NAME=MYACCOUNT_PREFERENCES_CHILD>
	<table border="0" cellpadding="0" cellspacing="0" width="740" class="myaccountbody">
	  <tr>
	    <td height="60" valign="middle" align="center"><a href="javascript:send_event('MYACCOUNT/SAVE_PREFERENCES');"><img width="120" height="24" border="0" name="saveprefadmin" src="<TMPL_VAR NAME=IMGPATH>/savepref.gif"></a></td> 
	  </tr>
	</table>
	</TMPL_UNLESS>
        </td>
      </tr>
    </table>
    </td>
  </tr>  
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<br>
<!-- end myaccount_preferences.tpl -->
