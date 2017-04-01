<!-- begin manage_account_show_search_otp_form.tpl -->
<script>
 document.forms[0].EVENT.value = 'OTP/SEARCH_OTP';
 setup_otp_keypress_handler();
</script>

<INPUT type="hidden" name="OTP_LOGINID">
<INPUT type="hidden" name="OTP_SEARCH_FLAG">
<INPUT type=hidden NAME="MANAGE_USER_OTP">

<table border=0 cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">

    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
	
    <table border=0 cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Search Assigned Security Tokens </td>
      </tr>

      <tr>
        <td align="center" class="myaccounttitle" width="856" colspan="2"><br></TD>		
      </tr>

    </table>

        <table border="0" cellpadding="4" cellspacing="0" width="856" class="myaccountbody">

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
			 <!--<a href="#" onClick="validate_otp_search();" ><img border="0" src="<TMPL_VAR NAME=IMGPATH>/otp_search.gif" alt="Search"></a> -->
	                <input name="BUTTON" class="rb_otp_small" type="button" value="Search" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="validate_otp_search(); disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');">
             	        </td>

		 </tr>
		  <tr>
			<td width="50" class="unifont1"></td>
		    	<td width="350" class="unifont1"></td>
		    	<td width="100" class="unifont7pt">[Ex: DP03XXXXXXXX]</td>
		    	<td></td>

		 </tr>
		  <tr>
		        <td colspan="4" align="center" class="unifont1"> OR </td>
		 </tr>
		  <tr>
			<td width="50" class="unifont1">&nbsp;</td>
		    	<td width="350" class="unifont1">Select assigned User to view Security Token information:</td>
		    	<td colspan="2"> 
			    <SELECT NAME="OTP_USER_LOGINID" onChange="get_otp();">
				<OPTION VALUE="">Select User</OPTION>
				<TMPL_LOOP NAME=OTP_USERS>
				<OPTION VALUE="<TMPL_VAR NAME=LOGINID>"><TMPL_VAR NAME=LOGINID> (<TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME>)</OPTION>
			        </TMPL_LOOP>
                            </SELECT> 
			</td>
		    	<td>
             	        </td>

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
	 	         <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('OTP/MANAGE_OTP');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
			 <!--<a href="javascript:send_event('OTP/MANAGE_OTP');"><img border="0" src="<TMPL_VAR NAME=IMGPATH>/otp_back.gif" alt="Back"></a>-->
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
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- manage_account_show_otp_main.tpl -->
