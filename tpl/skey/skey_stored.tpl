      <tr> <td align='center' colspan='2'><br>
      <table border="0" cellpadding="10" cellspacing="1" class="myaccountborder">
      <tr> <td align=center class="myaccountalert"><span class=unifont1><b>
      <!-- <TMPL_UNLESS UPDATE> Step 3 of 5 : </TMPL_UNLESS> -->Secure Login Image Stored Successfully<br></b></span>
	  <TMPL_IF EFSKID><div id="flc"></div>
	<script type="text/javascript" language="javascript">show_lsflash(<TMPL_IF EFSKID>'<TMPL_VAR NAME=EFSKID>'</TMPL_IF>)</script>
	  </TMPL_IF>
      </td> </tr> </table>
      </td></tr>
      


      <tr> <td align='center' colspan='2' width=760><br>
      <table border="0" cellpadding="10" cellspacing="1" class="myaccountborder">
      <tr> <td align=center class="myaccountalert"><span class=unifont1>
      <TMPL_VAR NAME="MESSAGE"></span>
      </td> </tr>
      <tr><td align="center" valign=top class="myaccountalert"><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEYPH&SKID=<TMPL_VAR NAME=SKID>" border="7" style="border-color:#<TMPL_VAR SITEKEY_COLOR>"  width="150" height="150"><br><br></td>
      </tr> </table>
      </td></tr>

      
      <tr>
      <td align="center">
      <br><br>
      <table>
	 <tr>
	   <TMPL_IF SKEY_UPDATED>
        <TMPL_IF NAME="MOBILE_ONLY_USER">
            <td class="unifont1" align=left width=100>
                <input name="BUTTON" class="rb_otp" type="button" value="Done" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp');">
            </td>
        <TMPL_ELSE>
		<td class="unifont1" align=left width=100>
	     <input name="BUTTON" class="rb_otp" type="button" value="Done" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MYACCOUNT/SHOW_PROFILE');disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp');">
		 </td>
        </TMPL_IF>
		 <td>
	     <input type=hidden name="SITEKEYFLOW" value=1>
	     <input name="BUTTON" class="rb_otp" type="button" value="Change Security Question" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp');">
		</td>
	    <TMPL_ELSE>
		<td>
	     <input type=hidden name="SITEKEYFLOW" value=1>
	     <input name="BUTTON" class="rb_otp_small" type="button" value="Next" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');">
		</td>
	   </TMPL_IF> 
	 </tr>
     </table>
     <br> <br>
     </td>
      </tr>
