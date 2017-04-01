<!DOCTYPE html>
<html lang="en">
<head>
<!--<TMPL_VAR NAME=SERVER_ID>-->
<TMPL_INCLUDE NAME="includes.tpl">

<script src="<TMPL_VAR NAME='JSPATH'>/v4/forgot_password.js"></script>

    <script>
    var _tto = 3600;
    //var _tto = <TMPL_VAR NAME=SESSION_TIME_TO_TIMEOUT>; //used elsewhere, but not set for this page
    //session tto not set for this page, but it is still checked

    var IE4 = (document.all);
    var NS4 = (document.layers);
    /*
    if (NS4) {
	document.captureEvents(Event.KEYPRESS);
	document.onkeypress = doKey;
    }
    else {
	document.onkeyup = doKey;
    }
    */
    function doKey(e) 
    {
	whichASC = (NS4) ? e.which : e.keyCode;
	whichKey = String.fromCharCode(whichASC).toLowerCase();

	switch (whichASC) {
	    case 13:
		// instead of plain submit, find the first button and click it.
		click_first_button();	
	}
    }
    
    function click_first_button() {
	var f = document.forms[0];
	var found = 0;
	
	for (var i in f.elements) {
	    if (f[i].type == "button") {
		found = 1;
		break;
	    }
	}
	if (found) f[i].click();
    }
   
    function all_done_continue(flag) {
	send_event('LOGIN/CONTINUE', '<TMPL_VAR NAME=ACTION>');
    }
 
    var enable_lh = <TMPL_IF ENABLE_LOGIN_HASHING>1<TMPL_ELSE>0</TMPL_IF>;
    var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
    </script>
 
 
  </head>

  <body onload="setup_img_token();set_focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
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

<div id="main" class="expanded clear center">
    <form name="FORGOT_PASSWORD" action="<TMPL_VAR NAME=ACTION_OTHER>" method="post" onsubmit="form_submit()">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value='<TMPL_VAR NAME=EVENT>'>
      <input type="hidden" name="APPLICATION_TYPE" value='<TMPL_VAR NAME=APPLICATION_TYPE>'>
      <input type="hidden" name="WEB_20" value='1'>
      <INPUT type=hidden NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">

         <br>


