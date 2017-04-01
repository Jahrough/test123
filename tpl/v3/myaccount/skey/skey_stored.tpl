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
      <tr><td align="center" valign=top class="myaccountalert"><img src="<TMPL_VAR NAME=ACTION>?EVENT=LOGIN/SHOW_SKEYPH&SKID=<TMPL_VAR NAME=SKID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>" border="7" style="border-color:#<TMPL_VAR SITEKEY_COLOR>"  width="150" height="150"><br><br></td>
      </tr> </table>
      </td></tr>

      
      <tr>
      <td align="center">
      <br><br>
      <table>
	 <tr>
	   <TMPL_IF SKEY_UPDATED>
		<td class="unifont1" align=left width=100>
	     <input name="BUTTON" class="btn grey-btn" type="button" value="Done" onClick="send_event('MYACCOUNT/SHOW_PROFILE');">
		 </td><td>
	     <input type=hidden name="SITEKEYFLOW" value=1>
	     <input name="BUTTON" class="btn darkgrey-btn" type="button" value="Change Security Question" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');">
		</td>
	    <TMPL_ELSE>
		<td>
	     <input type=hidden name="SITEKEYFLOW" value=1>
	     <input name="BUTTON" class="btn red-btn" type="button" value="Next" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q');">
		</td>
	   </TMPL_IF> 
	 </tr>
     </table>
     <br> <br>
     </td>
      </tr>
