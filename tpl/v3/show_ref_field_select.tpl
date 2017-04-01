<!DOCTYPE html>
<!-- begin show_ref_field_select.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Select Reference Code</title>

    <TMPL_INCLUDE NAME="includes_info.tpl">

    <style>
    .txtWrapper{min-width:500px;}
    </style>

    <script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">

  <TMPL_INCLUDE NAME="header_info.tpl">

<form name="group" action="<TMPL_VAR NAME='ACTION'>" method="post" onsubmit="return validate();">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <input type="hidden" name="EVENT" value="">



<div align="center">

  <table border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td align="center" valign="top">

  <div class="txtWrapper">
  <div id="txtCon">

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td><img alt="" height="12" width="880" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
</table>


  <div class="mfa-header">Select Reference Code</div>
  <br/>
  <div>User must select one field from each category</div>
  <br/>


<TMPL_IF NAME="ERROR_MESSAGE">
  <p class="error"><TMPL_VAR NAME="ERROR_MESSAGE"></p>
</TMPL_IF>

  <table border="0" cellpadding="5" cellspacing="0">

    <tr>
      <td align="right"><label for="ref_options_1">Reference Field 1</label></td>
      <td>
        <select id="ref_options_1" name="REF_OPTIONS_1">
        <option value="" selected>Select One</option>
	
	<TMPL_LOOP REF_OPTIONS_1>
	  <option value="<TMPL_VAR VAL>"><TMPL_VAR LBL></option>
	</TMPL_LOOP>

	</select>

      </td>
    </tr>
    
    <tr>
      <td align="right"><label for="ref_options_2">Reference Field 2</label></td>
      <td>
        <select id="ref_options_2" name="REF_OPTIONS_2">
	<option value="" selected>Select One</option>

	<TMPL_LOOP REF_OPTIONS_2>
	  <option value="<TMPL_VAR VAL>"><TMPL_VAR LBL></option>
	</TMPL_LOOP>

	</select>
      </td>
    </tr>

    <tr>
      <td colspan="2" align=middle><br><a class="myaccount-btn red-btn" href="javascript:void(0);" onClick="select_multi_ref_fields();">Submit</a></td>
    </tr>
  </table>


</div>
</div>

    </td>
  </tr>
</table>

</div>

</form>

</body>
</html>
<!-- end show_ref_field_select.tpl -->
