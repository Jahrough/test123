<!DOCTYPE html>
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <title><TMPL_IF FCOL>Collection Solutions<TMPL_ELSE>Accurint</TMPL_IF> Feature: Forgot Password</title>

    <link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/accurintSearch.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/demo.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/demo2.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/sprites.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/menus_alerts.css" rel="stylesheet" type="text/css">
    <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">

    <script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/forgotpassword.js"></script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
    <script>
    var $j = jQuery.noConflict();
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
      function check_vals() {
          var f = document.forms[0];
          var cnt=0; var cnt2=0;
          var qob = new Object();

          if(f.SECURITY_Q1){ qob[f.SECURITY_Q1.value] =1; cnt++; }
          if(f.SECURITY_Q2){ qob[f.SECURITY_Q2.value] =1; cnt++; }
          if(f.SECURITY_Q3){ qob[f.SECURITY_Q3.value] =1; cnt++; }
          if(f.SECURITY_Q4){ qob[f.SECURITY_Q4.value] =1; cnt++; }
          for(var i in qob){cnt2++;}

          if(cnt2 != cnt){
              alert("You have selected the same security question twice. Please select a different security question");
          return false;
          }

          if (f.LOGINID && !/^[A-Za-z0-9]+[ ]?[\w.@-]+$/.test(f.LOGINID.value)) {
              alert ("Please enter a valid Login ID");
              f.LOGINID.focus();
              return false;
          }

          if (f.SECURITY_A && !f.SECURITY_A.value) {
              alert("Please provide an answer to your security question.");
              return false;
          }
          if (f.SECURITY_A1 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A1.value)) || (f.SECURITY_A1.value.length < 3))) {
              alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
              f.SECURITY_A1.focus();
              return false;
          }
          if (f.SECURITY_A2 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A2.value)) || (f.SECURITY_A2.value.length < 3))) {
              alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
              f.SECURITY_A2.focus();
              return false;
          }
          if (f.SECURITY_A3 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A3.value)) || (f.SECURITY_A3.value.length < 3))) {
              alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
              f.SECURITY_A3.focus();
              return false;
          }
          if (f.SECURITY_A4 && ((!/^[a-zA-Z0-9 ]+$/.test(f.SECURITY_A4.value)) || (f.SECURITY_A4.value.length < 3))) {
              alert ("Please enter a valid answer, at least 3 characters, alphanumeric only.");
              f.SECURITY_A4.focus();
              return false;
          }


          send_event('PRELOGIN/SAVE_REGISTER')

      }

      function trim(s)
      {
          return s.replace(/^\s*|\s*$/g, '')
      }      
    </script>
    <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script> 
 
  </head>

  <body onload="setup_img_token();set_focus()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
    <div class="topBarCon">
        <div class="topBarConMiddle" style="margin-left:5px;">
            <div class="left">
                <ul>
                <TMPL_IF GOV>
                    <li class="ln-logo ln-logo-gov"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF LE>
                    <li class="ln-logo ln-logo-le"><div>&nbsp;</div></li>
                </TMPL_IF>
                <TMPL_IF HEA>
                    <li class="ln-logo ln-logo-hea"><div>&nbsp;</div></li>
                </TMPL_IF>
                </ul>
            </div>
			<div class="right">
			<ul id="support-links">
			  <li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
			  <li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
			  <li>1-866-277-8407</li>
			  
			  <TMPL_IF MOBILE_ONLY_USER>
			    <li><a href="javascript:send_event('LOGOUT');">Sign Out</a></li>
			  <TMPL_ELSE>
			  <TMPL_IF NON_BILLABLE_SYSTEM_ADMIN>
			    <li><a href="javascript:send_event('LOGOUT');">Sign Out</a></li>
			  <TMPL_ELSE>
			  </TMPL_IF>
			  </TMPL_IF>

			</ul>
			</div>
        </div>
    </div>


    <form name="FORGOT_PASSWORD" action="<TMPL_VAR NAME=ACTION_OTHER>" method="post">
      <TMPL_INCLUDE NAME="common_hidden_input.tpl">
      <input type="hidden" name="EVENT" value='<TMPL_VAR NAME=EVENT>'>
      <input type="hidden" name="APPLICATION_TYPE" value='<TMPL_VAR NAME=APPLICATION_TYPE>'>
   
      <div align="center">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td align="center" valign="top">

