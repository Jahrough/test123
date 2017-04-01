<!-- Start Recent Searches section -->

<div id="rtcolTabsContainer">
<ul id="rtcolTabs">
    <li class="active"><a>My Account</a></li>
</ul>
</div>

<div id="rtcolContent">
    <TMPL_INCLUDE NAME="search_inputs_myaccount_menu_new.tpl">
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>
$('rpMyAccount').style.display = 'block';
</script>


<div id="rtcolTabsContainer">
<ul id="rtcolTabs">
    <li class="fc_nfc_active" id="li_recentSearch"><a>NON-FCRA Recent</a></li>
</ul>
</div>

<div id="rtcolContent">
    <TMPL_INCLUDE NAME="search_inputs_recent_searches_new.tpl">
</div>

<div id="rtcolContentBot"></div>
<div id="clear"></div>

<script>

function show_rs()
{
	$('li_recentSearch').className = 'fc_nfc_active';
	$('nonFcraRecentSearch').style.display = 'block';
	
	// hide next two if non-fcra
        /*
	$('li_fcra_recentSearch').className = 'fc_nfc_inactive';
	$('fcraRecentSearch').style.display = 'none';
        */
}
<TMPL_IF NAME="FCRA_MODE">
show_fcra_rs();
<TMPL_ELSE>
show_rs();
</TMPL_IF>

// hide show_fcra_rs() function below if non-fcra as well as two lines below it.
function show_fcra_rs()
{
	$('li_recentSearch').className = 'fc_nfc_inactive';
	$('nonFcraRecentSearch').style.display = 'none';
	$('li_fcra_recentSearch').className = 'fc_nfc_active';
	$('fcraRecentSearch').style.display = 'block';
}
if ($('li_recentSearch')) { $('li_recentSearch').observe('click', show_rs); }
if ($('li_fcra_recentSearch')) { $('li_fcra_recentSearch').observe('click', show_fcra_rs); }

</script>

<TMPL_UNLESS HIDE_SECURITY_NEWS_POD>
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
</TMPL_UNLESS>

