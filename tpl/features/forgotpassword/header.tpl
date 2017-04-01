<!--<TMPL_VAR NAME=SERVER_ID>-->

<html>
  <head>
    <title><TMPL_IF COLLECTION_SOLUTIONS>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Feature: Forgot Password</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">

<style type="text/css">
#hd {
    <TMPL_IF IRB>
    background:url(/bps/images/v2/irb/logo.gif) no-repeat;
    <TMPL_ELSE>
    <TMPL_IF COLLECTION_SOLUTIONS>
    background:url(/bps/images/v2/fcol/logo_red.gif) no-repeat;
    <TMPL_ELSE>
    <TMPL_IF GCOL>
    background:url(<TMPL_VAR NAME=IMGPATH>/v2/gcol/logo.gif) no-repeat;
    <TMPL_ELSE>
    background:url(/bps/images/login_logo.gif) no-repeat;
    </TMPL_IF>
    </TMPL_IF>
    </TMPL_IF>
    padding-right:15px;
    height:55px;
    position: relative;
}
.bgBlue{
    background-color:#C4DBEE;
}
</style>

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/forgotpassword.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
    <script>
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
 	<script>
 	    var $j = jQuery.noConflict();
	    function check_vals() {
		var f = document.forms[0];
		if(f.EMAIL_ADDR  && f.EMAIL_ADDR.value != f.EMAIL_ADDR2.value) {
		    alert ("Email addresses do not match. Please try again.");
		}
		else if (f.SECURITY_A && !f.SECURITY_A.value) {
		    alert("Please provide an answer to your security question.");
		}
		else if (!/^\d{5}$/.test(f._T.value)) {
		    alert('Please Enter All 5 Verification Characters to Login.');
		}
		else {
		    send_event('PRELOGIN/PROC_INDEX')
		}
	    }
	</script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
 
  </head>

  <body onload="setup_img_token();set_focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
<div id="hd"><span id="hdr_top_logo"></span></div>


    <form name="FORGOT_PASSWORD" action="<TMPL_VAR NAME=ACTION_OTHER>" method="post">
      <TMPL_INCLUDE NAME=common_hidden_input.tpl>
      <input type="hidden" name="EVENT" value='<TMPL_VAR NAME=EVENT>'>
      <input type="hidden" name="APPLICATION_TYPE" value='<TMPL_VAR NAME=APPLICATION_TYPE>'>

      <br/><br/>	
      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0" width="880">
          <tr>
            <td align="center" valign="top">

