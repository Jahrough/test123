<!-- begin: myaccount_enable.tpl -->

<TMPL_INCLUDE NAME="features/forgotpassword/myaccount_header.tpl">
	      
	      <table border="0" cellpadding="0" cellspacing="0" width="100%">
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
		    <br/><br/>
		  </td>
                </tr>		

		<tr>
		<td align=center>
		<p>Current status: <b><TMPL_IF NAME=FP_DISABLED>DISABLED<TMPL_ELSE><TMPL_IF NAME=FP_NOT_VERIFIED>NEED VERIFICATION<TMPL_ELSE><TMPL_IF NAME=FP_ELIGIBLE>DISABLED<TMPL_ELSE>ENABLED</TMPL_IF></TMPL_IF></TMPL_IF></b></p>
		</td>
		</tr>
		
		<tr><td align=center>
		<table border=0 cellspacing=0 cellpadding=0>
		<TMPL_IF MYACCOUNT_LOOPBACK>
	        <tr>
                  <td align="center" class="myaccounttitle" height="100" width="100%" valign="middle">
		    <input type=button value="Continue" onclick="go_back()">
		  </td>
                </tr>
	
		<TMPL_ELSE>
		    <TMPL_IF NAME=FP_ELIGIBLE>
			<TMPL_INCLUDE NAME="features/forgotpassword/myaccount_register_section.tpl">
		    <TMPL_ELSE>
			<TMPL_IF NAME=FP_DISABLED>
			    <TMPL_INCLUDE NAME="features/forgotpassword/myaccount_enable_section.tpl">
			<TMPL_ELSE>
			    <TMPL_INCLUDE NAME="features/forgotpassword/myaccount_cancel_section.tpl">
			</TMPL_IF>
		    </TMPL_IF>
		</TMPL_IF>
		
		</table>
		
		</td></tr>
		
		</table> 	
		</td>
		</tr>
	      </table>
		
	     <br><br>

<!-- end: myaccount_enable.tpl -->
