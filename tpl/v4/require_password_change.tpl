<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- begin v4/require_password_change.tpl -->
    <!--<TMPL_VAR NAME=SERVER_ID>-->
    <TMPL_INCLUDE NAME="includes.tpl">
  </head>

  <body class="password-body"> 

  <header>
    <h1>
		<TMPL_IF AML>
			<img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
		<TMPL_ELSE>
			<TMPL_IF RSKM>
				<img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
			<TMPL_ELSE>
				<TMPL_IF RSKAD>
					<img src="<tmpl_var name=IMGPATH>/LN-Admin.png" alt="LexisNexis&copy; Risk Administration&reg;"/>
				</TMPL_IF>
			</TMPL_IF>
		</TMPL_IF>
    </h1>
  </header>

<div id="main" class="clear">
<div id="wrapper">

<form name="REQUIRE_PASSWORD_CHANGE" class="smart-form" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <input type="hidden" name="SKIN_TYPE" value="<TMPL_VAR NAME=SKIN_TYPE>">
  <input type="hidden" name="APPLICATION_TYPE" value="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <input type="hidden" name="EVENT" value="">
  <input type="hidden" name="REQUIRE_PASSWORD_CHANGE" value="1">
  <input type="hidden" name="UPDATE_PW_SEC_QUESTION" value="<TMPL_VAR NAME='UPDATE_PW_SEC_QUESTION'>">
  <input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">
  <input type="hidden" name="MIN_PW_LEN" value="<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>">
  <input type="hidden" name="PASSWORD_EXPIRED" value="<TMPL_VAR NAME='PASSWORD_EXPIRED'>">
  <script> var minPasswordLen = "<TMPL_VAR MIN_PASSWORD_LENGTH>";</script>
  <script> var isSha2Password = "<TMPL_VAR SHA2_PASSWORD>";</script>
  <TMPL_IF REMIND_PASSWORD_CHANGE_ASK>
      <input type="hidden" name="REMIND_PASSWORD_CHANGE_ASK" value="1">
  </TMPL_IF>


