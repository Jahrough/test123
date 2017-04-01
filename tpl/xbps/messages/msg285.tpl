<TMPL_INCLUDE NAME="../../messages/msg_top.tpl">

<font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3"><b>Thursday, June 9, 2011</b></font>

<TMPL_INCLUDE NAME="../../messages/msg_body.tpl">
<br>
<table border="0" cellpadding="5" cellspacing="0">
  <tr>
    <td width="16"></td>
    <td><font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3" color="#cc0033"><b>Now Here!&nbsp; A New Design for Risk Investigations!</b></font>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="2"><br><br>
    Based on your input, we have worked to make Risk Investigations easier and more intuitive to use, without eliminating any of the search functionality you're accustomed to.&nbsp; This improved design will have the following key features:
    <ul>
      <li><b>Ability to display or hide each section --</b> The new design allows you to selectively display or hide searches in each category (including Favorites).&nbsp; The headers remain visible, and you can always click on the header to re-display its searches.&nbsp; You can also show or hide all sections using the "Show All" and "Hide All" links, and can check the "Rollovers Enabled" box if you'd prefer to have searches appear as you move your cursor over each section heading.&nbsp; We even included rollover text that appears over each key heading to help you display, hide and re-display sections according to your usage preferences.
    </ul>

    <ul>
      <li><b>Improved organization of "My Favorites" --</b> This section is now more clearly separated from the general search area.&nbsp; You can easily define and access up to six of your favorite searches here.&nbsp; Just access the "My Favorites" tab (viewable when you are in the process of conducting a search) and click on the gray "add/remove tabs link" to the right to update your Favorites.
      <br><br>
      For interactive information, roll your mouse over the <b>highlighted features in yellow</b> (yellow for emphasis only in this notice) to learn more:
    </ul>


<style>
#tip_rem {
    position:absolute;
    background-color:#FCFAF5;
    /*
    width   : 240px;
    height  : 120px;
    top:     0px;
    left:    0px;
    */
    font-family:verdana;
    font-size:8pt;
    border-bottom-style:solid;
    border-top-style:solid;
    border-left-style:solid;
    border-right-style:solid;
    border-bottom-color:#cc0033;
    border-top-color:#cc0033;
    border-left-color:#cc0033;
    border-right-color:#cc0033;
    border-bottom-width:thick;
    border-top-width:thin;
    border-left-width:thin;
    border-right-width:thick;
    padding-bottom:3px;
    padding-left:10px;
    padding-right:10px;
    display : none;
    z-index:1000;
}
</style>

<script src="<TMPL_VAR NAME=JSPATH>/prototype.js"></script>
<script>
var info_tip = null;
function show_delayed_tip(tip_id,tip_content,e,tip_pos) {
    if (!info_tip) {
        var eventCopy = {};
        for (var i in e) eventCopy[i] = e[i];
        info_tip = setTimeout(function() { set_tip(tip_id,tip_content,eventCopy,tip_pos) }, 500);
    }
}

function hide_delayed_tip(tip_id) {
    if (info_tip) {
        clearTimeout(info_tip);
        info_tip = null;
        close_tip(tip_id);
    }
}
</script>

<br>

<center><img border="1" id="sampleimage" src="<TMPL_VAR NAME=IMGPATH>/xbps/v2_upcoming.gif" usemap="#sampleimage" width="800" height="559" alt=""></center>

<map id="_sampleimage" name="sampleimage">
    <area shape="rect" coords="14,238,150,258" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>People</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="162,239,298,259" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Business</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="312,239,448,259" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Licenses</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="464,238,600,258" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Courts</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="16,409,152,429" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Assets</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="164,435,300,455" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Phones</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="618,60,787,80" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>My Account</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="620,255,789,275" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br>Click to expand or collapse <b>Training & Security</b> section! <br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="11,78,459,98" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br><b>Home Page Section Controls --</b><br><br>Set behavior for all the sections on the page!<br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="10,181,604,201" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br><b>My Favorites --</b><br><br>All your favorites in one easy-to-find place.<br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
    <area shape="rect" coords="623,153,780,173" href="javascript:void(0);" onMouseOver="show_delayed_tip('tip_rem','<br><b>Preferences --</b><br><br>Preferences updated with section to select themes.<br>&nbsp;',event,'relative');" onMouseOut="hide_delayed_tip('tip_rem')">
</map>

<!--
<br>
<img src="<TMPL_VAR NAME=IMGPATH>/xbps/v2_upcoming_favorites.gif" width="800" height="559" border="0">
<br>
-->

<br><br>

    <ul>
      <li><b>Addition of new color themes --</b> Now you can choose from up to four available product color schemes.&nbsp; Select the one that offers you the best visibility or ties most closely with your organization's color scheme.&nbsp; Under "My Account", go to the updated Preferences section to review, select and confirm your favorite theme.&nbsp; Your new selection will be there each time you sign in, unless you make another change in the future.
    </ul>

<br>

<center><img src="<TMPL_VAR NAME=IMGPATH>/xbps/v2_setting_themes.gif" width="800" height="677" border="1"></center>
    
    <br>
    <br>
    We're confident you'll enjoy the flexibility and ease of use these new changes offer.&nbsp; Feel free to contact us at 1-866-277-8407 if you have any questions.

    <br><br><br>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3" color="#cc0033"><b>LexisNexis<sup>&reg;</sup> is Preparing for Social Security Number Randomization</b></font>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="2"><br><br>
    The Social Security Administration (SSA) will begin using a random approach to assign Social Security numbers (SSNs) on June 25, 2011.&nbsp; While LexisNexis does not expect this change to impact the majority of online users and usage cases, we have updated certain logic and message indicators to provide additional clarification in these cases.
    <br><br>
    SSNs which were previously noted as invalid because they did not match a published block group will now be identified as possibly randomly issued by the SSA.&nbsp; SSNs with a non-valid format (e.g., contains letters, begins with "9") or does not match a valid block group prior to June 25, 2011 will continue to be notified as invalid.
    <br><br>
    <a href="http://www.lexisnexis.com/risk/ssa" target="_blank"><u>Click here</u></a> to learn about product specific changes.
    </font>
    <br><br><br>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="3" color="#cc0033"><b>DID YOU KNOW?</b></font>
    <font face="Arial,Helvetica,Geneva,Swiss,SunSans-Regular" size="2"><br><br>
     The LexisNexis<sup>&reg;</sup> Phones Plus database contains over 279 million phone records (~181 million unique phones) not currently found in Directory Assistance.
    <br><br>
    Learn more about Risk Investigations<sup>&reg;</sup> and other LexisNexis Products:
    <br>
    Whether you are an <b>experienced user</b> who wants to learn about new product features, or a <b>new user</b> who is just learning the ropes, you can find <b>extensive training resources</b> at the LexisNexis Customer Education website - courses are <b>free</b> for LexisNexis customers.
    <br><br>
    Visit us at <a href="http://Learn.LexisNexis.com" target="_blank"><u>http://Learn.LexisNexis.com</u></a>, contact us toll-free at 800.201.6411, or email us at <a href="mailto:CustomerEducation@LexisNexis.com"><u>CustomerEducation@LexisNexis.com</u></a>.
    <br><br>
    <br><br>
    </font>
    </td>
  </tr>
</table>
<div id="tip_rem"></div>
<TMPL_INCLUDE NAME="../../messages/msg_bottom.tpl">

