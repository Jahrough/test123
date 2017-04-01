
      <tr><td height=15 colspan=2></td></tr>
      <tr>
       <td colspan=2>
	<table width='100%'>
	  <tr>
	     <td width=50></td>
	     <td align="center" valign=top><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEYPH&SKID=<TMPL_VAR NAME=EFSKID>" border="7" style="border-color:#<TMPL_VAR SITEKEY_COLOR>" width="150" height="150"><br> <br> </td>
	     <td width=25></td>
	     <td valign=top>
	     <table ><tr>
	     <td height=200 valign=top>
		<table border="0" cellpadding="10" cellspacing="1" class="myaccountborder" >
		<tr> <td  class="myaccountalert" valign=top><span class="unifont1">
		The following is your Secure Login Image. The Secure Login Image
		consists of both an image and your image phrase.<br><br>
		Your personalized Secure Login Image helps you know for sure that you are at the valid site. Every time you sign in to this site, you will see your Secure Login Image and your image phrase after you enter your Login ID.<br></span>
		</td></tr></table>
	        </td></tr>	
	       <tr><td align=center><table>	
		<tr>
		    <td valign=bottom align=center class=myaccountalert> <input name="BUTTON" tabindex="2" class="rb_otp" type="button" value="Change" onMouseDown="flip_style(this,'rbd_otp');" onClick="send_event('MANAGE/SHOW_UPDATE_SITEKEY');" onMouseOut="flip_style(this,'rb_otp');">
		</tr>
		</td></table>
		</td></tr>
		</table>
	     </td>
	     <td width=50></td>
	  </tr>
	</table>
       </td>
      </tr>
