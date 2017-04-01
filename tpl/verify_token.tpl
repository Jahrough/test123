<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html>
  <head>
    <title>Please Verify ...</title>
    <style>
      body {
          background-color: white;
          margin: 0 0; padding: 0 0;
      }
      #outer {
	  margin: 10% auto;
	  width: 600px;
	  height: 300px;
	  overflow: hidden;
	  text-align: center;
	  border: 0px dotted red;
	  display: table;
	  position: static;
	  /* for IE */
	  _position: relative;
      }

      #middle {
	  display: table-row;
	  vertical-align: middle;
	  margin: 0 auto;
	  width: 98%;
	  border: 0px dashed green;
	  position: static;
	  /* for IE */
	  _position: absolute;
	  _top: 50%; _left: 1%;
      }

      #inner {
	  padding: 10px;
          text-align: center;
          font: 20px bold verdana,arial,sans-serif;
          border: solid 2px #336699;
          color: #003399;
	  /* for IE */
	  _position: relative;
	  _top: -50%;
      }

      table#verify_info td {
          width: 50%;
          padding: 5px;
          font: 16px bold verdana,arial,sans-serif;
      }

      .note {
          font-weight: bold;
          text-decoration: underline;
      }

      .error {
          color: red;
      }

    </style>
    <script type="text/javascript">
	var enable_lt = <TMPL_IF ENABLE_LOGIN_TOKEN>1<TMPL_ELSE>0</TMPL_IF>;
        function setup_token()
        {
            document.images['tokenimg'].src = '/app/bps/token?' + Math.random();
            document.forms[0]._T.focus();
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
		document.forms[0]._ST.value = token_info['_ST'];
	    }
	    if (token_info['_SK']) {
		document.forms[0]._SK.value = token_info['_SK'];
	    }
	    if (token_info['_K']) {
		document.forms[0]._K.value = token_info['_K'];
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
	   var df = document.forms[0];
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

    </script>
  </head>
  <body onload="setup_token()">

    <div id="outer">
      <div id="middle">
	<div id="inner">
	  <TMPL_IF ERROR_MESSAGE>
	    <p class="error"><TMPL_VAR ERROR_MESSAGE></p>
	  </TMPL_IF>

	  <form name="verify_token" action="" method="POST" onsubmit="return send_token()">

	    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
        <input type="hidden" name="EVENT" value="LOGIN/VERIFY_TOKEN">
        <input type="hidden" name="CURRENT_EVENT" value="<TMPL_VAR NAME='CURRENT_EVENT'>">
	    <input type="hidden" NAME="ACTION_SOUND" VALUE="<TMPL_VAR NAME=ACTION_SOUND>">

	    <input type="hidden" name="_ST" value="">
	    <input type="hidden" NAME="_K" VALUE="">
	    <input type="hidden" NAME="_SK" VALUE="">

	    <p class="note">Ensure the security of your account</p>

	    <table id="verify_info">
	      <tr>
	        <td align="right" width="50%">
		  <a class="verification" href="javascript:void(0);" onClick="alert_win('<TMPL_VAR NAME=HTMLPATH>/verification_popup.html',420,420);">Verification</a> characters:
		  <TMPL_IF SHOW_SOUND_LINK><br><span class="unifont1">(<a class="verification" href="javascript:void(0);" onClick="sound_win();"><b>Listen to Characters</b></a>)</span></TMPL_IF>
	        </td>
	        <td align="left">
		  <img name="tokenimg" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" width="170" height="36" alt="Enter the verification characters below:" title="Enter the verification characters below:">
	        </td>
	      </tr>
	      <tr>
	        <td align="right">
		  Please enter the above Verification Characters to proceed:
	        </td>
	        <td align="left">
		  <input type="text" name="_T" size="24" autocomplete="off">
	        </td>
	      </tr>
	    </table>

	    <p><input id="continue" type="image" name="CONTINUE" src="<TMPL_VAR NAME=IMGPATH>/continue.gif" border="0"></p>
	  </form>

	</div>
      </div>
    </div>

  </body>
</html>
