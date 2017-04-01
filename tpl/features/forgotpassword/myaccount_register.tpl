<!-- myaccount_register.tpl -->

	      <table border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr height="12">
                  <td height="12" width="100%" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table border="0" cellpadding="0" cellspacing="0" width="100%" class="myaccountbody">
                <tr height="12">
                  <td height="12" width="100%" class="unifont1">&nbsp;</td>
                </tr>
              </table>
              
	      <table align=center border="0" cellpadding="1" cellspacing="0" width=600>
                <tr>
		<td align=center>
		<table border=0 cellspacing=0 cellpadding=0 width="100%">
		
		<tr>
		  <td align="center" class="myaccounttitle" height="20" valign="middle"><br>
		    Forgot Password
		  </td>
                </tr>		
	
		<tr><td align=center>
		<table border=0 cellspacing=0 cellpadding=0>
		
		<TMPL_IF NAME="MYACCOUNT_FORGOTPASSWORD_REGISTRATION">
		<script>function go_back() { send_event('MYACCOUNT/SHOW_PREFERENCES'); }</script>
		</TMPL_IF>
              
		<TMPL_INCLUDE NAME="features/forgotpassword/myaccount_register_section.tpl">
	    
		</table>
	      </td>
	      </tr>
	      </table>
	    </td>
	    </tr>
	    </table>

<!-- end myaccount_register.tpl -->
