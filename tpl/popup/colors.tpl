<!-- Begin popup/colors.tpl -->
<html>
<head>
<title>Choose Colors</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
</TMPL_IF>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="VEHICLE_INFO" action="<TMPL_VAR NAME=ACTION>" method="post"> 
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
      <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
      <INPUT type=hidden NAME="FIELD_ID" VALUE="<TMPL_VAR NAME=FIELD_ID>">

<div align="left" style="padding-left:10px;">
<table cellpadding="0" cellspacing="0" border="0">

	  <TMPL_IF NAME="ERROR_MSG">
	  <tr>
	    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
	  </tr>
	  </TMPL_IF>

</table>

<br/>

<table cellpadding="0" cellspacing="0" border="0">
	  <tr>
	     <td class="unifont1" nowrap>Choose the Color(s) from the list below: <br/>(Cancel for choosing All Colors)<br><br></td>
	  </tr>
	  <tr height="5"></tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="BGE" id="BGE" value="BGE"> &nbsp;<label for="BGE">Beige</label></td>
	  </tr>
	       
	  <tr>
	       <td class="unifont1"><input type="checkbox" name="AME" id="AME" value="AME"> &nbsp;<label for="AME">Amethyst</label></td>
	  </tr>
	       
	  <tr>
	       <td class="unifont1"><input type="checkbox" name="BLK" id="BLK" value="BLK"> &nbsp;<label for="BLK">Black</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="BLU" id="BLU" value="BLU"> &nbsp;<label for="BLU">Blue</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="BRO" id="BRO" value="BRO"> &nbsp;<label for="BRO">Brown</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="BRZ" id="BRZ" value="BRZ"> &nbsp;<label for="BRZ">Bronze</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="CAM" id="CAM" value="CAM"> &nbsp;<label for="CAM">Camouflage</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="GRN" id="GRN" value="GRN"> &nbsp;<label for="GRN">Green</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="GLD" id="GLD" value="GLD"> &nbsp;<label for="GLD">Gold</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="DGR" id="DGR" value="DGR"> &nbsp;<label for="DGR">Dark Green</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="DBL" id="DBL" value="DBL"> &nbsp;<label for="DBL">Dark Blue</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="CRM" id="CRM" value="CRM"> &nbsp;<label for="CRM">Cream / Ivory</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="CPR" id="CPR" value="CPR"> &nbsp;<label for="CPR">Copper</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="COM" id="COM" value="COM"> &nbsp;<label for="COM">Chrome / Stainless</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="MVE" id="MVE" value="MVE"> &nbsp;<label for="MVE">Mauve</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="MUL" id="MUL" value="MUL"> &nbsp;<label for="MUL">Multicolored</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="MAR" id="MAR" value="MAR"> &nbsp;<label for="MAR">Burgundy / Maroon</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="LGR" id="LGR" value="LGR"> &nbsp;<label for="LGR">Light Green</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="LBL" id="LBL" value="LBL"> &nbsp;<label for="LBL">Light Blue</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="LAV" id="LAV" value="LAV"> &nbsp;<label for="LAV">Lavender</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="GRY" id="GRY" value="GRY"> &nbsp;<label for="GRY">Gray</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="TEA" id="TEA" value="TEA"> &nbsp;<label for="TEA">Teal</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="TAN" id="TAN" value="TAN"> &nbsp;<label for="TAN">Tan</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="SIL" id="SIL" value="SIL"> &nbsp;<label for="SIL">Aluminum / Silver</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="RED" id="RED" value="RED"> &nbsp;<label for="RED">Red</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="PNK" id="PNK" value="PNK"> &nbsp;<label for="PNK">Pink</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="PLE" id="PLE" value="PLE"> &nbsp;<label for="">Purple</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="ONG" id="ONG" value="ONG"> &nbsp;<label for="ONG">Orange</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="YEL" id="YEL" value="YEL"> &nbsp;<label for="YEL">Yellow</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="WHI" id="WHI" value="WHI"> &nbsp;<label for="">White</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="UNK" id="UNK" value="UNK"> &nbsp;<label for="UNK">Unknown</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="TRK" id="TRK" value="TRK"> &nbsp;<label for="TRK">Turquoise</label></td>
	  </tr>

	  <tr>
	       <td class="unifont1"><input type="checkbox" name="TPE" id="TPE" value="TPE"> &nbsp;<label for="TPE">Taupe</label></td>
	  </tr>
</table>

</div>
<br/>
<div align="center" style="padding-left:10px;padding-bottom:15px;">
<table cellpadding="0" cellspacing="0" border="0">
    <tr>
           <td class="medblack" width="33%" align="center">
	           <input type="button" name="Submit" value="Select Colors" onClick="sel_colors('<TMPL_VAR NAME=FIELD_ID>');"/>
          </td>
           <td class="medblack" width="33%" align="center">
              <input type="button" name="Submit" value="Cancel" onClick="javascript:window.close();"/>
          </td>
    </tr>
</table>
</div>
</form>
</body>
</html>
<!-- End popup/colors.tpl -->
