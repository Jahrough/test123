<!-- Begin popup/client_number.tpl -->
<html>
<head>
<title>Select Client Number</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/search_javascript.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="CLIENT_NUMBER" action="<TMPL_VAR NAME=ACTION>" method="post"> 
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
	       <td class="unifont1" nowrap="nowrap">Client Number:&nbsp; <select name="CLIENTNUMBER" id="CLIENTNUMBER" tabindex="1" STYLE="width: 330px;">
               </select>
               </td>
	  </tr>
	       
</table>

</div>
<br/>
<div align="center" style="padding-left:10px;padding-bottom:15px;">
<table cellpadding="0" cellspacing="0" border="0">
    <tr>
           <td class="medblack" width="33%" align="center">
	           <input type="button" name="Submit" value="Submit" onClick="select_client_number(document.forms[0].CLIENTNUMBER.value);"/>

<!-- <input type="button" name="Submit" value="Select Colors" onClick="sel_colors('<TMPL_VAR NAME=FIELD_ID>');"/> -->

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
<script>
  init_client_number_form("<TMPL_VAR NAME='JSPATH'>/data/client_number.xml", <TMPL_VAR NAME='COMPANYID'>);
</script>
<!-- End popup/client_number.tpl -->
