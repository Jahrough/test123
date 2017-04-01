
      <tr> <td align='center' colspan='2'><br>
      <table border="0" cellpadding="10" cellspacing="1" class="myaccountborder">
      <tr> <td align=center class="myaccountalert"><span class=unifont1><b>
        <TMPL_UNLESS UPDATE> Step 2 of 5 : </TMPL_UNLESS> Enter your Image phrase<br></b></span>
      </td> </tr> </table>
      <br></td></tr>
      <tr>
        <td colspan="2" class="unifont1">
	  
	  <table width='100%'>
	  <tr>
	     <td width=50></td>
	     <td align="center" valign=top>
		<img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEY&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&CATG=<TMPL_VAR NAME=CATG>&IG=<TMPL_VAR NAME=SKEY_SEL>" border="0" width="247" height="221">
	     <td width=25></td>
	     <td valign=top>
	     <table ><tr>
	     <td valign=top>
		<table border="0" cellpadding="10" cellspacing="1" class="myaccountborder" >
		<tr> <td  class="myaccountalert" valign=top><span class="unifont1">
               Please enter your own image phrase that best describes
	       the secure login image you have selected<br></span>
		</td></tr></table>
	        </td></tr>	
	       <tr><td align=left><table>	
		<tr>
		    <td valign=bottom align=left class=myaccountalert>
		    <input type=text name="PASSPHRASE" size="30" maxlength=30 tabindex=1>
		</tr>
		</td></table>
		</td></tr>
		<tr><td height=20></td></tr>
		<tr><td align=left><table>
		 <tr>
		    <td class="unifont1" align=left width=100>
		      <input type=hidden name="SHOW_SK_SEL" value=1>
		      <input name="BUTTON" class="rb_otp_small" type="button" value="<< Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/SITEKEY');disable_buttons('BUTTON');" onMouseOut="flip_style(this,'rb_otp_small');">
		     </td><td>
		     <input name="BUTTON" class="rb_otp_small" type="button" value="Next" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/SAVE_SITEKEY');disable_buttons('BUTTON'); " onMouseOut="flip_style(this,'rb_otp_small');">
		    </td>
		 </tr>
		</table></td>
		</tr>
		</table>
	     </td>
	     <td width=50><script>document.forms[0].PASSPHRASE.focus();</script></td>
	  </tr>
	  <tr><td colspan=5 height=20></tr>
	</table>
	</td>
      </tr>

