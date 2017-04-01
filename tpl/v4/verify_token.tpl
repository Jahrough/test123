<!DOCTYPE html>
<html lang="en">
<head>
<!-- begin v4/verify_token..tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<TMPL_INCLUDE NAME="includes.tpl">


  <body onload="setup_token()" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
  
                <header>
                        <h1>
                            <TMPL_IF AML>
                                <img src="<tmpl_var name=IMGPATH>/LN-AML-Insight.png" alt="LexisNexis&copy; AML Insight&trade;"/>
                            <TMPL_ELSE>
                                <img src="<tmpl_var name=IMGPATH>/LN-RSKM.png" alt="LexisNexis&copy; Risk Management Solutions&reg;"/>
                            </TMPL_IF>
                        </h1>
                </header>

  <div id="main" class="clear">

  <div id="wrapper">

  <table id="use_table">
    <tr>
      <td>

        <form name="verify_token" action="<TMPL_VAR ACTION_MISC>" method="POST" onsubmit="return send_token()">
            <script id="verify_token_script" type="text/javascript">
                var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
                function setup_token()
                {
                    document.images['tokenimg'].src = '/app/bps/token?' + Math.random();
                    document['verify_token']._T.focus();
                }

                function parse_key_values(delim_string,delim)
                {
                    var arr = new Array();
                    var record_index = new Array();
                    arr = delim_string.split(delim);
                    for (var i=0; i < arr.length; i+=2) {
                        record_index[arr[i]] = arr[i+1];
                    }
                    return record_index;
                }

                function parse_cookie(CookieName)
                {
                    var CookieString = document.cookie;
                    var CookieSet = CookieString.split (';');
                    var SetSize = CookieSet.length;
                    var CookiePieces;
                    var ReturnValue = "";
                    var x = 0;

                    for (x = 0; (x < SetSize); x++) {
                        CookiePieces = CookieSet[x].split ('=');
                        if (CookiePieces[0].substring (0,1) == ' ') {
                            CookiePieces[0] = CookiePieces[0].substring (1, CookiePieces[0].length);
                        }
                        if ((CookiePieces[0]) == (CookieName)) {
                            ReturnValue = unescape(CookiePieces[1]);
                        }
                    }
                    var cookie_values =  parse_key_values(ReturnValue,'|');
                    return cookie_values;
                }
                function send_token()
                {
                    token_info = parse_cookie('token');
                    if (token_info['_ST']) {
                        document['verify_token']._ST.value = token_info['_ST'];
                    }
                    if (token_info['_SK']) {
                        document['verify_token']._SK.value = token_info['_SK'];
                    }
                    if (token_info['_K']) {
                        document['verify_token']._K.value = token_info['_K'];
                    }
                    return true;
                }

                function alert_win(page,wh,ww) {
                    if (!wh) var wh = 325;
                    if (!ww) var ww = 350;
                    var winleft = (screen.width - ww) / 2;
                    var wintop = ((screen.height - wh) / 2) - 60;
                    var winproperties = 'height='+wh+',width='+ww+',top='+wintop+',left='+winleft+',scrollbars=1,resizable=1';
                    alertwin = window.open(page,'ALERTWIN',winproperties);
                }

                // popup window for search report
                function sound_win() {
                   var df = document['verify_token'];
                   var width = 350;
                   var height = 250;
                   var wintop;
                   if (df.ACTION_SOUND) {
                      var page = df.ACTION_SOUND.value;
                        if (self.enable_lt) {
                         token_info = parse_cookie('token');
                         if (token_info['_ST']) {
                            page += "?_ST="+token_info['_ST'];
                         }
                        }

                      // set window parameters
                      var sh = (screen.height);
                      var sw = (screen.width);

                      var wh = 540;
                      wintop = ((sh - wh) / 2) - 60;

                      var ww = 700;
                      var winleft = (sw - ww) / 2;

                      ww = width;
                      var winleft = (sw - ww) / 2;
                      wh = height;

                      var winproperties = 'height='+wh+',width='+ww+',top='+wintop+',left='+winleft+',resizable=0,scrollbars=0,status=0,menubar=0,toolbar=0';
                      var SoundWin = window.open(page,'SoundWindow',winproperties);
                      if(window.focus) {
                                SoundWin.focus();
                        }
                   }
                }
                $(function(){
                    setup_token();
                });
            </script>
        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
        <input type="hidden" name="EVENT" value="LOGIN/VERIFY_TOKEN">
        <input type="hidden" name="CURRENT_EVENT" value="<TMPL_VAR NAME='CURRENT_EVENT'>">
        <input type="hidden" NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">
        <input type="hidden" name="_ST" value="">
        <input type="hidden" NAME="_K" VALUE="">
        <input type="hidden" NAME="_SK" VALUE="">

        <TMPL_IF RAPID_REQUEST>
            <br/>
            <p class="text14">An unusually high number of requests (for example, searches and paging through results) have occurred in  a short period of time.  As a result, an extra security measure has been enabled to ensure that an automated program is not interacting with this application. Automated programs cannot read the numbers you see in the box.</p>
        </TMPL_IF>

	<p class="text14">

	<br><br>

	<img name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
	<TMPL_IF SHOW_SOUND_LINK><br><br><a href="#" onClick="javascript:sound_win(); return false;"><u>Listen to Numbers</u></a></TMPL_IF>

	<br><br>

	Security Code:&nbsp; <input type="text" name="_T" size="24" autocomplete="off">

	<br><br>

	Enter the sequence of numbers displayed above.

	<br><br><br>

	<input class="btn btn-danger" type="submit" name="Continue" value="Continue" tabindex="3">

	</p>

        </form>

	</td>
    </tr>
  </table>

  </div>

  </div>

<TMPL_INCLUDE NAME="lexisnexis_footer.tpl">

</body>
</html>
<!-- end v4/verify_token..tpl -->

