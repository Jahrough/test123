<!-- BEGIN batch/new_confirm.tpl -->
<TMPL_INCLUDE NAME="_new_header.tpl">

<script type="text/javascript">
    var session_id = '<TMPL_VAR SESSION_ID>';
    var csrf_token = '<TMPL_VAR CSRF_TOKEN>';
    var xml_view_event = '<TMPL_VAR XML_VIEW_EVENT>';
</script>

<input type="hidden" name="EVENT">

<div align="center">
                                                                                                                                        
<table border="0" width="600">
	<tr>
		<td width="600">
			<br>
			<table border="0" cellpadding="0" cellspacing="0" width="600">
                <TMPL_UNLESS SHOW_BATCH_UPDATE>
            	<tr>
					<td class="wizardcounter" width="100%" align="left"><TMPL_INCLUDE NAME="_new_navigation.tpl"></b></td>
            	</tr>
                </TMPL_UNLESS>
    <TMPL_IF IS_BATCH_ADMIN>
	            <tr>
					<td class="wizardcounter" width="100%" align="left">:. <a class="mainmenu" href="javascript:open_xml('bpsjob',<TMPL_VAR CONFIRM_NUM>);">XML View</a>
					</td>
				</tr>
    </TMPL_IF>
	        </table>
		</td>
	</tr>
</table>

<table border="0" width="600">
	<tr>
		<td class="batchbanner" align="center"><br><b>Thank you for using Accurint</b></td>
	</tr>
	<tr>
		<td class="largefont1" align="center"><br><b>Your batch job confirmation number is:&nbsp;&nbsp;<TMPL_VAR CONFIRM_NUM></b></td>
	</tr>

  <TMPL_UNLESS FTP>
	<tr>
		<td class="unifont2" align="center"><br>Results will be e-mailed to: <b><TMPL_VAR BATCH_EMAIL_TO></b><br><br></td>
	</tr>
  </TMPL_UNLESS>
</table>

<table border="1" cellpadding="0" cellspacing="0" width="500">
	<tr>
		<td>
		<table width="500" border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>Job Name:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR BATCH_NAME></b></td>
			</tr>
	  <TMPL_UNLESS FTP>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>File to Process:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR FILE_NAME><br>&nbsp;&nbsp;&nbsp;(<TMPL_VAR FILE_TYPE>)</b></td>
			</tr>
	  </TMPL_UNLESS>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>Output Format:</td>
				<td class="unifont1" align="left" valign="top"><b>
			<TMPL_IF OUTPUT_TYPE_1>
				Comma Delimited 
			<TMPL_ELSE>
			<TMPL_IF OUTPUT_TYPE_2>
				Microsoft Word 
			<TMPL_ELSE>
			<TMPL_IF OUTPUT_TYPE_3>
				HTML 
			<TMPL_ELSE>
			<TMPL_IF OUTPUT_TYPE_4>
				Adobe Acrobat (pdf) 
			<TMPL_ELSE>
				Comma Delimited Output File
			</TMPL_IF>
			</TMPL_IF>
			</TMPL_IF>
			</TMPL_IF>
				</b></td>
			</tr>
  <TMPL_UNLESS FTP>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>Approx. # of Records in File:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR NUM_RECS></b></td>
			</tr>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>Results will be sent to:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR BATCH_EMAIL_TO></b></td>
			</tr>
	  </TMPL_UNLESS>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>GLB Purpose:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR GLB></b></td>
			</tr>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>DPPA Purpose:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR DPPA></b></td>
			</tr>
			<tr>
				<td class="unifont1" align="left" valign="top" NOWRAP>DMF Purpose:</td>
				<td class="unifont1" align="left" valign="top"><b><TMPL_VAR DMF></b></td>
			</tr>
			<tr>
				<td class="unifont1" align="left" valign="top" colspan="2">Append Options Selected:</td>
			</tr>
			<tr>
				<td align="center" valign="top" colspan="2">
					<table border="0" cellpadding="3" cellspacing="0" width="400">
      <TMPL_IF APPEND_TITLE_STRING>
						<tr>
							<td class="unifont1"><b><TMPL_VAR APPEND_TITLE_STRING></b></td>
						</tr>
      </TMPL_IF>
      <TMPL_IF APPEND_STRING>
						<tr>
							<td class="unifont1"><b><TMPL_VAR APPEND_STRING></b></td>
						</tr>
      </TMPL_IF>
					</table>
        		</td>
      		</tr>
      <TMPL_UNLESS HIDE_PRICES>
	  <TMPL_UNLESS FTP>
			<tr>
				<td class="unifont1" align="left" valign="top" colspan="2"><br>Maximum possible charge for the batch is:&nbsp;&nbsp;<b>$<TMPL_VAR MAX_CHARGE></b></td>
			</tr>
	  <TMPL_UNLESS IS_BUS_BATCH>
      		<tr>
        		<td valign="top" class="smallfont1" colspan="2"><b>Note:</b>&nbsp;&nbsp;Special Value offer not included in estimate.</td>
      		</tr>
	  </TMPL_UNLESS>
	  </TMPL_UNLESS>
     </TMPL_UNLESS>
		</table>
	</td>
</tr>
</table>

<TMPL_IF IS_FOO>
<table border="0" width="600">
    <tr>
        <td class="unifont1" align="left" valign="top"><br><b>NOTE</b>: This XML is read-only and used for verification purposes only
            <TEXTAREA style="background-color:yellow" ROWS="20" COLS="80"><TMPL_VAR XML></TEXTAREA>
        </td>
    </tr>
</table>
</TMPL_IF>


<table border="0" width="600">
	<tr>
		<td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0"></td>
	</tr>
	<tr>
		<td valign="bottom" align="center"><a href="javascript:window.close()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/close.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:printit()"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/print.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('<TMPL_UNLESS SHOW_BATCH_UPDATE><TMPL_VAR NEXT_EVENT><TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>');"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/run_another_batch.gif" width="87" height="29" border="0"></a></td>
	</tr>
</table>

</div>

<TMPL_INCLUDE NAME="_new_footer.tpl">
<!-- END batch/confirm.tpl -->