<table border="0" >
  <tr>
    <div class="row"></div>
    <td width="35">&nbsp; &nbsp;</td>
    <td width="500">
    <div class="row">
    <h4><strong>&nbsp;&nbsp;<TMPL_IF PASSWORD_EXPIRED>Expired Password<TMPL_ELSE>Change <TMPL_UNLESS REMIND_PASSWORD_CHANGE_ASK> Temporary</TMPL_UNLESS> Password</TMPL_IF></strong></h4>
    </div>
    <div class="row">&nbsp;&nbsp;* Required Field</div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
      <TMPL_UNLESS REMIND_PASSWORD_CHANGE_ASK>
         &nbsp;&nbsp;Create a new password to continue to use this application.
      <TMPL_ELSE>
         &nbsp;&nbsp;Please enter and submit the information requested below to continue your update.
      </TMPL_UNLESS> 
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
    <b>&nbsp;&nbsp;ID:&nbsp; <TMPL_VAR NAME='LOGINID'></b>
    </div>
    <div class="row"></div>
    <div class="row">
      <div class="input col col-9">
        <label>
          <input type="password" id="CURR_PASSWORD" class="form-control" name="CURR_PASSWORD" placeholder=<TMPL_IF PASSWORD_EXPIRED>"Expired Password *"<TMPL_ELSE><TMPL_IF REMIND_PASSWORD_CHANGE_ASK>"Current Password *"<TMPL_ELSE>"Temporary Password *"</TMPL_IF></TMPL_IF>>
          <span class="tooltip"><TMPL_IF PASSWORD_EXPIRED>Expired Password<TMPL_ELSE><TMPL_IF REMIND_PASSWORD_CHANGE_ASK>Current Password<TMPL_ELSE>Temporary Password</TMPL_IF></TMPL_IF>*</span>
        </label>
      </div>
    </div>
    <div class="row"></div>
    <div class="row">
      <div class="input col col-9">
        <label>
          <input type="password" id="NEWPASSWORD" class="form-control" name="NEWPASSWORD" placeholder="New Password *" maxlength="50">
          <span class="tooltip">New Password *</span>
        </label>
      </div>
    </div>
    <div class="row"></div>
    <div class="row">
      <div class="input col col-9">
        <label>
          <input type="password" id="CONFIRM_PASSWORD" class="form-control" name="CONFIRM_PASSWORD" placeholder="Verify New Password *" maxlength="50">
          <span class="tooltip">Verify New Password *</span>
        </label>
      </div>
    </div>
    </div>
    </td>
    <td>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
    <div class="row">&nbsp;</div>
          <b>All new passwords must:</b><br/><br/>
          <ul class="expired_password_criteria">
	    <li>Consist of at least <TMPL_VAR MIN_PASSWORD_LENGTH> characters</li>
	    <li>Not include any spaces</li>
	    <li>Not include your ID</li>
	    <li>Not be the same as any of your previous 12 passwords</li>
	    <li>Not been used in the last 30 days</li>
       <li>Contain at least <TMPL_IF SHA2_PASSWORD>three<TMPL_ELSE>two</TMPL_IF> of the following:
	    <ul>
         <TMPL_IF SHA2_PASSWORD>
             <li>Uppercase characters</li>
             <li>Lowercase characters</li>
         <TMPL_ELSE>
             <li>Alphabetic characters</li>
         </TMPL_IF>
	      <li>Numeric characters</li>
	      <li>Special character (e.g.~!@#$%^&*(){};:.,)</li>
	    </ul>
	    </li>
	  </ul>
    </td>
  </tr>
  <TMPL_IF UPDATE_PW_SEC_QUESTION>
  <tr>
    <td width="35">&nbsp; &nbsp;</td>
    <td width="500">
       <div class="row">
           &nbsp;&nbsp;Please enter an answer to the three security question (2-100 characters)
       </div>
    <TMPL_LOOP NAME=SECURITY_QUESTION_ANSWER_LOOP> 
       <div class="row"> 
           <div class="input col col-9"> 
               <label> 
                   <select class="form-control sec-ques" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> id="ques<TMPL_VAR NAME=INDEX>" NAME="SECURITY_QUESTION_<TMPL_VAR NAME=INDEX>" SIZE="1" onchange="this.form.elements['ansr<TMPL_VAR NAME=INDEX>'].value=''"> 
                       <option value="">Select a Security question *</option> 
                       <TMPL_LOOP NAME=SECURITY_QUESTIONS> 
                           <option <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION> 
                       </TMPL_LOOP> 
                   </select> 
               </label> 
           </div> 
       </div> 
       <div class="row"> 
           <div class="input col col-9"> 
               <label> 
                   <input placeholder="Security Answer *" type="text" id="ansr<TMPL_VAR NAME=INDEX>" class="form-control sec-ques" name="SECURITY_ANSWER_<TMPL_VAR NAME=INDEX>" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">disabled="disabled"</TMPL_IF> value="<TMPL_VAR NAME="SECURITY_ANSWER">" maxlength="200"> 
                   <span class="tooltip">Security Answer *</span> 
               </label> 
           </div> 
       </div> 
       <div class="row">&nbsp;</div>
    </TMPL_LOOP> 

    </td>
  </tr>
  </TMPL_IF> 
  <tr>
    <td width="35">&nbsp; &nbsp;</td>
    <td width="500">
    <div class="row">&nbsp</div>
    <div class="row">&nbsp</div>

    <div class="row pull-right">
    
    <input id="do_pwd_change" class="btn btn-danger" type="button" name="Save" value="&nbsp;&nbsp;Save&nbsp;&nbsp;" onClick="javascript: show_loading(); send_event('LOGIN/REQUIRE_PASSWORD_CHANGE_DO');">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="cancel_pwd_change" class="btn" type="button" name="Cancel" value="Cancel" onClick="validator.cancelSubmit=true;validator.resetForm();send_event('LOGOUT');">&nbsp;&nbsp;&nbsp;&nbsp;

    </div>
    </td>
  </tr>

</table>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

</form>

</div>
</div>
	
<TMPL_INCLUDE NAME="search_hidden_form.tpl">
<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

  </body>
</html>
<!-- end v4/require_password_change.tpl -->
