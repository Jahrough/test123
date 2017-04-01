<!-- begin:  $RCSFile: $ -->
    <TMPL_INCLUDE NAME="alerts_top.tpl">
    <br>

<table class="alert_new">
  <tr>
    <td class="largefont1bold" colspan="15" align="center">
	Alert Saved
    </td>
  </tr>
  <tr>
    <td class="unifont1" colspan="15">
    Thank you for setting up a new alert. You have selected to be notified when any of the following sections change:
    </td>
  </tr>
  <tr>
    <td class="smallfont1 alert_confirmation">
	<TMPL_VAR NAME=ALERT_OPTIONS>
    </td>
    <td align="right" class="smallfont1">&nbsp;</td>
  </tr>
</table>
<br />
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Name of Alert: </b></td>
	<td class="unifont1"><TMPL_VAR NAME=ALERT_NAME></td>
    </tr>
</table>
<TMPL_IF NAME="ALERT_EXPIRATION_DATE">
<table class="alert_new">
<tr>
<td class="unifont1 label_cell" nowrap="nowrap" valign="top" width="100"><b>Alert End Date:</b>&nbsp;&nbsp;</td>
<td class="unifont1" valign="top"><TMPL_VAR NAME="ALERT_EXPIRATION_DATE"></td>
</tr>
</table>
<TMPL_ELSE>
<table class="alert_new">
<tr>
<td class="unifont1 label_cell" nowrap="nowrap" valign="top" width="100"><b>Duration of Alert:</b>&nbsp;&nbsp;</td>
<td class="unifont1" valign="top">
    <TMPL_IF NAME="ALERT_LENGTH_1">Perpetual</TMPL_IF>
    <TMPL_IF NAME="ALERT_LENGTH_30">30 Days</TMPL_IF>
    <TMPL_IF NAME="ALERT_LENGTH_60">60 Days</TMPL_IF>
    <TMPL_IF NAME="ALERT_LENGTH_90">90 Days</TMPL_IF>
</td>
</tr>
</table>
</TMPL_IF>
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Reference Code: </b></td>
	<td class="unifont1"><TMPL_VAR NAME=REFERENCE_CODE></td>
    </tr>
</table>
<TMPL_IF NAME="ALERT_EMAIL">
 <fieldset class="alert_new">
   <span class="unifont1bold"><legend>Email Notifications</legend></span>

<!-- delivery -->
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell" valign="top" width="75"><b>Delivery:<font color="#ff0000">*</font></b></td>
	<td class="unifont1"></td>
	<td align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	    <tr>
		<td class="unifont1" colspan="2">
		    <TMPL_IF NAME="ALERT_EMAIL">Send Email alert</TMPL_IF>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">
		    <TMPL_IF NAME="ALERT_EMAIL_ZERO_RESULTS">Alert me if there are no new results</TMPL_IF>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Email To:
		</td>
		<td class="unifont1">
		<TMPL_VAR NAME=ALERT_DELIVERY_EMAIL>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <TMPL_IF NAME="ALERT_NOTE">
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Add a Note:
		</td>
		<td class="unifont1">
		<TMPL_VAR NAME=ALERT_NOTE>
		</td>
	    </tr>
	    </TMPL_IF>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <TMPL_IF NAME="ALERT_SUBJECT_LINE">
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Subject Line:
		</td>
		<td class="unifont1">
		    <TMPL_VAR NAME=ALERT_SUBJECT_LINE>
		</td>
	    </tr>
	    </TMPL_IF>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    </table>
	</td>
    </tr>
</table>
<!-- end delivery -->
</fieldset>
</TMPL_IF>

<table class="alert_new">
<tr>
<td class="deffld" align="right"><font color="#ff0000">*</font></td>

<td class="smallfont1" align="left" width="100%">Alerts are run weekly</td>
<td rowspan="2" align="right" nowrap="nowrap" width="98%">
	<input name="VIEW_MGR" value="View My Alerts" onclick="window.opener.show_post_popup('ALERT/SHOW_ALERTS_MGR','MyAccountWin','','',1,1,1,1,1,0);window.close();" type="button" >
	<input name="CLOSE" value="Close" onclick="window.close();" type="button">
</td>
</tr>
</table>





    <TMPL_INCLUDE NAME="alerts_bottom.tpl">
<!-- end:  $RCSFile: $ -->
