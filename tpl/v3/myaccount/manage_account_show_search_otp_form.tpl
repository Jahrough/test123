<!-- begin manage_account_show_search_otp_form.tpl -->
<script>
 document.forms[0].EVENT.value = 'OTP/SEARCH_OTP';
 setup_otp_keypress_handler();
</script>

<INPUT type="hidden" name="OTP_LOGINID">
<INPUT type="hidden" name="OTP_SEARCH_FLAG">
<INPUT type=hidden NAME="MANAGE_USER_OTP">

<div class="myaccount-section-title">Search Assigned Security Tokens</div>

<table border="0" cellpadding="0" cellspacing="0" class="w100pc">
  <tr>
    <td align="center" valign="top" class="pd15">

<fieldset>

    <table border="0" cellpadding="0" cellspacing="0">
      <tr height="12">
        <td height="12" class="unifont1">&nbsp;</td>
      </tr>
    </table>

        <table border="0" cellpadding="4" cellspacing="0" class="myaccountbody">

                 <TMPL_IF NAME="MESSAGE">
		    <tr>
                       <td align="center" class="myaccounttitle" colspan="4">
			 <span class="myaccountalert"><TMPL_VAR NAME="MESSAGE">&nbsp;</span>
		      </td>
                    </tr>
                 </TMPL_IF>

		  <tr>
			<td width="50" class="unifont1">&nbsp;</td>
		    	<td width="350" class="unifont1">Please enter full or partial Token ID to search </td>
		    	<td width="100"> <input name="SEARCH_TOKENID" maxlength="12" value="<TMPL_IF NAME="SEARCH_TOKENID"><TMPL_VAR NAME="SEARCH_TOKENID"></TMPL_IF>" onBlur="this.value=this.value.toUpperCase()"></input></td>
		    	<td>
	                <input name="BUTTON" class="btn red-btn" type="button" value="Search" onClick="validate_otp_search();">
             	</td>
		 </tr>
		  <tr>
			<td width="50" class="unifont1"></td>
		    	<td width="350" class="unifont1"></td>
		    	<td width="100" class="unifont7pt">[Ex: DP03XXXXXXXX]</td>
		    	<td>&nbsp;</td>
		 </tr>
		  <tr>
		        <td colspan="4" align="center" class="unifont1"> OR </td>
		 </tr>
		  <tr>
			<td width="50" class="unifont1">&nbsp;</td>
            <td width="350" class="unifont1">Select assigned User to view Security Token information:</td>
            <td> 
                <SELECT NAME="OTP_USER_LOGINID" onChange="get_otp();">
                    <OPTION VALUE="">Select User</OPTION>
                    <TMPL_LOOP NAME=OTP_USERS>
                        <OPTION VALUE="<TMPL_VAR NAME=LOGINID>"><TMPL_VAR NAME=LOGINID> (<TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME>)</OPTION>
                    </TMPL_LOOP>
                </SELECT> 
			</td>
	    	<td>&nbsp;</td>

		 </tr>
		 <TMPL_IF NAME="USER_LOOP">
		 <tr>
		       <td colspan="4" align="center" valign="top"><br><br></td>
		</tr>

		 <tr>
			<td colspan="4" align="center" valign="top">
			   <table border="1" cellpadding="3" cellspacing="2" width="600">

                           <tr bgcolor="#CFCFCF">
			     <TMPL_IF NAME="SEARCH_TOKENID">
                             <td colspan="4" class="myaccountlabel" align=center NOWRAP><TMPL_VAR NAME="NUM_MATCHES"> match(es) found for token ID '<TMPL_VAR NAME="SEARCH_TOKENID">'</td>
			     <TMPL_ELSE>
                             <td colspan="4" class="myaccountlabel" align=center NOWRAP><TMPL_VAR NAME="NUM_MATCHES"> match(es) found for LoginID '<TMPL_VAR NAME="SEARCH_LOGINID">'</td>
			     </TMPL_IF>
                           </tr>

                           <tr bgcolor="#CFCFCF">
                             <td colspan="4" class="myaccountlabel" align=center NOWRAP>Click on the Login ID to manage the Secure Token for the user.</td>
                           </tr>

                           <tr bgcolor="#CFCFCF">
                             <td class="smallfont1" align=center NOWRAP><b>Login ID</b></td>
		             <td class="smallfont1" align=center NOWRAP><b>First Name</b></td>
		             <td class="smallfont1" align=center NOWRAP><b>Last Name</b></td>
            		     <td class="smallfont1" align=center NOWRAP><b>Token ID</b></TD>
                           </tr>


			   <TMPL_LOOP NAME="USER_LOOP">
				<tr bgcolor="#FFFFFF">
				<td class="unifont1"><a href="javascript:manage_user_token('OTP/MANAGE_OTP_USER','<TMPL_VAR NAME=LOGINID>')"><TMPL_VAR NAME="LOGINID"></a></td>
				<td class="unifont1"><TMPL_VAR NAME="FIRSTNAME"></td>
				<td class="unifont1"><TMPL_VAR NAME="LASTNAME"></td>
				<td class="unifont1"><TMPL_VAR NAME="DETAIL1"></td>
				</tr>
			   </TMPL_LOOP>
		           </table>
			</td>
		 </tr>
		 </TMPL_IF>

		  <tr>
			 <td colspan="4" align="center">
	 	         <input name="BUTTON" class="btn grey-btn" type="button" value="<< Back" onClick="send_event('OTP/MANAGE_OTP');" >
			</td>
		 </tr>

		 <tr>
                    <td align="center" class="myaccounttitle" colspan="4">
			 <br><br><br><br><br><br><br><br><br><br>
		    </td>
                 </tr>
        </table>
      </td>
    </tr>
    </table>

</fieldset>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_otp_main.tpl -->
