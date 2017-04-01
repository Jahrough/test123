<!-- Start Recent Searches section -->
<div id="rtcolTabsContainer">
<ul id="rtcolTabs">
  <TMPL_UNLESS BLIND>
    <li class="active" id="li_recentSearch"><a>Recent Searches</a></li>
  </TMPL_UNLESS>
    <li class="<TMPL_UNLESS BLIND>inactive<TMPL_ELSE>active</TMPL_UNLESS>" id="li_myAccount"><a>MyAccount</a></li>
</ul>
</div>

<div id="rtcolContent">
	<TMPL_INCLUDE NAME="search_inputs_recent_searches_new.tpl">

	<TMPL_IF LOC>
	    <TMPL_INCLUDE NAME="loc/search_inputs_myaccount_menu_new.tpl">
	<TMPL_ELSE>
	    <TMPL_INCLUDE NAME="search_inputs_myaccount_menu_new.tpl">
	</TMPL_IF>
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>
<TMPL_IF BLIND>
document.getElementById('rpMyAccount').style.display = 'block';
<TMPL_ELSE>
if($('li_myAccount'))
$('li_myAccount').observe('click', show_ma);

if($('li_recentSearch'))
$('li_recentSearch').observe('click', show_rs);


function show_ma()
{
	document.getElementById('li_recentSearch').className = 'inactive';
	document.getElementById('rpRecentSearch').style.display = 'none';

	document.getElementById('li_myAccount').className = 'active';
	document.getElementById('rpMyAccount').style.display = 'block';
}

function show_rs()
{
	document.getElementById('li_myAccount').className = 'inactive';
	document.getElementById('rpMyAccount').style.display = 'none';

	document.getElementById('li_recentSearch').className = 'active';
	document.getElementById('rpRecentSearch').style.display = 'block';
}
</TMPL_IF>
</script>

<div id="rtcolTabsContainer">
  <ul id="rtcolTabs">
    <li class="active"><a>Security News</a></li>
  </ul>
</div>
<div id="rtcolContent" style="font-size:8pt;">
  <div style="position:relative;top:0px;left:155px;margin-bottom:-35px;width:50px;height:49px;"><img src="<TMPL_VAR NAME=IMGPATH>/security_lock.gif" border="0" /></div>
  <b>New Security Center!</b><br>&nbsp; - <a href="javascript:void(0)" onClick="window.open('http://www.accurint.com/security_center/index.html?source=<TMPL_VAR NAME=APPLICATION_TYPE>');" title="Security Center">CLICK HERE</a>
  <br><br>
  <TMPL_INCLUDE NAME="security_tips.tpl">
</div>
<div id="rtcolContentBot"></div>
<div id="clear"></div>

