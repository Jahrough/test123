
<html>
<head>
<title>Help Menu</title>
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/main_menu.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=SKIN_TYPE>/skin.css" rel="stylesheet" type="text/css">
<style type="text/css">
.style1 {
    font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
}
</style>
<script src="<TMPL_VAR NAME='JSPATH'>/common.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/shared.js"></script>
<script src="<TMPL_VAR NAME='JSPATH'>/please_wait.js"></script>

<script>

function set_flash_file () {
    document.HELP_OPTION.HELP_NAME.value = opener.help_flash_file;
    // alert(document.HELP_OPTION.HELP_NAME.value);
}

function open_flash_help () {
    window.moveTo (0,0);
    if (document.all) {
	top.window.resizeTo (screen.availWidth, screen.availHeight);
    } else if (document.layers||document.getElementById) {
	if (top.window.outerHeight < screen.availHeight || top.window.outerWidth < screen.availWidth) {
	    top.window.outerHeight = screen.availHeight;
	    top.window.outerWidth = screen.availWidth;
	}
    }
    showpw();
    submit_form(document.HELP_OPTION);
}
    

</script>

</head>

<body onLoad="window.focus();set_flash_file();" topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

<div id="pleasewait" style="position:absolute; visibility:hidden; z-index:1000;"><img src="<TMPL_VAR NAME=IMGPATH>/arrows_wait_full.gif" id="pw" name="pw" width="400" height="120" border="0"></div>

<form name="HELP_OPTION" action="<TMPL_VAR NAME=ACTION_MISC>" method="post">
  <TMPL_INCLUDE NAME=common_hidden_input.tpl>
  <INPUT type=hidden NAME="EVENT" VALUE="MISC/SHOW_FLASH_HELP">
  <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
  <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
  <INPUT type=hidden NAME="HELP_NAME" VALUE="">


<div id="mainbody" align="center">

<table border="0" cellpadding="0" cellspacing="0" width="100%" background="<TMPL_VAR NAME=IMGPATH>/eLearning_need_help_sliver.gif">
  <tr>
    <td align="center"><img src="<TMPL_VAR NAME=IMGPATH>/eLearning_need_help_admin.gif" width="336" height="50" border="0"></td>
  </tr>
</table>

<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td>
  <p class="style1"><br><br><span class="style1"><a href="javascript:open_flash_help();"><b>eLearning Tutorial (see minimum system requirements below)</b></a></span></p>
<blockquote>
    <p class="style1">eLearning Minimum System Requirements:</p>
    <ul>
      <li><span class="style1"><a href="http://www.adobe.com/support/flashplayer/" target="_blank"><b>Macromedia Flash Player (Click To Download)</b></a></span>
        <ul>
          <li><span class="style1">SystemWindows </span>
            <ul>
              <li class="style1"> Intel&reg; Pentium&reg; II 450MHz or faster processor (or equivalent)</li>
              <li class="style1"> 128MB of RAM</li>
            </ul>
          </li>
          <li><span class="style1">Macintosh
            </span>
            <ul>
              <li class="style1"> PowerPC&reg; G3 500MHz or faster processor</li>
              <li class="style1"> Intel Core&trade; Duo 1.83GHz or faster processor</li>
              <li class="style1"> 128MB of RAM</li>
            </ul>
          </li>
          <li><span class="style1">Linux
            </span>
            <ul>
              <li class="style1"> Modern processor (800MHz or faster)</li>
              <li class="style1"> 512MB of RAM, 128MB of Graphics Memory</li>
            </ul>
          </li>
        </ul>
      </li>
      <li class="style1"><a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank"><b>Adobe Acrobat Reader (Click To Download)</b></a></li>
    </ul>
 </blockquote>
  <p class="style1">For technical assistance, call 1-866-277-8407.</p>
    </td>
  </tr>
</table>

</div>

</form>

</div>

</body>
</html>
