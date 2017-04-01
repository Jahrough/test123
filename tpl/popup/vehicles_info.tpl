<!-- Begin popup/vehicles_info.tpl -->
<html>
<head>
<title><TMPL_IF NAME="TITLE"><TMPL_VAR NAME="TITLE"><TMPL_ELSE>Vehicles Make and Models</TMPL_IF></title>
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

<div align="left" style="padding-left:10px;">
<table cellpadding="0" cellspacing="0" border="0">

	  <TMPL_IF NAME="ERROR_MSG">
	  <tr>
	    <td class="unifont1" nowrap><br><br><font color="red"><TMPL_VAR NAME="ERROR_MSG"></font><br></td>
	  </tr>
	  </TMPL_IF>

</table>

<br/>
<TMPL_IF VEHICLE_LOOP>
<table cellpadding="0" cellspacing="0" border="0">
	  <tr>
	    <td class="unifont1" nowrap>
			Choose the Vehicle Make(s) from the list below: <br/>(Cancel for choosing All Vehicle Makes)
			<br><br>
	    </td>
	  </tr>
	  <tr height="5"><td>
	  </td>
	</tr>
     <TMPL_LOOP NAME=VEHICLE_LOOP> 
     <tr>
         <TMPL_IF USE_MAKES>
            <td class="unifont1"><input type="checkbox" name="<TMPL_VAR NAME=MAKE>" id="<TMPL_VAR NAME=MAKE>" value="<TMPL_VAR NAME=MAKE>"> &nbsp;<label for="<TMPL_VAR NAME=MAKE>"><TMPL_VAR NAME=MAKE></label></td>
         <TMPL_ELSE>
            <td class="unifont1"><input type="checkbox" name="<TMPL_VAR NAME=CODE>" id="<TMPL_VAR NAME=CODE>" value="<TMPL_VAR NAME=CODE>"> &nbsp;<label for="<TMPL_VAR NAME=CODE>"><TMPL_VAR NAME=MAKE></label></td> 
         </TMPL_IF>
     </tr>
     </TMPL_LOOP>
</table>
</TMPL_IF>


<TMPL_IF VEHICLE_MODELS_LOOP>
<table cellpadding="0" cellspacing="0" border="0">
  <tr><td class="unifont1">Choose the Vehicle Model(s) from the list below: <br/>(Cancel for choosing All Vehicle Models)</td></tr>
  <tr height="5"><td></td></tr>
     <TMPL_LOOP NAME=VEHICLE_MODELS_LOOP> 
     <!--<tr>
         <td><input type="checkbox" name="<TMPL_VAR NAME=CODE>" onClick="javascript:tog_make('<TMPL_VAR NAME=CODE>');" id="<TMPL_VAR NAME=CODE>" value="ALL"> &nbsp;<label for="<TMPL_VAR NAME=CODE>"><TMPL_VAR NAME=MAKE></label></td>
     </tr>-->
          <TMPL_LOOP NAME=VEHICLE_MAKE_MODELS_LOOP> 
	     <tr>
		 <td class="unifont1">&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="<TMPL_VAR NAME=MODEL_CODE>" id="<TMPL_VAR NAME=MODEL>" value="<TMPL_VAR NAME=MODEL>"> &nbsp;<label for="<TMPL_VAR NAME=MODEL>"><TMPL_VAR NAME=MODEL></label></td>
	     </tr>
          </TMPL_LOOP>
      
      <tr height="5"><td></td></tr>
     </TMPL_LOOP>
</table>
</TMPL_IF>
</div>

<br/>

<div align="center" style="padding-left:10px;padding-bottom:15px">
<table cellpadding="0" cellspacing="0" border="0">
    <tr>
           <td class="medblack" width="33%" align="center">
              <TMPL_IF VEHICLE_LOOP>
	           <input type="button" name="Submit" value="Select Makes" onClick="sel_veh_info(1);"/>
	      <TMPL_ELSE>
	           <input type="button" name="Submit" value="Select Models" onClick="sel_veh_info(2);"/>
	     </TMPL_IF>
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
<!-- End popup/vehicles_info.tpl -->
