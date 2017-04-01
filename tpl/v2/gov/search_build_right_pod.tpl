<!-- Start Recent Searches section -->
<div id="rtcolTabsContainer">
  <ul id="rtcolTabs">
    <li class="active"><a>Announcements</a></li>
  </ul>
</div>
<div id="rtcolContent">
    <TMPL_INCLUDE NAME="search_inputs_banners.tpl">
</div>
<div id="rtcolContentBot"></div>
<div id="clear"></div>


<div id="rtcolTabsContainer">
<ul id="rtcolTabs">
  <TMPL_UNLESS BLIND>
    <TMPL_UNLESS HIDE_RECENT_SEARCHES>
      <li class="active" id="li_recentSearch"><a>Recent Searches</a></li>
    </TMPL_UNLESS>
  </TMPL_UNLESS>
    <li class="<TMPL_UNLESS BLIND>inactive<TMPL_ELSE><TMPL_UNLESS HIDE_RECENT_SEARCHES>inactive<TMPL_ELSE>active</TMPL_UNLESS></TMPL_UNLESS>" id="li_myAccount"><a>My Account</a></li>
</ul>
</div>

<div id="rtcolContent">
    <TMPL_INCLUDE NAME="search_inputs_recent_searches_new.tpl">
    <TMPL_INCLUDE NAME="search_inputs_myaccount_menu_new.tpl">
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>
<TMPL_IF BLIND>
document.getElementById('rpMyAccount').style.display = 'block';
<TMPL_ELSE>
<TMPL_IF HIDE_RECENT_SEARCHES>
document.getElementById('rpMyAccount').style.display = 'block';
<TMPL_ELSE>

if ($('li_myAccount')) { $('li_myAccount').observe('click', show_ma); }
if ($('li_recentSearch')) { $('li_recentSearch').observe('click', show_rs); }

function show_ma() {
    $('li_recentSearch').className = 'inactive';
    $('rpRecentSearch').style.display = 'none';
    $('li_myAccount').className = 'active';
    $('rpMyAccount').style.display = 'block';
}

function show_rs() {
    $('li_myAccount').className = 'inactive';
    $('rpMyAccount').style.display = 'none';
    $('li_recentSearch').className = 'active';
    $('rpRecentSearch').style.display = 'block';
}
</TMPL_IF>
</TMPL_IF>
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


