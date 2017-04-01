<!-- begin main_menu_dates.tpl -->
    <td valign="top" align="right">
    <TMPL_UNLESS NAME="LITE_APP">
    <script src="<TMPL_VAR NAME='JSPATH'>/overlibmws.js"></script>
    <div id="overDiv" style="position:absolute; visibility:hidden; z-index:1000;"></div>
    <img alt="" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif" border="0" height="10" width="1"><br>
    </TMPL_UNLESS>
    <table border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td class="smallfont1white" nowrap>Today is <b><TMPL_VAR NAME=CURRENT_DATE></b>.</td>
      </tr>
      <TMPL_UNLESS SAML_LOGIN>    
      <tr>
        <TMPL_UNLESS NAME="LITE_APP">
	<td class="smallfont1white" nowrap>You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);" onMouseOver="return overlib('<center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'></center><br>If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br><br>', STATUS, 'SECURITY REMINDER', TEXTPADDING, 10, FGCOLOR, '#e3e5e8', TEXTFONTCLASS, 'smallfont1', BASE, 2, HAUTO, WIDTH, 250);" onMouseOut="nd();"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>.&nbsp; &nbsp; </td>
	<TMPL_ELSE>
	<td class="smallfont1white" nowrap>You last signed in on <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a>.&nbsp; &nbsp; </td>
	</TMPL_UNLESS>
      </tr>
     </TMPL_UNLESS>    
    </table>
    </td>
<!-- end main_menu_dates.tpl -->
