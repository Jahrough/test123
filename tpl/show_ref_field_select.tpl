
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin show_ref_field_select.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Select Reference Code</title>

	<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">

	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/user_admin.js"></script>

  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" class="alternatebody">

<TMPL_IF NAME="ENABLE_V2">
  <link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
  <div id="hd"><span trackid="hdr_top_logo"></span></div>
<TMPL_ELSE>
  <TMPL_INCLUDE NAME="generic_header.tpl">
</TMPL_IF>

<div align="center">


<br>

<table border="0" cellpadding="0" cellspacing="0" width="880">
  <tr>
    <td align="center" valign="middle" class="myaccountborder">
		<table width="856" cellpadding="0" cellspacing="0" border="0">
		  <tr>
			<td colspan="5" align="center" width="856"><img width="856" height="12" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		  </tr>
		</table>
		<table width="856" cellpadding="0" cellspacing="0" border="0" class="myaccountbody">
		  <tr>
			<td width="1"><img width="10" height="1" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="65"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="600" align="center" class="largefont1" nowrap="nowrap" valign="middle"><span class="myaccounttitle">User must select one field from each category</span></td>
			<td width="65"><img width="65" height="24" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			<td width="1"><img width="1" height="40" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
		  </tr>
		</table>
    </td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder"><img border="0" width="1" height="12" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td align="center" class="myaccountborder">
		<table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
			<tr>
				<td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			</tr>
			<tr>
				<td align="center">

					<TMPL_IF NAME="ERROR_MESSAGE">
					<p class="error"><TMPL_VAR NAME="ERROR_MESSAGE"></p>
					</TMPL_IF>

					<form name="group" action="<TMPL_VAR NAME='ACTION'>"
					  method="post" onsubmit="return validate();">
					  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
					  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
					  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
					  <input type="hidden" name="EVENT" value="">
						<table width="35%" class="fieldrow" align="center" border="0">
							<tr>
								<td class="largefont1" align="right">
									Reference Field 1
								</td>
								<td class="nsinputs" align="left">
									<select id="ref_options_1" name="REF_OPTIONS_1">
										<option value="" selected>Select One</option>
<TMPL_LOOP REF_OPTIONS_1>
										<option value="<TMPL_VAR VAL>"><TMPL_VAR LBL></option>
</TMPL_LOOP>
									</select>
								</td>
							</tr>
							<tr>
								<td class="largefont1" align="right">
									Reference Field 2
								</td>
								<td class="nsinputs" align="left">
									<select id="ref_options_2" name="REF_OPTIONS_2">
										<option value="" selected>Select One</option>
<TMPL_LOOP REF_OPTIONS_2>
										<option value="<TMPL_VAR VAL>"><TMPL_VAR LBL></option>
</TMPL_LOOP>
									</select>
								</td>
							</tr>
						</table>
						<br>
						<table class="buttons" width="100%" align="center">
							<tr>
								<td align="center"><input type="button" onclick="select_multi_ref_fields()" value="   Submit   "></td>
							</tr>
						</table>
					</form>

				</td>
			</tr>
			<tr>
				<td align="center" colspan="2"><img border="0" width="1" height="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
			</tr>
		</table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME="myaccount_footer.tpl">

<span class="smallfont1">&nbsp;<br></span>

</div>

</form>
<TMPL_INCLUDE NAME="classic_footer.tpl">
</body>
</html>
<!-- end show_ref_field_select.tpl -->
