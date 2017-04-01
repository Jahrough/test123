  <!-- BEGIN manage_account_disable_etc.tpl -->
  <fieldset>
    <div align="left" class="unifont1bold"><legend>Other Settings</legend></div>
      <table border="0" cellpadding="0" cellspacing="0" width="95%">
	  
	  <TR>
	    <td width="200" nowrap class="unifont1" align="left">Allow User Password Changes:</TD>
	    <td width="220" align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	      <tr>
		<td><INPUT TYPE=RADIO NAME="DISABLE_USER_PASSWORD_CHANGES_2" VALUE='0' <TMPL_UNLESS NAME=DISABLE_USER_PASSWORD_CHANGES_2>CHECKED</TMPL_UNLESS>></td>
		<td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
		<td><INPUT TYPE=RADIO NAME="DISABLE_USER_PASSWORD_CHANGES_2" VALUE='1' <TMPL_IF NAME=DISABLE_USER_PASSWORD_CHANGES_2>CHECKED</TMPL_IF>></td>
		<td class="unifont1">No</td>
	      </tr>
	    </table>
	    </td>
	  </TR>
	
	</table>
  </fieldset>
  <!-- END manage_account_disable_etc.tpl -->
