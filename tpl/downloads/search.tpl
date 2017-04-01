<!-- BEGIN downloads/search.tpl -->
<html>
<head>
<title>Search Download</title>

<link href="<TMPL_VAR NAME='CSSPATH'>/v2/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/v2/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script>
var browser_state;
function set_display () {
    more_than_25.style.display = (<TMPL_VAR TOTAL_RECS> > 25) ? 'inline' : 'none';
}
function get_file(evt) {
    if (window.opener != null && !window.opener.closed) {
        if (window.opener.document.forms[0].PREVIOUS_SEARCH_WAS_LOCAL_ONLY) {
            if (window.opener.document.forms[0].PREVIOUS_SEARCH_WAS_LOCAL_ONLY.value == 1) {
                document.forms[0].LOCAL_ONLY.value = 1;
            }
        }
        send_event(evt);
    } else {
        alert("The main window has been closed. For security purposes, you have been signed out.");
        window.close();
        return;
    }
    document.getElementById('loading').src = document.getElementById('loading').src;
    hide_radio.style.display = 'none';
    dl_button.style.display = 'none';
    waiting.style.display = 'inline';
    setTimeout('flip_button()',5000);
    // browser_state = (window.XMLHttpRequest && document.all) ? setInterval('check_state()',100) : setTimeout('flip_button()',5000);
}
function check_state () {
    if (document.readyState == 'complete') {
	clearInterval(browser_state);
	setTimeout('self.close()',500);
    }
}
function flip_button() {
    waiting.style.display = 'none';
    close_dl_button.style.display = 'inline';
}
</script>
</head>

<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onLoad="set_display();">

<form name="SEARCH_DOWNLOAD" action="<TMPL_VAR NAME=ACTION_DOWNLOAD>" method="post">
<TMPL_INCLUDE NAME="common_hidden_input.tpl">
<center>

<br><b>Export to Excel</b><br>

<div id="hide_radio">
<br>
<table border="0" cellpadding="2" cellspacing="0" width="250">
  <tr>
    <td class="smallblack" width="5"><INPUT TYPE="RADIO" NAME="DOWNLOAD_TYPE" VALUE="SINGLE" id="DOWNLOAD_TYPE_SINGLE" CHECKED></td>
    <td class="smallblack" width="245"><label for="DOWNLOAD_TYPE_SINGLE">EXPORT RECORDS <TMPL_VAR START> TO <TMPL_VAR END> OF <TMPL_VAR TOTAL_RECS></label></td>
  </tr>
</table>
<div id="more_than_25" style="display:none;">
<table border="0" cellpadding="2" cellspacing="0" width="250">
  <tr>
    <td class="smallblack" width="5"><INPUT TYPE="RADIO" NAME="DOWNLOAD_TYPE" VALUE="ALL" id="DOWNLOAD_TYPE_ALL"></td>
    <td class="smallblack" width="245"><label for="DOWNLOAD_TYPE_ALL">EXPORT ALL <TMPL_VAR TOTAL_RECS> RECORDS</label></td>
  </tr>
</table>
</div>
</div>

<table border="0" cellpadding="0" cellspacing="10">
  <tr>
    <td class="smallblack" colspan="2" align="center">
    
    <div id="dl_button">
      <input name="DOWNLOAD_BUTTON" type="BUTTON" value="Download" onClick="get_file('<TMPL_IF NAME=DOWNLOAD_EVENT><TMPL_VAR NAME=DOWNLOAD_EVENT>/DOWNLOAD<TMPL_ELSE>SEARCH_DOWNLOAD/DOWNLOAD</TMPL_IF>');">
    </div>
    
    <div id="waiting" style="display:none;">
      Getting Excel File...<br><br><img id="loading" src="/bps/images/loading_anim2.gif" border="0" width="128" height="15"></img><br><br>Please Wait.
    </div>

    <div id="close_dl_button" style="display:none;">
      <br><br><input name="DOWNLOAD_BUTTON" type="BUTTON" value="*** Close AFTER Receiving File ***" onClick="self.close();">
    </div>

    <br><br>
    </td>
  </tr>
</table>

<INPUT TYPE="HIDDEN" NAME="START" VALUE="<TMPL_VAR START>">
<INPUT TYPE="HIDDEN" NAME="TOTAL_RECS" VALUE="<TMPL_VAR TOTAL_RECS>">
<INPUT TYPE="HIDDEN" NAME="FORM_INDEX" VALUE="<TMPL_VAR FORM_INDEX>">
<INPUT TYPE="HIDDEN" NAME="SEARCH_TYPE" VALUE="<TMPL_VAR SEARCH_TYPE>">
<INPUT TYPE="HIDDEN" NAME="LOCAL_ONLY" VALUE="0">
<INPUT TYPE="HIDDEN" NAME="EVENT" VALUE="">
</form>
</body>
</html>
<!-- END downloads/search.tpl -->
