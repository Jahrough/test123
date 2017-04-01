<!-- BEGIN ip_restrict_body -->
    <script>    
    <!--
    function setid(id) {
	var this_form = document.forms[0];
	this_form.IP_ACCESS_ID.value=id;
    }
    //-->
    </script>
    
    
    <table border="1" cellpadding="0" cellspacing="1" width="756" bgcolor="#d0ccd0">
	  <tr>
	    <td class="unifont1" nowrap align="center" valign="middle"><b><TMPL_IF IP>Your current IP: <TMPL_VAR NAME="ip"></TMPL_IF></b></td>
	  </tr>

	  <TMPL_IF SUCCESS>
	  <tr class="myaccountbody">
	  <td class="unifont1" align=center nowrap valign=top>
	  <br>
	  <span class="errmsg">The IP address has been saved.</span>
	  </br>
	  </td>
	  </tr>
  	  </TMPL_IF>
	  <tr class="myaccountbody">
	      <td class="unifont1" align="center" nowrap valign="top">&nbsp;<BR><a href="javascript:send_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/return_to_security.gif"></a><TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('SECURITY/SHOW_ADD_IP')"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/add_ip_address.gif"></a></TMPL_IF><BR>&nbsp;</td>
	      
	  </tr>
	  <tr class="myaccountbody">
	  <td class="errmsg" align="center"><BR>
	  <TMPL_IF ERROR_STATUS_CHANGE>You currently have active Country restrictions on this account.  Please disable all active Country restriction records and try again.</TMPL_IF>
	  <TMPL_IF ERROR_TYPE_CONFLICT>You currently have active Country restrictions on this account.  Please disable all active Country restriction records and try again.</TMPL_IF>
	  <TMPL_IF ERROR_NUMRANGES_OVER_LIMIT>You already have the maximum number of <TMPL_VAR NAME=MAXRANGES> IP ranges enabled. Please contact Customer Service.</TMPL_IF>
	  <TMPL_IF ERROR_NUMRANGES_UNDER_LIMIT>You need to keep at least one IP range enabled.</TMPL_IF>
	  <TMPL_IF ERROR_DISABLING_OWN_RANGE>You cannot disable this IP range because doing so would lock you out.</TMPL_IF>	
	  <TMPL_IF ERROR_UNKNOWN>An unknown Error has occured.  Please try again in a few minutes.</TMPL_IF>
	  </td></tr>
  	  <tr class="myaccountbody">
	  <td align="center">
	<!-- prodmon insert -->
	<br>
	<table align=center border=1 cellpadding=3 cellspacing=0 width=500>
	  <tr><td colspan=<TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">6<TMPL_ELSE>5</TMPL_IF> align=center class="unifont2" bgcolor="#d0ccd0">
	  <b>Enabled IP Access Records</b>
	  </td></tr>
	  <tr bgcolor="#eeeeee">
      <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
	    <td nowrap align=center class="smallfont1">&nbsp;</td> 
      </TMPL_IF>
	    <td nowrap align=center class="smallfont1"><b>From IP</b></td>
	    <td nowrap align=center class="smallfont1"><b>To IP</b></td> 
	    <td nowrap align=center class="smallfont1"><b>Status</b></td>
	    <td nowrap align=center class="smallfont1"><b>Date Changed</b></td>
	  </tr>
	  <TMPL_IF COMPANY_IP_ACCESS_RECORDS_ENABLED>
	  <TMPL_LOOP COMPANY_IP_ACCESS_RECORDS_ENABLED>
	  <tr bgcolor="<TMPL_VAR bgcolor>">  
      <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
	    <td align=center class="smallfont1"><b><a class="bluelink" href="javascript:setid(<TMPL_VAR ip_access_id>);send_event('SECURITY/SHOW_CHANGE_IP_STATUS')">Edit</a></b></td>
      </TMPL_IF>
	    <td align=center class="smallfont1"><TMPL_VAR IP1></td>
	    <td align=center class="smallfont1"><TMPL_VAR IP2></td>
	    <td align=center class="smallfont1"><TMPL_VAR status></td>
	    <td nowrap align=center class="smallfont1"><TMPL_VAR datechanged></td>
	  </tr>
	  </TMPL_LOOP>
	  <TMPL_ELSE>
	  <tr bgcolor="<TMPL_VAR bgcolor>">  
	    <td colspan=<TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">6<TMPL_ELSE>5</TMPL_IF> align=center class="smallfont1">No Records Found.</td>
	  </tr>
	  </TMPL_IF>
	</table>
	<br clear=all>
	<br>	
	<table align=center border=1 cellpadding=3 cellspacing=0 width=500>
	  <tr><td colspan=<TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">6<TMPL_ELSE>5</TMPL_IF> align=center class="unifont2" bgcolor="#d0ccd0">
	  <b>Disabled IP Access Records</b>
	  </td></tr>
	  <tr bgcolor="#eeeeee">
      <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
	    <td nowrap align=center class="smallfont1">&nbsp;</td>
      </TMPL_IF>
	    <td nowrap align=center class="smallfont1"><b>From IP</b></td>
	    <td nowrap align=center class="smallfont1"><b>To IP</b></td> 
	    <td nowrap align=center class="smallfont1"><b>Status</b></td>
	    <td nowrap align=center class="smallfont1"><b>Date Changed</b></td>
	  </tr>
	  <TMPL_IF COMPANY_IP_ACCESS_RECORDS_DISABLED>
	  <TMPL_LOOP COMPANY_IP_ACCESS_RECORDS_DISABLED>
	  <tr bgcolor="<TMPL_VAR bgcolor>"> 
      <TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">
	    <td align=center class="smallfont1"><b><a class="bluelink" href="javascript:setid(<TMPL_VAR ip_access_id>);send_event('SECURITY/SHOW_CHANGE_IP_STATUS')">Edit</a></b></td>
      </TMPL_IF>
	    <td align=center class="smallfont1"><TMPL_VAR IP1></td>
	    <td align=center class="smallfont1"><TMPL_VAR IP2></td>
	    <td align=center class="smallfont1"><TMPL_VAR status></td>
	    <td nowrap align=center class="smallfont1"><TMPL_VAR datechanged></td>
	  </tr>
	  </TMPL_LOOP>
	  <TMPL_ELSE>
	  <tr bgcolor="<TMPL_VAR bgcolor>">  
	    <td colspan=<TMPL_IF NAME="ENABLE_EDIT_IP_RESTRICTIONS">6<TMPL_ELSE>5</TMPL_IF> align=center class="smallfont1">No Records Found.</td>
	  </tr>
	  </TMPL_IF>

	</table>

	<br clear=all>

	<!-- /prodmon insert -->
	  </td>
	  </tr>
    </table>
<!-- END ip_restrict_body -->
