<!-- BEGIN v3/batch/new_confirm.tpl -->
<TMPL_INCLUDE NAME="batch_head.tpl">

<script type="text/javascript">
	var session_id = '<TMPL_VAR SESSION_ID>';
	var csrf_token = '<TMPL_VAR CSRF_TOKEN>';	
	var xml_view_event = '<TMPL_VAR XML_VIEW_EVENT>';
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<INPUT TYPE=HIDDEN NAME=EVENT>
<TMPL_IF IS_BATCH_ADMIN>
<div class="xmlLinkstopBarCon">
    <div class="xmlLinkstopBarConMiddle" style="margin-left:2px;">
        <div class="left">
            <ul id="xml-links">
                <TMPL_IF SHOW_BATCH_SERVICES>
                    <li><a class="mainmenu" href="javascript:show_post_popup('<TMPL_VAR MAJOR>/SERVICES','BatchServices',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Services</a></li>
                </TMPL_IF>
                <li><a href="javascript:open_xml('bpsjob',<TMPL_VAR CONFIRM_NUM>);">XML View</a></li>
                <TMPL_IF SHOW_BATCH_INFO_ALERT><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail</b></TMPL_IF>
            </ul>
        </div>
    </div>
</div>
</TMPL_IF>

<div align="center">

<table border="0" width="600">

  <tr>
    <td class="batchbanner" align="center"><br><b>Thank you for using Accurint InstantID Batch</b></td>
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
        <td class="unifont1" align="left" valign="top"><b><TMPL_VAR GLB> - 
		<TMPL_IF GLB_1>
Necessary to Effect, Administer<br>or Enforce a Transaction (Collections)
		<TMPL_ELSE>
		<TMPL_IF GLB_2>
Law Enforcement Investigations
		<TMPL_ELSE>
		<TMPL_IF GLB_3>
Law Firm and Attorneys - Beneficial<br>Interest/Fiduciary
		<TMPL_ELSE>
		<TMPL_IF GLB_4>
Insurance
		<TMPL_ELSE>
		<TMPL_IF GLB_5>
Fraud Detection and Prevention
		<TMPL_ELSE>
		<TMPL_IF GLB_6>
Required Institutional Risk<br>Control/Dispute Resolution
		<TMPL_ELSE>
None of the uses apply
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</TMPL_IF>
		</b></td>
      </tr>
      <tr>
        <td class="unifont1" align="left" valign="top" NOWRAP>DPPA Purpose:</td>
        <td class="unifont1" align="left" valign="top"><b><TMPL_VAR DPPA></b>
      </tr>
      <tr>
        <td align="center" valign="top" colspan="2">
        <table border="0" cellpadding="3" cellspacing="0" width="400">
          <tr>
            <td class="unifont1"><b><TMPL_VAR APPEND_OPTIONS></b></td>
          </tr>
        </table>
        </td>
      </tr>
	  <TMPL_UNLESS FTP>
      <TMPL_UNLESS HIDE_PRICES>
      <tr>
        <td class="unifont1" align="left" valign="top" colspan="2"><br>Maximum possible charge for the batch is:&nbsp;&nbsp;<b>$<TMPL_VAR MAX_CHARGE></b></td>
      </tr>
	  <TMPL_UNLESS IS_BUS_BATCH>
      		<tr>
        		<td valign="top" align="left" class="smallfont1" colspan="2"><b>Note:</b>&nbsp;&nbsp;Special Value offer not included in estimate.</td>
      		</tr>
	  </TMPL_UNLESS>
      </TMPL_UNLESS>
	  </TMPL_UNLESS>
    </table>
    </td>
  </tr>
</table>

<table border="0" width="100%">
  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="30" border="0" alt=""></td>
  </tr>
  <TMPL_IF IS_BUS_BATCH>
  <tr>
    <td valign="bottom" align="center">
        <a class="btn darkgrey-btn" href="javascript:window.close()">
            Close
        </a>
        &nbsp;&nbsp;&nbsp;
        <a class="btn red-btn" href="javascript:printit()">
            Print Order Confirmation
        </a>
        &nbsp;&nbsp;&nbsp;
        <a class="btn red-btn" class="btn darkgrey-btn" href="javascript:send_event('BATCH/BUS_START_BATCH');">
            Run Another Batch
        </a>
    </td>
  </tr>
  <TMPL_ELSE>
  <tr>
    <td valign="bottom" align="center">
        <a class="btn darkgrey-btn" href="javascript:window.close()">
            Close
        </a>
        &nbsp;&nbsp;&nbsp;
        <a class="btn red-btn" href="javascript:printit()">
            Print Order Confirmation
        </a>
        &nbsp;&nbsp;&nbsp;
        <a class="btn red-btn" href="javascript:send_event('BATCH/SERVICES');">
            Run Another Batch
        </a>
    </td>
  </tr>
  </TMPL_IF>
</table>

</div>

<TMPL_INCLUDE NAME="batch_footer.tpl">
<!-- END v3/batch/new_confirm.tpl -->
