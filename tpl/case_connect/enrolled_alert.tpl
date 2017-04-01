<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Accurint Alerts</title>
  <link href="<TMPL_VAR CSSPATH>/simple_date_picker.css" rel="stylesheet" type="text/css">
  <script src="<TMPL_VAR JSPATH>/simple_date_picker.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/pricing.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/report.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/validate.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/options_selection.js"></script>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/style1.css"
   rel="stylesheet" type="text/css"/>
  <link href="<TMPL_VAR CSSPATH>/<TMPL_VAR SKIN_TYPE>/skin.css"
   rel="stylesheet" type="text/css"/>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script type="text/javascript">//<![CDATA[
    document.onload=window.focus();
  //]]></script>
  <style type="text/css">
    body{
        font-family: Arial, Helvetica, sans-serif;
        background-color: #E6E7DE;
        font-size: 12px;
    }
    h1{
        font-size: 16px;
        font-weight: bolder;
        color: #003399;
    }
    ul{
        display: inline-block;
    }
    li{
        text-align: left;
        list-style: none;
    }
  </style>
</head>
<body>
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
    <br>
    <form id="CC_ENROLL" name="CC_ENROLL" action="<TMPL_VAR ACTION_REPORT>" method="post" onsubmit="validate();">
      <input type="hidden" name="DOL_DATE" value="<TMPL_VAR DOL_DATE>"/>
      <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR SKIN_TYPE>"/>
      <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR APPLICATION_TYPE>"/>
      <input type="hidden" name="SUBSCRIBER_ID" value="<TMPL_VAR SUBSCRIBER_ID>"/>
      <input type="hidden" name="RECID_REPORT" value="<TMPL_VAR RECID_REPORT>"/>
      <input type="hidden" name="UNIQUEID" value="<TMPL_VAR UNIQUEID>"/>
      <input type="hidden" name="FIRST_NAME" value="<TMPL_VAR FIRST_NAME>"/>
      <input type="hidden" name="LAST_NAME" value="<TMPL_VAR LAST_NAME>"/>
      <input type="hidden" name="MIDDLE_NAME" value="<TMPL_VAR MIDDLE_NAME>"/>
      <input type="hidden" name="SUFFIX" value="<TMPL_VAR SUFFIX>"/>
      <input type="hidden" name="DOB" value="<TMPL_VAR DOB>"/>
      <input type="hidden" name="AGE" value="<TMPL_VAR AGE>"/>
      <input type="hidden" name="ADDRESS" value="<TMPL_VAR ADDRESS>"/>
      <input type="hidden" name="CSZ" value="<TMPL_VAR CSZ>"/>
      <input type="hidden" name="PHONE" value="<TMPL_VAR PHONE>"/>
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
	<TMPL_VAR ALERT_OPTIONS>
    </td>
    <td align="right" class="smallfont1">&nbsp;</td>
  </tr>
</table>
<br />
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Name of Alert: </b></td>
	<td class="unifont1"><TMPL_VAR ALERT_NAME></td>
    </tr>
</table>
<table class="alert_new">
    <tr>
	<td class="unifont1 label_cell"><b>Reference Code: </b></td>
	<td class="unifont1"><TMPL_VAR REFERENCE_CODE></td>
    </tr>
</table>
<TMPL_IF "ALERT_EMAIL">
 <fieldset class="alert_new">
   <span class="unifont1bold"><legend>Email Notifications</legend></span>

<!-- delivery -->
<table class="alert_new" width="100%">
    <tr>
	<td class="unifont1 label_cell" valign="top" width="75"><b>Delivery:<font color="#ff0000">*</font></b></td>
	<td class="unifont1"></td>
	<td align="left">
	    <table border="0" cellpadding="0" cellspacing="0">
	    <tr>
		<td class="unifont1" colspan="2">
		    <TMPL_IF ALERT_EMAIL>Send Email alert</TMPL_IF>
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
		<TMPL_VAR ALERT_DELIVERY_EMAIL>
		</td>
	    </tr>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <TMPL_IF NOTE>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Add a Note:
		</td>
		<td class="unifont1">
		<TMPL_VAR NOTE>
		</td>
	    </tr>
	    </TMPL_IF>
	    <tr>
		<td class="unifont1" colspan="2">&nbsp;</td>
	    </tr>
	    <TMPL_IF SUBJ>
	    <tr>
		<td class="unifont1" valign="top" nowrap="nowrap">
		Subject Line:
		</td>
		<td class="unifont1">
		    <TMPL_VAR SUBJ>
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
<td class="deffld" align="right"><font color="#ff0000"></font></td>
<td class="smallfont1" align="left" width="100%"></td>
<td rowspan="2" nowrap="nowrap" width="98%">
    <input name="CLOSE" value="Close" onclick="window.close();" type="button">
</td>
</tr>
</table>
</form>
</body>
</html>
