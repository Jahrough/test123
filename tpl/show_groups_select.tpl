
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin show_groups_select.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Select Admin Group</title>

	<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_IF NAME=ENABLE_V2>v2/</TMPL_IF><TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
	<TMPL_IF NAME="ENABLE_V2">
	<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
	<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
	</TMPL_IF>

	<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
	<script src="<TMPL_VAR NAME='JSPATH'>/myaccount.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js"></script>

    <script type="text/javascript">
	function update_group_selection()
	{
		var group_list = document.forms[0].GROUPS;
		var selected_group = group_list.options[group_list.selectedIndex].value;
		//alert('GROUP = <' + selected_group + '>');
		// validate the rest of the form
		// skip validation for netscape (done at serverside)
		if (!document.getElementById || validate()) {
		send_event('MYACCOUNT/UPDATE_GROUP_SESSION');
		}
	}

    </script>
  </head>

  <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<TMPL_IF NAME="ENABLE_V2">
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
			<td width="600" align="center" class="largefont1" nowrap="nowrap" valign="middle"><span class="myaccounttitle">Please Select A Group</span></td>
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

					<span class="largefont1">
						Please select the group you want to work in. <TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP>By selecting "No Group" you will be logged in using your default ID settings.</TMPL_UNLESS><br><br>
					</span>

					<form name="group" action="<TMPL_VAR NAME='ACTION'>"
					  method="post" onsubmit="return validate();">
					  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
					  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
					  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
					  <input type="hidden" name="EVENT" value="">
						<table width="100%" class="fieldrow" align="center" border="0">
							<tr>
								<td class="unifont1" align="center">
									<select id="groups" name="GROUPS" tabindex="12">
											<TMPL_UNLESS NAME=HIDE_OPTION_FOR_NO_GROUP><option value="0">No Group</option></TMPL_UNLESS>
										<TMPL_LOOP NAME="GROUPS">
											<option<TMPL_IF NAME='GROUP_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='GROUP_ID'>"><TMPL_VAR NAME='GROUP_NAME'></option>
										</TMPL_LOOP>
									</select>
								</td>
							</tr>
						</table>
						<br>
						<table class="buttons" width="100%" align="center">
							<tr>
								<!--td align="center"><a href="javascript:update_group_selection()" title="Select User Group"><img src="<TMPL_VAR NAME='IMGPATH'>/save.gif" alt="Select User Group" border="0" title="Select User Group"></a></td-->
								<td align="center" class="unifont1"><input name="BUTTON" type="button" onclick="send_event('MYACCOUNT/UPDATE_GROUP_SESSION');disable_buttons('BUTTON')" value="   Save   "></td>
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
<!-- end show_groups_select.tpl -->
