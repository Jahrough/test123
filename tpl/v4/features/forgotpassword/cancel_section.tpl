                <!-- begin: cancel_section.tpl -->
		<tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		     
		     <script>
			function verify_cancel() {
			    var x = confirm("Please confirm that you wish to disable this feature.")
			    if (x) {
				send_event('PRELOGIN/CANCEL_REGISTER')
			    }	
			}

		      </script>

		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500" class="myaccountalert">
			    <tr><td class="unifont1">
			      
			      <TMPL_IF NAME=CONFIRM>
				You have successfully disabled this feature. 			      
			      <TMPL_ELSE>
			      You have the option to disable this feature. You will be able to re-enable it at any time via the My Account page (Preferences section).
			     
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
		    <input class="btn btn-danger" type=button value="Continue" onclick="verify_cancel()">
		    <TMPL_ELSE>
		    <input class="btn btn-danger" type=button value="Continue" onclick="all_done_continue()">
		    </TMPL_UNLESS>
		    </td>
		    <TMPL_UNLESS NAME=CONFIRM>		    
		    <td valign=middle>
		    <input class="btn btn-danger" type=button value="Cancel" onclick="send_event('XXX')">
		    </td>
		    </TMPL_UNLESS>
		    </tr>
		    </table>
		  </td>
                </tr>
		<!-- end: cancel_section.tpl -->

