
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- begin show_ucd.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Update Contact Information</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/ucd.css" rel="stylesheet" type="text/css" media="all">
<TMPL_IF ENABLE_V2>
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurintMyAccount.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">
</TMPL_IF>

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js" type="text/javascript"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js" type="text/javascript"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/validate.js" type="text/javascript"></script>

    <script type="text/javascript">
        function update_ucd()
        {
	    var dept_list = document.forms[0].DEPARTMENT;
	    var selected_dept = dept_list.options[dept_list.selectedIndex].value;
	    // alert('DEPT = <' + selected_dept + '>, Other = <' + document.forms[0].OTHER_DEPT.value + '>');
	    // validate department -- if Other was selected,
	    // then 'other_dept' must be entered
	    if (selected_dept == 'Other'
	        && document.forms[0].OTHER_DEPT.value == '') {
	        alert('Please enter the Other Department value');
	        document.forms[0].OTHER_DEPT.focus();
	    } else {
                // validate the rest of the form
                // skip validation for netscape (done at serverside)
                if (!document.getElementById || validate()) {
	            send_event('MYACCOUNT/UPDATE_UCD');
                }
            }
	}

	function check_dept(sel)
	{
	    var f = sel.form;
	    if (sel.options[sel.selectedIndex].value == 'Other') {
	        other_dept_on();
	        f.OTHER_DEPT.focus();
	    } else {
	        other_dept_off();
	        f.STREET_ADDRESS.focus();
	    }
	}

	function init_form()
	{
	    var f = document.forms[0];
	    var sel = f.DEPARTMENT;
	    // alert('selected = <' + sel.options[sel.selectedIndex].value + '> [' + sel.selectedIndex + ']');
	    if (sel.options[sel.selectedIndex].value != 'Other')
	        other_dept_off();
            f.LAST_NAME.focus();
	}

	function other_dept_on(flag)
	{
	    var f = document.forms[0];
	    f.OTHER_DEPT.className = f.OTHER_DEPT.className.replace(/\s*disabled/g, '');
	    f.OTHER_DEPT.disabled = false;
	    if (document.getElementById)
	        document.getElementById('other_dept_label').className = document.getElementById('other_dept_label').className.replace(/\s*disabledlabel/g, '');
	}

	function other_dept_off(flag)
	{
	    var f = document.forms[0];
	    f.OTHER_DEPT.className += ' disabled';
	    f.OTHER_DEPT.disabled = true;
	    if (document.getElementById)
	        document.getElementById('other_dept_label').className += ' disabledlabel';
	}

    </script>
  </head>

  <body leftmargin="0" rightmargin="0" style="margin: 0" onload="init_form()">
<TMPL_IF ENABLE_V2>
<div id="hd"><span id="hdr_top_logo"></span></div>
<TMPL_ELSE>
    <table border="0" cellpadding="0" cellspacing="0" width="100%" class="headerarea">
	<tr>
	  <td><img alt="" src="<TMPL_VAR NAME=IMGPATH>/<TMPL_VAR NAME=APPLICATION_TYPE>/logo.gif" width="266" height="43" border="0"></td>
	  <td width="184" height="43" align="right"><img alt="" src="<TMPL_VAR NAME=IMGPATH>/main/main_logo.gif"></td>
	</tr>
	<tr>
	  <td height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="450" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	</tr>
	<tr>
	  <td class="headerseparator" height="10" colspan="2" align="left" valign="bottom"><img alt="" border="0" height="10" width="10" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	</tr>
    </table>
</TMPL_IF>

    <div style="margin: 10px 10%; padding: 10px; text-align: center;">
      <h1 class="myaccountbanner">Account Update -- Information Required</h1>

