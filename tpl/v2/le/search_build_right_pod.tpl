<!-- Begin search_build_right_pod.tpl -->

<div id="rtcolTabsContainer">
  <ul id="rtcolTabs">
    <li class="active" id="li_announcements"><a onClick="show_ann();">Announcements</a></li>
    <li class="inactive" id="li_myAccount"><a onClick="show_ma();">My Account</a></li>
  </ul>
</div>

<div id="rtcolContent">
    <TMPL_INCLUDE NAME="search_inputs_banners.tpl">
    <TMPL_INCLUDE NAME="search_inputs_myaccount_menu_new.tpl">
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>
function show_ma() {
    $('li_announcements').className = 'inactive';
    $('rpAnnouncements').style.display = 'none';
    $('li_myAccount').className = 'active';
    $('rpMyAccount').style.display = 'block';
}

function show_ann() {
    $('li_announcements').className = 'active';
    $('rpAnnouncements').style.display = 'block';
    $('li_myAccount').className = 'inactive';
    $('rpMyAccount').style.display = 'none';
}
</script>

<TMPL_INCLUDE NAME="security_tips_legov.tpl">

<div id="rtcolTabsContainer">
  <ul id="rtcolTabs">
    <li class="active"><a style="color:#0066cc;" href="javascript:void(0);" onMouseOver="set_tip('tip_rem','<div style=\'width: 215px\'><br/><center><img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'>&nbsp; &nbsp; <b>SECURITY REMINDER</b>&nbsp; &nbsp; <img src=\'<TMPL_VAR NAME=IMGPATH>/main/security_lock.gif\' border=\'0\'></center><br />If your last login session was not on <b><TMPL_VAR NAME=LAST_LOGIN_DATE></b>, please contact your system administrator.<br /><br /></div>',event,'relative');setOpacity('tip_rem',0);fadeIn('tip_rem',100,2);this.style.cursor='pointer';" onMouseOut="close_tip('tip_rem');">Security Reminder</a></li>
  </ul>
</div>
<div id="rtcolContent">
<div style="width: 215px; font-size: 8pt"><b>Today is:</b> <TMPL_VAR NAME=CURRENT_DATE><br><br>
<b>You last signed in on:</b> <a class="adver" href="javascript:show_post_popup('MYACCOUNT/SHOW_PREFERENCES','MyAccountWin','','',1,1,1,1,1,0);"><TMPL_VAR NAME=LAST_LOGIN_DATE></a><br><br>
<ul style="font-size: 8pt">
    <li style="font-size: 8pt"><a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">Security Center</a>&nbsp;<font color="#ed1c24"><i>Updated</i></font></li>
    <li style="font-size: 8pt"><a href="javascript:void(0)" onClick="show_legov_tips();" title="Show Security Tips">Security Tips</a>&nbsp;<font color="#ed1c24"><b>NEW!</b></font></li>
</ul>
</div>
</div>
<div id="rtcolContentBot"></div>
<div id="clear"></div>

<TMPL_UNLESS NAME="SEARCH_ERROR_MESSAGE">
<TMPL_UNLESS NAME="RESULTS">
    <style type="text/css">
    .successstory A:hover {text-decoration: underline;}
    </style>

    <div id="containerRight">
      <div style="background-image:url(<TMPL_VAR NAME=IMGPATH>/success_story.gif);background-repeat:no-repeat;width:230px;height:90px;float:left;margin-top:10px;margin-bottom:10px;">
        <div style="width:220px;margin-left:10px;margin-top:28px;font-size:8pt;">
        We strive to help agencies achieve their goals.&nbsp; If you have a success story, we encourage you to share it with us <span class="successstory"><a href="javascript:show_post_popup('MYACCOUNT/SHOW_SHARE_SUCCESS_EMAIL','ShareSuccess',450,500);">by clicking here!</a></span>
        </div>
      </div>
    </div>
</TMPL_UNLESS>
</TMPL_UNLESS>

<!-- End search_build_right_pod.tpl -->

