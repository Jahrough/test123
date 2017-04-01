<!-- BEGIN editorder.tpl -->
<TMPL_INCLUDE NAME="header.tpl">

<INPUT TYPE=HIDDEN NAME=EVENT VALUE="WATCHDOG/SAVE_CHOOSE_EDIT">
<INPUT TYPE=HIDDEN NAME="WATCHDOG_JOBID" VALUE="<TMPL_VAR WATCHDOG_JOBID>">
<INPUT TYPE=HIDDEN NAME="CONFIRM" VALUE=1>

<div align="center">

<table border="0" width="600">

  <tr>
    <td width="600">
    <br>
    <table border="0" cellpadding="0" cellspacing="0" width="600">
      <tr>
        <td class="wizardcounter" width="100%" align="left">Watchdog <b><TMPL_VAR TITLE_PAGE></b></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td class="batchbanner" align="center"><br><b>Select Order</b></td>
  </tr>
  
  <tr>
    <td align="center" class="unifont2"><br>
	<table border=0 cellpadding=0 cellspacing=0>
	<tr>
	    <td valign="middle" align="left" class="unifont2">
	    <b>Enter / Select the order you wish to edit:</b>&nbsp;&nbsp;
	    </td>
	    <td valign="middle" align="left" class="unifont2">
	    <input type=text name="ORDER_NAME" value="<TMPL_VAR ORDER_NAME>" onFocus="blur()">&nbsp;&nbsp;
	    </td>
	    <td valign="top" align="center" rowspan="2">
	    <a class="unifont1" href="javascript:void(0)" onclick="var thiswin = general_win('<TMPL_VAR NAME=ACTION_BATCH>?EVENT=WATCHDOG/SHOW_JOBS&COMPANY_ID=<TMPL_VAR NAME=COMPANY_ID>&SESSION_ID=<TMPL_VAR NAME=SESSION_ID>&CSRF_TOKEN=<TMPL_VAR NAME=CSRF_TOKEN>&EDIT_TYPE=' + getSelectedRadioValue(document.forms[0].EDIT_TYPE),'WatchdogJobWindow',550,450,0,0,0,1);thiswin.focus();"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/vo_button.gif" height="29" border="0"></a> 
	    </td>
	</tr>
	</table>
    </td>
  </tr>
  
  
  <tr>
    <td align="left" class="unifont2">
	<br>
	<blockquote>
	<table border="0" cellspacing="0" cellpadding="0">
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="EDIT_WATCH_LIST" checked <TMPL_IF EDIT_WATCH_LIST> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Change Data Items Being Watched</b>&nbsp;
	  </tr>
<TMPL_IF IS_WATCHDOG_ADMIN>
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="EDIT_XML" <TMPL_IF EDIT_XML> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Edit XML</b>&nbsp;
	  </tr>
</TMPL_IF>
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="ADD_TO_LIST"<TMPL_IF ADD_TO_LIST> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Add Watch Records</b>&nbsp;
	  </tr>
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="SEND_IDS" <TMPL_IF SEND_IDS> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Send Me The Unique IDs In My Watch List</b>&nbsp;
	  </tr>
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="DELETE_FROM_LIST"<TMPL_IF DELETE_FROM_LIST> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Remove Watch Records</b>&nbsp;
	  </tr>
	  <tr>
	  <td align="left" class="unifont2">
		<input type=RADIO name="EDIT_TYPE" value="STOP_WATCH"<TMPL_IF STOP_WATCH> CHECKED</TMPL_IF>>&nbsp;&nbsp;<b>Stop Watchdog Process</b>&nbsp;
	  </td>
	  </tr>
	</table>
	</blockquote>
	</td>
  </tr>

  <tr>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" width="1" height="180" border="0"></td>
  </tr>

  <tr>
    <td valign="bottom" align="right" width="550"><a href="javascript:send_event('WATCHDOG/START')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WATCHDOG/SAVE_CHOOSE_EDIT')"><img src="<TMPL_VAR NAME=IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"></a></td>
  </tr>

</table>
</div>

<TMPL_IF ERROR_MESG>
    <script>alert('<TMPL_VAR ERROR_MESG>\n\n');</script>
</TMPL_IF>
    
<TMPL_INCLUDE NAME="footer.tpl">

<!-- END editorder.tpl -->
