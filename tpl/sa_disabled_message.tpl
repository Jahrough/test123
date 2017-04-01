<!-- Begin sa_disabled_message.tpl -->

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
          <tr height="39">
            <td height="39" align="center">
            <table border="0" cellpadding="0" cellspacing="0" width="720" >
              <tr>
                <td align="center" class="myaccounttitle"><br>Please Note!</td>
	      </tr>
	      <tr>
	      <TMPL_IF NAME="SA_DISABLED_REASON_OTP_ROAMING">
		<td class="unifont1">
		<br><br>
		Your administrator privileges have been temporarily revoked because you bypassed the Secure Token Authentication.
		<br><br>
		Thank you for your cooperation in making our systems secure.
		<br><br><br><br><br><br>
		</td>
	      <TMPL_ELSE>
              <TMPL_IF NAME="SA_DISABLED_REASON_MOBILE">
		<td class="unifont1">
		<br><br>
		Your administrator privileges have been temporarily revoked because you are accessing our system from a mobile device.
		<br><br>
		Thank you for your cooperation in making our systems secure.
		<br><br><br><br><br><br>
		</td>
              <TMPL_ELSE>
		<td class="unifont1">
		<br><br>
		Your administrator privileges have been temporarily revoked because you are accessing our system from a location not in the list of approved locations.
		<br><br>
		If you want to add this location, please contact Customer Support.
		<br><br>
		Thank you for your cooperation in making our systems secure.
		<br><br><br><br><br><br>
		</td>
		</TMPL_IF>
              </TMPL_IF>
	      </tr>
	    </table>
	    </td>
	  </tr>
        </table>
        </td>
      </tr>
    </table>
	  
    <TMPL_INCLUDE NAME=myaccount_footer.tpl>

    </td>
  </tr>
</table>

<!-- End sa_disabled_message.tpl -->
