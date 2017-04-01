<!-- begin record_utilities.tpl -->
<html>
<head>
<title>Records Utilities!</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_IF NAME="FCRA_MODE">2<TMPL_ELSE><TMPL_VAR NAME=USER_THEME></TMPL_IF>.css" rel="stylesheet" type="text/css">
<TMPL_IF NAME='COMMON_RECORD_UTILS_JS'><script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='COMMON_RECORD_UTILS_JS'>.js"></script></TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/<TMPL_VAR NAME='SEARCH_NAME'>.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/record_utilities/common.js"></script>

<style type="text/css">
.clipstyle {
	background:#F4F0DE none repeat scroll 0 0;
	border:1px solid #336699;
	height:250px;
	width:500px;
}
</style>
<script>
var water_down_non_fcra = <TMPL_IF NAME=WATER_DOWN_NON_FCRA>true<TMPL_ELSE>false</TMPL_IF>;
var fcra_request = <TMPL_IF NAME=FCRA_REQUEST>true<TMPL_ELSE>false</TMPL_IF>;
</script>


</head>

<TMPL_IF NAME=CUSTOM_DISPLAY_RECORD>
<body onLoad="window.focus();<TMPL_VAR NAME=CUSTOM_DISPLAY_RECORD>();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
<TMPL_ELSE>
<body onLoad="window.focus();display_record();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
</TMPL_IF>


<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis</a></h2>
</div>


<!--<TMPL_INCLUDE NAME="ln_report_header.tpl">-->

<form name="CLIP">
<INPUT TYPE="HIDDEN" NAME="REC_TXT" VALUE="">
<table width="97%" border="0" align="center" cellpadding="5" cellspacing="0">
      <tr>
        <td align="left" id="searchResults"><h2>Record Utilities</h2></td>
      </tr>
</table>

<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <script>display_text_v2();</script>
  </tr>
</table>

<table width="95%" border="0" align="center" cellpadding="5" cellspacing="0">
<tr>
 <td valign="top" >
         <p class="medblack">You can also use the &quot;<strong>Quick Links</strong>&quot; below to Print or Email record information directly.  <strong><br />
          Note:</strong> The direct Email function is limited to approximately 2000 characters due to browser limitations.</p>
          <p class="medblack">&nbsp;</p>
          <table width="100%" border="0" cellpadding="0" cellspacing="0" class="medblack">
            <tr>
              <td width="15%"><strong>Quick Links:</strong></td>
              <td width="12%"><a href="javascript:print_rec();"><img src="<TMPL_VAR NAME=IMGPATH>/icon_print_new.gif" border="0" alt="Print This Record" title="Print This Record"></a>&nbsp;<a href="javascript:print_rec();" title="Print This Record" alt="Print This Record" lass="ctclinks">Print</a></td>
              <td width="65%"><a href="javascript:mail_rec();"><img src="<TMPL_VAR NAME=IMGPATH>/icon_email.gif" border="0" alt="Email This Record" title="Email This Record"></a>&nbsp;<a href="javascript:mail_rec();" title="Email This Record" alt="Email This Record">Email</a></td>
            </tr>
          </table>
 </td>
</tr>
</table>

<br>
<table width="75%" border="0" align="center" cellpadding="5" cellspacing="0">
  <tr>
    <td align="left">
      <script>write_textarea_v2();</script>
    </td>
  </tr>
</table>
</form>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end record_utilities.tpl -->
