                <!-- begin: myaccount_cancel_section.tpl -->
		<tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		     
		     <script>
			function verify_cancel() {
			    var x = confirm("Please confirm that you wish to disable this feature.")
			    if (x) {
				send_event('PRELOGIN/ENABLE_DISABLE');
			    }	
			}

		      </script>

		    <table border="0" cellpadding="1" cellspacing="0" width="500" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500">
			    <tr><td class="unifont1">
			      
			      <TMPL_IF NAME=CONFIRM>
				You have successfully disabled this feature.  
			      <TMPL_ELSE>
			      You have the option to disable this feature. You will be able to re-enable it at any time.
			     <input type=hidden name="CONFIRM" value="1">
			      </TMPL_IF>

			    </td></tr>
			  </table>
			</td>
		      </tr>
		  </table>
		  </td>
                </tr>
    
                <tr>
                  <td colspan="2" align="center" class="myaccounttitle" height="100" valign="middle">
                    <table border=0 cellspacing=5 cellpadding=5>
		    <tr>
		    <td valign=middle>
		    <TMPL_UNLESS NAME=CONFIRM>
		    <input type=button value="Disable" onclick="verify_cancel()">
		    <TMPL_ELSE>
		    <input type=button value="Continue" onclick="go_back()">
		    </TMPL_UNLESS>
		    </td>
		    <TMPL_UNLESS NAME=CONFIRM>		    
		    <td valign=middle>
		    <input type=button value="Cancel" onclick="send_event('MYACCOUNT/SHOW_PREFERENCES')">
		    </td>
		    </TMPL_UNLESS>
		    </tr>
		    </table>
		  </td>
                </tr>
		<!-- end: myaccount_cancel_section.tpl -->