<br><br>
      <p class="note">
	  LexisNexis is committed to delivering innovative and superior
	  solutions for serving your fraud prevention and
	  investigative needs. In order to ensure you are informed of
	  important notifications and communications relevant to your
	  account, and for LexisNexis internal use, we need to update
	  your contact information.</p>

      <TMPL_IF NAME="ERROR_MESSAGE">
      <p class="error"><TMPL_VAR NAME="ERROR_MESSAGE"></p>
      </TMPL_IF>

      <fieldset>
	<p class="inputlabel">&nbsp; &nbsp; Update Contact Information</p>
        <form name="ucd_update" action="<TMPL_VAR NAME='ACTION'>"
	      method="post" onsubmit="return validate();">
          <TMPL_INCLUDE NAME=common_hidden_input.tpl>
          <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
          <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
          <input type="hidden" name="EVENT" value="">

	  <table width="90%" class="fieldrow">
	    <tr>
	      <td class="inputlabel" width="33%"><label for="last_name">Last Name</label></td>
	      <td class="inputlabel" width="33%"><label for="first_name">First Name</label></td>
	      <td class="inputlabel" width="33%"><label for="middle_name">Middle Name or Initial</label></td>
	    </tr>
	    <tr>
	      <td class="nsinputs">
		<input type="text" id="last_name" name="LAST_NAME"
		      tabindex="1" size="15" maxlength="255"
		      value="<TMPL_VAR NAME='LAST_NAME'>"
		      pattern="name" error_message="Enter Last Name"
		    >
	      </td>

	      <td class="nsinputs">
		<input type="text" id="first_name" name="FIRST_NAME"
		      tabindex="2" size="15" maxlength="255"
		      value="<TMPL_VAR NAME='FIRST_NAME'>"
		      pattern="name" error_message="Enter First Name"
		    >

	      <td class="nsinputs">
		<input type="text" id="middle_name" name="MIDDLE_NAME"
		      tabindex="3" size="15" maxlength="255"
		      value="<TMPL_VAR NAME='MIDDLE_NAME'>"
		      pattern="name" optional="1"
		    >
	      </td>
	    </tr>
	  </table>

	  <table width="90%" class="fieldrow">
	    <tr>
	      <td class="inputlabel" width="33%"><label for="title">Title</label></td>
	      <td class="inputlabel" width="33%"><label for="department">Department</label></td>
	      <td class="inputlabel" width="33%"><label for="other_dept" id="other_dept_label">Other Department</label></td>
	    </tr>
	    <tr>
	      <td class="nsinputs">
		<input type="text" id="title" name="TITLE"
		      tabindex="11" size="15" maxlength="255"
		      value="<TMPL_VAR NAME='TITLE'>"
		      pattern="title" error_message="Enter Title"
		    >
	      </td>

	      <td class="nsinputs">
		<select id="department" name="DEPARTMENT"
			tabindex="12" onchange="check_dept(this)">
		  <TMPL_LOOP NAME="DEPARTMENTS">
		    <option<TMPL_IF NAME='DEPT_SELECTED'> selected</TMPL_IF> value="<TMPL_VAR NAME='DEPT_ID'>"><TMPL_VAR NAME='DEPT_DESC'></option>
		  </TMPL_LOOP>
		</select>
	      </td>

	      <td class="nsinputs">
		<input type="text" id="other_dept" name="OTHER_DEPT"
		      tabindex="13" size="30" maxlength="255"
		      value="<TMPL_VAR NAME='OTHER_DEPT'>"
		      pattern="name" error_message="Enter Other Department" optional="1"
		    >
	      </td>
	    </tr>
	  </table>

	  <table width="90%" class="fieldrow">
	    <tr>
	      <td class="inputlabel" width="40%"><label for="street_address">Street Address</label></td>
	      <td class="inputlabel" width="35%"><label for="city">City</label></td>
	      <td class="inputlabel" width="10%"><label for="state">State</label></td>
	      <td class="inputlabel" width="15%"><label for="zip">Zip Code</label></td>
	    </tr>
	    <tr>
	      <td class="nsinputs">
		<input type="text" id="street_address" name="STREET_ADDRESS"
		      tabindex="31" size="40" maxlength="255"
		      value="<TMPL_VAR NAME='STREET_ADDRESS'>"
		      pattern="address" error_message="Enter Street Address [alphanumeric]"
		    >
	      </td>
	      <td class="nsinputs">
		<input type="text" id="city" name="CITY"
		      tabindex="32" size="30" maxlength="255"
		      value="<TMPL_VAR NAME='CITY'>"
		      pattern="city" error_message="Enter City [alphabetic]"
		    >
	      </td>
	      <td class="nsinputs">
		<input type="text" id="state" name="STATE"
		      tabindex="33" size="3"
		      value="<TMPL_VAR NAME='STATE'>"
		      pattern="state" error_message="Enter State [2-letter abbreviation]"
		    >
	      </td>
	      <td class="nsinputs">
		<input type="text" id="zip" name="ZIP"
		      tabindex="34" size="10"
		      value="<TMPL_VAR NAME='ZIP'>"
		      pattern="zip" error_message="Enter Zip Code [5 digit or 5+4 digit]"
		    >
	      </td>
	    </tr>
	  </table>

	  <table width="90%" class="fieldrow">
	    <tr>
	      <td class="inputlabel" width="50%"><label for="phone">Phone Number</label></td>
	      <td class="inputlabel" width="50%"><label for="email">eMail Address</label></td>
	    </tr>
	    <tr>
	      <td class="nsinputs">
		<input type="text" id="phone" name="PHONE"
		      tabindex="34" size="14" maxlength="32"
		      value="<TMPL_VAR NAME='PHONE'>"
		      pattern="phone" error_message="Enter Phone Number [(xxx) xxx-xxxx or xxx-xxx-xxxx]"
		      >
	      </td>
	      <td class="nsinputs">
		<input type="text" id="email" name="EMAIL"
		      tabindex="34" size="50" maxlength="255" pattern="email"
		      value="<TMPL_VAR NAME='EMAIL'>"
		      pattern="email" error_message="Enter Email Address [name@example.com]"
		      >
	      </td>
	    </tr>
	  </table>

	  <table class="buttons" width="90%">
	    <tr>
	    <td align="center"><a href="javascript:update_ucd()" title="Update Information now"><img src="<TMPL_VAR NAME='IMGPATH'>/save.gif" alt="Update" border="0" title="Update Information now"></a></td>
	    <TMPL_UNLESS NAME="UCD_REQUIRED">
	    <td align="center"><a href="javascript:send_event('MYACCOUNT/SKIP_UCD')" title="Update Information on next login"><img src="<TMPL_VAR NAME='IMGPATH'>/skip.gif" alt="Skip" border="0" title="Update Information on next login"></a></td>
	    </TMPL_UNLESS>
	    </tr>
	  </table>

        </form>
      </fieldset>
    </div>
  </body>
</html>
<!-- end show_ucd.tpl -->
