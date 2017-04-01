<!-- begin manage_account_chsecurity_q.tpl -->

<script>
    function check_vals() 
    {
	var df = document.forms[0];
	var taken_questions = new Array();
	var error = 0;
	var error_msg = '';
	var error_focus = '';
	
	for (var i=0; i < df.elements.length; i++) {
	    if(/SECURITY_QUESTION/.test(df.elements[i].name)) {
		if (taken_questions[df.elements[i].options[df.elements[i].options.selectedIndex].value]) {
		    error = 1;
		    error_msg = 'Please select unique question(s).'
		    error_focus = df.elements[i];
		}
		else {
		    taken_questions[df.elements[i].options[df.elements[i].options.selectedIndex].value] = 1;
		}
	    }
	    else if (/SECURITY_ANSWER/.test(df.elements[i].name)) {
		if (df.elements[i].value.length < <TMPL_VAR NAME=MIN_SEC_A_LENGTH> ||
		    !/^[A-Za-z0-9 ]+$/.test(df.elements[i].value)	
		    ) {
		    error = 1;
		    error_msg = 'Please enter a valid answer, at least <TMPL_VAR NAME=MIN_SEC_A_LENGTH> characters, alphanumeric only.'
		    error_focus = df.elements[i];
		    break;
		}
	    }
	}

	if (error) {
	    alert(error_msg);
	    error_focus.focus();
	    return false;
	}
	else {
	    return send_event('MANAGE/UPDATE_SINGLE_USER_SEC_Q');
	}
    }
</script>

<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center" valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="856">
      <tr height="12">
        <td height="12" width="856" class="unifont1">&nbsp;</td>
      </tr>
    </table>
    <table align=center border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
      <tr>
        <td colspan="2" align="center" class="myaccounttitle">
	<br>Change Security Questions
	</td>
      </tr>
     
      <TMPL_IF NAME="MESSAGE">
      <TR>
        <td class="myaccounttitle" align="center" width="860" colspan="2"><TMPL_VAR NAME="MESSAGE">&nbsp;</TD>
      </TR>
      </TMPL_IF>

      <TMPL_IF NAME="PASSWORD_CHANGE_DONE">
      <tr>
        <td colspan="2" height="40" class="unifont1">&nbsp;</td>
      </tr>
      <TMPL_ELSE>
      <tr>
        <td width="860" align="center" class="myaccountlabel">
        <br>
	<TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">
	<div style="width:500;text-align:left;" class="unifont1">
	<TMPL_VAR NAME="SECURITY_QUESTION_EDIT_DISABLED_MESSAGE">
	</div>
	<TMPL_ELSE>
	<p>
	<b>Please select your security question(s) below and enter valid answer(s) (at least <TMPL_VAR NAME=MIN_SEC_A_LENGTH> characters, alphanumeric characters only)</b>
	</p>
	</TMPL_IF>
	<br><br>
	
        <table align="center" border="0" cellpadding="2" cellspacing="0" width="600">
	    <TMPL_LOOP NAME=SECURITY_QUESTION_ANSWER_LOOP>
	    <tr>
		<td class="unifont1" align="right" width="160"><b><TMPL_VAR NAME=INDEX>. </b></TD>
		<td align="left" width="580">
		<SELECT <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> id="q<TMPL_VAR NAME=INDEX>" NAME="SECURITY_QUESTION" SIZE="1" onchange="this.form.elements['a<TMPL_VAR NAME=INDEX>'].value=''">
		<option value="">--- Select One ---
		<TMPL_LOOP NAME=SECURITY_QUESTIONS>
		<option <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
		</TMPL_LOOP>
		</SELECT>
		</TD>
	    </tr> 
	    <tr>
		<td class="unifont1" align="right" width="160"></TD>
		<td class="unifont1" align="left" width="580"><INPUT id="a<TMPL_VAR NAME=INDEX>" NAME="SECURITY_ANSWER" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> SIZE="40" VALUE="<TMPL_VAR NAME="SECURITY_ANSWER">" MAXLENGTH=250></TD>
	    </tr>
	    <tr><td colspan=2 height=10>&nbsp;</td></tr>
	    </TMPL_LOOP>	     
	     <tr>
		<script>
		  document.forms[0].EVENT.value = 'MANAGE/UPDATE_SINGLE_USER_SEC_Q';
		</script>
		<td colspan=2 align="center">
		  <br>
		    <table border=0 cellspacing=10 cellpadding=0>
		    <tr>
		    <td>
		    <input name="back" tabindex="2" class="rb_otp_small" type="button" value="Back" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');" onMouseOut="flip_style(this,'rb_otp_small');"> 		    </td>
		    <td>
		    <TMPL_IF NAME=SECURITY_QUESTION_EDIT_DISABLED>
		    <input name="save" tabindex="1" class="rb_otp_small" type="button" value="Reset" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q_RESET');" onMouseOut="flip_style(this,'rb_otp_small');"> 
		    <TMPL_ELSE>
		    <input name="save" tabindex="1" class="rb_otp_small" type="button" value="Save" onMouseDown="flip_style(this,'rbd_otp_small');" onClick="return check_vals()" onMouseOut="flip_style(this,'rb_otp_small');"> 
		    </TMPL_IF>
		    </td>
		    </tr>
		    </table>
		</td>
	      </tr>
     
        </table>
	
	<br><br><br>
	</td>
      </tr>
      </TMPL_IF>
    </table>
    </td>
  </tr>
</table>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<script>
if (errortext) {
    document.forms[0].SECURITY_ANSWER[0].focus();
}
else if (document.forms[0].SECURITY_QUESTION[0]) {
    document.forms[0].SECURITY_QUESTION[0].focus();
}
</script>


<!-- end manage_account_chsecurity_q.tpl -->
