<!-- begin manage_account_sitekey.tpl -->
<TMPL_IF SA_DISABLED>
  <TMPL_INCLUDE NAME="sa_disabled_message.tpl">
<TMPL_ELSE>
<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>

    <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle"><br>Manage Secure Login Image</td>
      </tr>
      
      <TMPL_IF NAME="SHOW_SEC_Q">
	 <TMPL_INCLUDE  NAME="skey/skey_stored.tpl"> <!-- show "sitekey is stored" msg -->
      <TMPL_ELSE>
	  <TMPL_IF NAME="SITEKEY_SET">
	     <TMPL_INCLUDE NAME="skey/skey_already_set.tpl">  <!-- sitekey is set,this is your sitekey -->
	  <TMPL_ELSE>
	      <TMPL_IF NAME="SITEKEY_SELECTED">
		 <TMPL_INCLUDE NAME="skey/skey_selected.tpl"> <!-- Enter your passphrase -->
	      <TMPL_ELSE>
		 <TMPL_INCLUDE NAME="skey/show_select.tpl">  <!-- Select a sitekey from the range avail -->
	      </TMPL_IF>
	  </TMPL_IF>
      </TMPL_IF>
      

      
    </table>
    </td>
  </tr>
</table>
<table border="0" cellpadding="0" cellspacing="0" width="860"> <tr> <td width="12"><img height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner3.gif"></td>
    <td width="856" class="myaccountborder"><img height="12" width="856" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
    <td width="12"><img height="12" width="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/rndcorner4.gif"></td>
  </tr>
</table>

<span class="smallfont1">&nbsp;<br></span>


<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">
</TMPL_IF>

<!-- end manage_account_sitekey.tpl -->
