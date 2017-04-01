<!-- begin batch/usermanage/get_online_files.tpl -->
<html>
<head>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_UNLESS ENABLE_V3>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_UNLESS>
<SCRIPT src="<TMPL_VAR NAME='JSPATH'>/shared.js"></SCRIPT>
<SCRIPT src="<TMPL_VAR NAME='JSPATH'>/common.js"></SCRIPT>
</head>

<body onLoad="setTimeout(function() { send_event('BATCHMANAGE/DOWNLOAD'); }, 3000);">

<!--
<div id="hd">
<h2><a trackid="hdr_top_logo"></a></h2>
</div>
-->

<div align="center">
<FORM NAME="form" action="<TMPL_VAR ACTION_BATCH>">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="COMPANY_ID" value="<TMPL_VAR COMPANY_ID>">
    <input type="hidden" name="JOB_ID" value="<TMPL_VAR JOB_ID>">

<br><br>

<table border="0" cellpadding="0" cellspacing="0" width="95%">
  <tr>
    <td>
    <table width="100%" cellspacing="5" cellpadding="3">
      <tr>
        <td colspan="2" class="unifont1bold" align="left">Filename</td>
	<td class="unifont1bold">Last modified</td>
	<td class="unifont1bold" align="right">Size (bytes)</td>
      </tr>
      <tr>
        <td colspan="4"><hr></td>
      </tr>
      
      <TMPL_IF FILES>
        <TMPL_LOOP FILES>
      <tr>
        <td width="27"><a href="javascript:send_event('BATCHMANAGE/DOWNLOAD');"><img src="<TMPL_VAR NAME=IMGPATH>/report_manager_details.gif"></a></td>
        <td class="unifont1"><a href="javascript:send_event('BATCHMANAGE/DOWNLOAD');"><TMPL_VAR BASENAME></a></td>
	<td class="unifont1"><TMPL_VAR MODIFIED></td>
	<td class="unifont1" align="right"><TMPL_VAR SIZE></td>
      </tr>
        </TMPL_LOOP>
      </TMPL_IF>
      
      <tr>
        <td colspan="4"><hr></td>
      </tr>
      
      <tr>
        <td colspan="4" class="unifont1"><b>NOTE:</b><br><br>File should download automatically in 3 seconds.&nbsp; If file fails to prompt you, please click on file name to download.</td>
      </tr>

    </table>
    </td>
  </tr>

  <tr>
    <td class="smallblack" valign="bottom" align="center"><br><input name="DOWNLOAD_BUTTON" type="BUTTON" value="*** Close AFTER Receiving File ***" onClick="self.close();"></td>
  </tr>

</table>

</FORM>
</body>
</html>
<!-- end batch/usermanage/get_online_files.tpl -->

