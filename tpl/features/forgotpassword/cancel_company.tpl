<!-- begin: cancel_company.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/header.tpl">
            
             
	      <table border="0" cellpadding="0" cellspacing="0" width="756">
                <tr height="12">
                  <td height="12" width="756" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table border="0" cellpadding="0" cellspacing="0" width="756" class="myaccountbody">
                <tr>
		  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
		    Cancel: Password Reset
		    <br/><br/>
		  </td>
                </tr>
                <tr>
                  <td colspan="2" align="center" class="myaccountlabel" height="100" valign="middle">
		    <table border="0" cellpadding="1" cellspacing="0" width="500" class="myaccountborder" style="margin: 0 auto">
		      <tr>
			<td align="center">
			  <table border="0" cellpadding="10" cellspacing="0" width="500" class="myaccountalert">
			    <tr><td class="unifont1">
			      
			      <TMPL_IF NAME=CONFIRM>
				You have disabled this feature. You can reenable it at any time in the My Account page (Manage Company section).  
			      <TMPL_ELSE>
			      You are about to disable the 'Password Reset' feature. <br><br>
			      Are you sure you want to do this?
			     <br>
			     <br>
			     <input type=checkbox name="confirm" value="Y">Yes, go ahead and disable this feature for me.
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
		    <TMPL_IF NAME=CONFIRM>		    
		    <td valign=middle>
		    <input type=button value="Continue" onclick="send_event('<TMPL_VAR NAME=EVENT>')">
		    </td>
		    <TMPL_ELSE>
		    <td valign=middle>
		    <input type=button value="Continue" onclick="send_event('<TMPL_VAR NAME=EVENT>')">
		    </td>
		    <td valign=middle>
		    <input type=button value="Go Back" onclick="send_event('MANAGE/UPDATE_SINGLE_USER')">
		    </td>
		    </TMPL_IF>
		    </tr>
		    </table>
		  </td>
                </tr>
              </table>
    
<TMPL_INCLUDE NAME="features/forgotpassword/footer.tpl">

<!-- end: cancel_company.tpl -->
