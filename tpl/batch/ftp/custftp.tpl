<!-- BEGIN custftp.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="BATCHFTP/SAVE_CUSTFTP">

<div align="center">

<table border="0" width="600">
  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="50%" align="left"><TMPL_VAR FTPBATCH_NAME> FTP Batch Wizard <b><TMPL_VAR TITLE_PAGE></b></td>
        <td class="wizardcounter" width="50%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button on any of the <b>Customize FTP Batching</b> text text text <b>Customize FTP</b>.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail&nbsp;</b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center" class="batchbanner"><br><b>Customize Batch FTP</b></td>
  </tr>

  <TMPL_IF ERROR_MESG>
  <tr>
    <td class="batchalert" align="center"><br><b>Please select purpose before proceeding.</b></td>
  </tr>
  </TMPL_IF>
  <TMPL_IF FREE_TRIAL_CREDITS>
  <tr>
    <td class="batchalert" align="center"><br><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></td>
  </tr>
  </TMPL_IF>

  <tr>
    <td class="unifont1">
	<BR>
<!-- BEGIN -->
	  <table width="100%">	  
		<tr><td>&nbsp;</td></tr>
	    <tr>
		  <td class="unifont1" colspan="2">
		  <table>
		  <tr>
		  <td class="unifont1" width="50%">Create "Trigger File" after creating output file.</td>
		  <td><input type="checkbox" name="OUTPUT_TRIGGER" value="1"<TMPL_IF OUTPUT_TRIGGER> CHECKED</TMPL_IF>></td>
		  </tr>
		  <tr>
		  <td class="unifont1" width="50%">Wait for "Trigger File" before retrieving input file.</td>
		  <td><input type="checkbox" name="INPUT_TRIGGER" value="1"<TMPL_IF INPUT_TRIGGER> CHECKED</TMPL_IF>></td>
		  </tr>
		  <tr>
		  <td class="unifont1" colspan="2"><BR>Enter list of Email Addresses, separated by spaces, to whom the job statistics will be sent.</td>
		  </tr>
		  <tr>
		  <td colspan="2"><input type="text" size="90" name="SENDSTATISTICS" value="<TMPL_VAR SENDSTATISTICS>"></td>
		  </tr>
		  </table>
		  </td>
		</tr>
	  </table>
<!-- END -->
    </td>
  </tr>

  <tr>
    <td class="unifont1"><BR><b>Use Customers FTP Site to:</b>
	  <table border=1" width="575" cellspacing="0" cellpadding="0">
	  	<tr>
	    <td class="unifont1">
			<input type="checkbox" name="PUSH_FTP" value="1"<TMPL_IF PUSH_FTP> CHECKED</TMPL_IF>>&nbsp;&nbsp; Retrieve Input File<dd>
			<table>
			<tr>
			  <td class="unifont1">Hostname:</td>
			  <td><input name="PUSH_HOSTNAME" type="text" size="20" value="<TMPL_VAR PUSH_HOSTNAME>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Username:</td>
			  <td><input name="PUSH_USERNAME" type="text" size="20" value="<TMPL_VAR PUSH_USERNAME>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Password:</td>
			  <td><input name="PUSH_PASSWORD" type="text" size="20" value="<TMPL_VAR PUSH_PASSWORD>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Path:</td>
			  <td><input name="PUSH_PATH" type="text" size="20" value="<TMPL_VAR PUSH_PATH>"></td>
			</tr>
			</table>

		</td>
	    <td class="unifont1">
			<input type="checkbox" name="PULL_FTP" value="1"<TMPL_IF PULL_FTP> CHECKED</TMPL_IF>>&nbsp;&nbsp; Send Output File<dd>
			<table>
			<tr>
			  <td class="unifont1">Hostname:</td>
			  <td><input name="PULL_HOSTNAME" type="text" size="20" value="<TMPL_VAR PULL_HOSTNAME>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Username:</td>
			  <td><input name="PULL_USERNAME" type="text" size="20" value="<TMPL_VAR PULL_USERNAME>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Password:</td>
			  <td><input name="PULL_PASSWORD" type="text" size="20" value="<TMPL_VAR PULL_PASSWORD>"></td>
			</tr>
			<tr>
			  <td class="unifont1">Path:</td>
			  <td><input name="PULL_PATH" type="text" size="20" value="<TMPL_VAR PULL_PATH>"></td>
			</tr>
			</table>

		</td>
		</tr>
	  </table>
	</td>
  </tr>
  
  <tr><td>&nbsp;</td></tr>

  <tr>
    <td class="unifont1"><b>PGP ENCRYPTION:</b>
	  <table border=1" width="575" cellspacing="0" cellpadding="0">
	  	<tr>
	    <td class="unifont1">
			&nbsp;&nbsp;PGP:<dd>
			<table>
			<tr>
			  <td class="unifont1">Input File:</td>
			  <td class="unifont1">&nbsp;&nbsp;YES&nbsp;<input name="PGP_DECRYPT" type="radio" value="1"<TMPL_IF PGP_DECRYPT> CHECKED</TMPL_IF>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;<input name="PGP_DECRYPT" type="radio" value="0" <TMPL_UNLESS PGP_DECRYPT>CHECKED</TMPL_UNLESS>></td>
			</tr>
			<tr>
			  <td class="unifont1">Output File:</td>
			  <td class="unifont1">&nbsp;&nbsp;YES&nbsp;<input name="PGP_ENCRYPT" type="radio" value="1"<TMPL_IF PGP_ENCRYPT> CHECKED</TMPL_IF>>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NO&nbsp;<input name="PGP_ENCRYPT" type="radio" value="0" <TMPL_UNLESS PGP_ENCRYPT>CHECKED</TMPL_UNLESS>></td>
			</tr>
			<tr>
			  <td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;Use Binary Encryption:</td>
			  <td class="unifont1">&nbsp;&nbsp;<input name="PGP_ENCRYPT_BINARY" type="checkbox" value="1"<TMPL_IF PGP_ENCRYPT_BINARY> CHECKED</TMPL_IF>></td>
			</tr>
			<tr>
			  <td class="unifont1">PGP Key Name (recipient):</td>
			  <td><input name="PGP_RECIPIENT" type="text" size="45" value="<TMPL_VAR PGP_RECIPIENT>"></td>
			</tr>
			<tr>
			  <td class="unifont1" valign="top">File Containing PGP Key:</td>
			  <td class="smallfont1"><input name="PGP_FILE" type="file" size="45"><TMPL_IF PGP_FILE><BR>File Name: <TMPL_VAR PGP_FILE> <BR>has already been uploaded.</TMPL_IF></td>
			</tr>
			</table>

		</td>
		</tr>
	  </table>
	</td>
  </tr>

  <tr><td>&nbsp;</td></tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('BATCHFTP/<TMPL_IF EDIT_FTP>DEFINE_FILE<TMPL_ELSE>CHOOSE_FTP_JOB</TMPL_IF>')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('BATCHFTP/SAVE_CUSTFTP')" onClick=""><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>
<TMPL_INCLUDE NAME="../batch_footer.tpl">
<!-- END custftp.tpl -->
