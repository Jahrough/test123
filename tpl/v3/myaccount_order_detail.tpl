<html>
  <head>
    <title>My Account -- Court Search Order Detail</title>
  <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/please_wait.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/shared.js"></script>
  <script type="text/javascript" src="<TMPL_VAR JSPATH>/common.js"></script>
  <script src="<TMPL_VAR NAME='JSPATH'>/order_mgr.js"></script>
  <script type="text/javascript">
    var vertical = '<TMPL_VAR NAME=APPLICATION_TYPE>';
    function open_help() {
	  if (vertical == 'gov' || vertical == 'le') {
		  window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx?portal=gov");
	  } else {
		  window.open ("https://learn.lexisnexis.com/lexisnexis/user_home.aspx");
	  }
    }
    function open_help_html(help_url,help_win) {
	  general_win('<TMPL_VAR NAME=HLPPATH>/' + help_url,help_win,780,490,1,1,1,1,1,0);
    }
    function myaccount_event(param1,param2) { // IE 6 Needs
	  if (param2) {
  	  setTimeout(function(){send_event(param1,param2)},250);
	  } else {
	  setTimeout(function(){send_event(param1)},250);
	  }
	  showpw();
    }
  </script>
  <link href="<TMPL_VAR NAME='CSSPATH'>/myaccount.css" rel="stylesheet" type="text/css">
  <link href="<TMPL_VAR NAME='CSSPATH'>/base.css" rel="stylesheet" type="text/css">
  </head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" bgcolor="#ffffff">
  <div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;">
    <img src="<TMPL_VAR IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400"
     height="120" border="0">
  </div>
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
				<TMPL_UNLESS IRS>
					<TMPL_UNLESS IRB>
						<ul id="support-links">
							<li><a target="_blank" href="https://accurint.custhelp.com/cgi-bin/accurint.cfg/php/enduser/chat.php">Live Chat</a></li>
							<li><a href="javascript:void(0);" onclick="javascript:open_help();">Help?</a></li>
							<li>1-866-277-8407</li>
							<li>
								<TMPL_UNLESS SHOW_MYACC_WITHOUT_PARENT>
									<a href="javascript:void(0);" onClick="self.onerror = function() {<TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS> return true;}; if (opener) {if (!opener.closed){opener.focus()}}; <TMPL_UNLESS NON_BILLABLE_SYSTEM_ADMIN>window.close();<TMPL_ELSE>javascript:send_event('LOGOUT');</TMPL_UNLESS>">Close</a>
								</TMPL_UNLESS>                        
							</li>
						</ul>
					</TMPL_UNLESS>
				</TMPL_UNLESS>
			</div>
        </div>
    </div>
    
    <div align="center">
      <table>
        <tr>
          <td align="center" valign="top">
              <div class="txtWrapper">
                <div id="txtCon">
					<div class="myaccount-section-title w60pc">Court Search Order Detail<div align="right" valign="top"><a class="btn red-btn" href="javascript:parent.close();">Close</a></div></div>
					  <form name="MYACCOUNT_ORDER_MGR" action="<TMPL_VAR NAME=ACTION>" method="post">
					  <TMPL_INCLUDE NAME="common_hidden_input.tpl">
					  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
					  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
					  <INPUT type=hidden NAME="EVENT">
						<TMPL_IF NAME="MYACCOUNT_ORDER_MGR">
						<br />
						<table>
							<tr>
								<td align="center">
									<TMPL_INCLUDE NAME="myaccount_order_info.tpl">
								</td>
							</tr>
						</table>
						</TMPL_IF>
                    </form>
                </div>
            </div>
          </td>
        </tr>
      </table>
    </div>
    <TMPL_INCLUDE NAME="classic_footer.tpl">
  </body>
</html>
