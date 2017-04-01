<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td height="12" class="myaccountborder" width="856"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="856" height="12"></td>
  </tr>    
  <tr>
    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
      <tr>
        <td width="12"></td>
        <td align="center">
        <table border="0" cellpadding="0" cellspacing="0" class="myaccountalert" width="856">
	  <tr height="39">
	    <td align="center" valign="middle" height="39"> <span class="unifont1">Currently managing <TMPL_IF MANAGE_ACCOUNTS>users for<TMPL_ELSE>company</TMPL_IF> <span class="unifont1bold"><TMPL_VAR NAME="ACTIVE_COMPANY_COMP_ID"> - <TMPL_VAR NAME="ACTIVE_COMPANY_NAME"></span>. Click <a href="javascript:send_event('MYACCOUNT/SHOW_PROFILE')">here</a> to manage a different company.</span></td>  
	  </tr>
	</table>
	</td>
        <td width="12"></td>
      </tr>
    </table>
    </td>
  </tr>
</table>
