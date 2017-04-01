<html>
<head>
<title>Help Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_VAR NAME=USER_THEME>.css" rel="stylesheet" type="text/css">

<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>

<script Language="JavaScript">
var help_path = '<TMPL_VAR NAME=HLPPATH>'
function open_help(help_url) {
    general_win(help_path + '/' + help_url,'HelpWindow',780,490,1,1,1,1,1,0);
}
</script>
</head>

<body onLoad="window.focus();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="hd">
<h2><a trackid="hdr_top_logo">LexisNexis Accurint for Collections</a></h2>
</div>


<form name="MAIN_HELP" action="<TMPL_VAR NAME=ACTION>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="">
  <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">

<table border="0" cellpadding="0" cellspacing="0" width="100%" class="mainmenuheaderbk">
  <tr>
    <td align="center" class="unifont12white"><b>HELP MENU</b></td>
  </tr>
</table>

<br>

<center>

<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td valign="top">

    <table border="0" cellpadding="0" cellspacing="0" width="117" height="50">
      <tr>
        <td valign="top">
        <table border="0" cellpadding="0" cellspacing="0" width="117">
          <tr class="people" style="height: 30px;">
            <td rowspan="3" class="unifont2">&nbsp;</td>
            <td align="center" valign="middle" class="unifont12white"><b>people</b></td>
            <td rowspan="3" class="unifont2">&nbsp;</td>
          </tr>
          <tr>
            <td bgcolor="white" valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="0" width="117">
              <tr>
                <td valign="top" align="left">
                <table border="0" cellpadding="0" cellspacing="5" width="117">
                  <tr>
                    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('loc/person_help.html','PersonSearch');">Find a Person</a></td>
                  </tr>
                </table>
                </td>
              </tr>
            </table>
            </td>
          </tr>
          <tr class="people" style="height: 15px;">
            <td class="unifont2" colspan="3">&nbsp;</td>
          </tr>
        </table>
        </td>
      </tr>
      <tr style="height: 10px;">
        <td class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td valign="top">

	</td>
      </tr>
    </table>
    </td>


    <td valign="top">
	<table border="0" cellpadding="0" cellspacing="0" width="117">
	  <tr class="da" style="height: 30px;">
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	    <td align="center" valign="middle" class="unifont12white"><b>phones</b></td>
	    <td rowspan="3" class="unifont2">&nbsp;</td>
	  </tr>
	  <tr>
	    <td bgcolor="white" valign="top" align="left">
	    <table border="0" cellpadding="0" cellspacing="0" width="117">
	      <tr>
	        <td valign="top" align="left">
		<table border="0" cellpadding="0" cellspacing="5" width="117">
		  <tr>
		    <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
		    <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('loc/phone_help.html','Phones_Basic');">Find a Phone</a></td>
		  </tr>
		</table>
		</td>
	      </tr>
	    </table>
	    </td>
	  </tr>
	  <tr class="da" style="height: 15px;">
	    <td class="unifont2" colspan="3">&nbsp;</td>
	  </tr>
	</table>
    </td>


    <td valign="top">
    <table border="0" cellpadding="0" cellspacing="0" width="117">
      <tr class="business" style="height: 30px;">
        <td rowspan="3" class="unifont2">&nbsp;</td>
        <td align="center" valign="middle" class="unifont12white"><b>business</b></td>
        <td rowspan="3" class="unifont2">&nbsp;</td>
      </tr>
      <tr>
        <td bgcolor="white" valign="top" align="left">
        <table border="0" cellpadding="0" cellspacing="0" width="117">
          <tr>
            <td valign="top" align="left">
            <table border="0" cellpadding="0" cellspacing="5" width="117">
              <tr>
                <td width="4" valign="top" align="right" class="smallfont1">&#149;</td>
                <td valign="top" align="left" width="97" class="smallfont1"><a class="mainmenu" href="javascript:open_help('loc/business_help.html','BusinessSearch');">Find a Business</a></td>
              </tr>
            </table>
            </td>
          </tr>
        </table>
        </td>
      </tr>
      <tr class="business" style="height: 15px;">
        <td class="unifont2" colspan="3">&nbsp;</td>
      </tr>
    </table>
    </td>


      </tr>

    </table>
    </td>


  </tr>
</table>
</center>
</form>
</body>
</html>

