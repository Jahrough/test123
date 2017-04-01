<!-- Begin popup/zip_codes.tpl -->
<html>
<head>
<title>Enter Zip Codes</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="ZIP_INFO" action="<TMPL_VAR NAME=ACTION>" method="post"> 
<div align="left" style="padding-left:10px;">
<br/>
<table cellpadding="0" cellspacing="0" border="0" width="95%">
	  <tr>
	     <td class="unifont1" nowrap>Enter up to 20 Zip(s) below: <br/>(Cancel to go back to search form)</td>
	  </tr>
	  <tr height="5"></tr>
</table>
<br/>

<table cellpadding="2" cellspacing="0" border="0" width="90%">
<TMPL_LOOP NAME=ZIPS_LOOP>
     <tr>
         <td class="unifont1" valign="middle">&nbsp; </td>
         <td class="unifont1" valign="middle"><b><TMPL_VAR NAME=LABEL></b>&nbsp; </td>
         <td class="nsinputs"><input type="text" name="<TMPL_VAR NAME=NAME>" tabindex="101" size="5" maxlength="5" value="<TMPL_VAR NAME=VALUE>"></td>
     </tr>
</TMPL_LOOP>
</table>

</div>
<br/>
<div align="center" style="padding-left:10px;padding-bottom:15px;">
<table cellpadding="0" cellspacing="0" border="0">
    <tr>
           <td class="medblack" width="33%" align="center">
                  <input type="button" name="button" value="Select Zips" onClick="set_zips('20');"/>
          </td>
           <td class="medblack" width="33%" align="center">
                  <input type="button" name="button" value="Clear" onClick="clear_zips();"/>
          </td>
           <td class="medblack" width="33%" align="center">
              <input type="button" name="button" value="Cancel" onClick="javascript:window.close();"/>
          </td>
    </tr>
</table>
</div>
</form>
</body>
</html>
<!-- end popup/zip_codes.tpl -->
