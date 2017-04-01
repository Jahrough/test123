<html>
<head>
<title>Find</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/style1.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
</head>

<script language="JavaScript">

var pos = 0;
var IE4 = (document.all);
var NS4 = (document.layers);

function findit() {

    if (document.forms[0].mytext.value == '') {
        alert('Please Input Text to Search.          ');
	setpage();
        return;
    } else {
        var searchstring = document.forms[0].mytext.value;
    }

    if (IE4) {
        var found = false;
        var text = opener.document.body.createTextRange();
        for (var i = 0; i <= pos && (found = text.findText(searchstring)) != false; i++) {
            text.moveStart("character", 1);
            text.moveEnd("textedit");
        }
        if (found) {
            text.moveStart("character", -1);
            text.findText(searchstring);
            text.select();
            text.scrollIntoView();
            pos++;
        } else {
            if (pos == '0') {
                alert('"' + searchstring + '" was not found on this page.          ');
		setpage();
	    } else {
                alert('No further occurences of "' + searchstring + '" were found.          ');
		setpage();
		pos = 0;
	    }
        }
    } else {
        opener.find(searchstring,false);
    }
}

function setpage() {
    window.focus();
    document.forms[0].mytext.focus();
}

</script>

<body onLoad="setpage();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<form name="findform" onSubmit="findit();return false;">
    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
    <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="0" cellspacing="0" width="308">
  <tr>
    <td align="left"><img width="308" height="10" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
  </tr>
  <tr>
    <td align="center"><img height="48" width="261" border="0" src="<TMPL_VAR NAME=IMGPATH>/find_user_logo.gif"></td>
  </tr>
</table>

<table border="0" cellpadding="10" cellspacing="0" width="308">
  <tr>
    <td align="center">
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td colspan="3" class="myaccounttitle"><br>Input Search Criteria:<br><br></td>
      </tr>
      <tr>
        <td><input type="text" size="20" name="mytext"></td>
        <td class="unifont2">&nbsp;&nbsp;</td>
	<td><a href="javascript:findit();"><img src="<TMPL_VAR NAME=IMGPATH>/find_user.gif" border="0" height="24" width="81"></a></td>
      </tr>
    </table>
    </td>
  </tr>
  <tr>
    <td align="center"><br><a href="javascript:window.close();"><img src="<TMPL_VAR NAME=IMGPATH>/close.gif" height="29" width="54" border="0"></a></td>
  </tr>
</table>

</form>
</body>
</html>
