<!-- begin manage/recent_searches_all.tpl -->
<!--<TMPL_VAR NAME=SERVER_ID>-->
<html><head>
<title>Recent Search History</title>
<link href="<tmpl_var csspath>/accurint.css" rel="stylesheet" type="text/css">
<link href="<tmpl_var csspath>/<tmpl_var application_type>/diff.css" rel="stylesheet" type="text/css">
<link href="<TMPL_VAR NAME='CSSPATH'>/<TMPL_VAR NAME=APPLICATION_TYPE>/<TMPL_IF NAME="FCRA_MODE">2<TMPL_ELSE><TMPL_VAR NAME=USER_THEME></TMPL_IF>.css" rel="stylesheet" type="text/css">

<script src="<tmpl_var name='jspath'>/common.js"></script>
<script src="<tmpl_var name='jspath'>/shared.js"></script>
<script src="<tmpl_var name='jspath'>/search_javascript.js"></script>
<script src="<tmpl_var name='jspath'>/v2/manage_acc.js"></script>
<script src="<tmpl_var name='JSPATH'>/prototype.js"></script>

<script>
  var glb_dp = <tmpl_var glbdp> || 0;
function submit_evt(evt,dir)
{
    document.forms[0].EVENT.value = evt;
    if (document.forms[0].DIRECTION) {
        if (dir === "next" || dir === "prev") {
            document.forms[0].DIRECTION.value = dir;
        }
    }
    document.forms[0].submit();   
}
</script>
<script src="<tmpl_var name='jspath'>/v2/tablesort.js"></script>
</head>
<body>

<tmpl_include name="ma_header.tpl">

<div id="wrapper">

<div id="recentSearchResults" style="padding-left:0px;">
<span class="smallgray" style="float:right"><a href="javascript:submit_evt('<TMPL_IF FCRA_MODE>MYACCOUNT/SHOW_ALL_RECENT_FCRA<TMPL_ELSE>MYACCOUNT/SHOW_ALL_RECENT</TMPL_IF>');">Refresh this Page</a> | <a href="javascript:window.print();">Print</a> </span>
	<h2>Recent Searches</h2>
  </div>
 <div id="clear"></div>
 <p class="smallgray" style="padding-left:15px;">Click column header to sort history - Last <TMPL_IF FCOL>30 Days.<TMPL_ELSE>24 Hours.</TMPL_IF></p>
<br />
<TMPL_IF FCOL>
<TMPL_IF PAGE_TOTAL>
<div style="clear:both; margin-right: 22px;">
<span class="smallgray" style="float:right; font-size: 9px;">
<TMPL_IF PREV_ON>
<a href="javascript:submit_evt('<TMPL_IF FCRA_MODE>MYACCOUNT/SHOW_ALL_RECENT_FCRA<TMPL_ELSE>MYACCOUNT/SHOW_ALL_RECENT</TMPL_IF>','prev');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_left_arro.gif" alt="Previous" border="0" height="8" width="6"></a>
</TMPL_IF>
Result Page:&nbsp; <TMPL_VAR NAME="PAGE_COUNT"> of <TMPL_VAR NAME="PAGE_TOTAL">
<TMPL_IF NEXT_ON>
<a href="javascript:submit_evt('<TMPL_IF FCRA_MODE>MYACCOUNT/SHOW_ALL_RECENT_FCRA<TMPL_ELSE>MYACCOUNT/SHOW_ALL_RECENT</TMPL_IF>','next');"><img src="<TMPL_VAR NAME=IMGPATH>/ico_right_arro.gif" alt="Next" border="0" height="8" width="6"></a>
</TMPL_IF>
<br>
</span>
</div>
<br />
</TMPL_IF>
</TMPL_IF>


<div id="clear"></div>
<form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
    <TMPL_INCLUDE NAME="common_hidden_input.tpl">
    <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
    <input type="hidden" NAME="IM_A_REPORT" VALUE="1">
    <input type="hidden" name="EVENT" value="">
    <input type="hidden" name="APPLICATION_TYPE" value="<tmpl_var application>">
    <TMPL_IF FCOL>
    <input type="hidden" name="PAGE_TOTAL" value="<TMPL_VAR NAME=PAGE_TOTAL>">
    <input type="hidden" name="PAGE_COUNT" value="<TMPL_VAR NAME=PAGE_COUNT>">
    <input type="hidden" name="PAGE_RECORDS" value="<TMPL_VAR NAME=PAGE_RECORDS>">
    <input type="hidden" name="NEXT_PAGE_DATE" value="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
    <input type="hidden" name="PREV_PAGE_DATE" value="<TMPL_VAR NAME=PREV_PAGE_DATE>">
    <input type="hidden" name="date_select" value="date_recent">
    <input type="hidden" name="DATE_RECENT" value="prev_month">
    <input type="hidden" name="DIRECTION" value="">
    </TMPL_IF>
     
<table width="96%" cellpadding="3" cellspacing="0" id="searchPop" class="sortable">
<tr id="searchPopHdr">
    <td><a href="#" onclick="javascript:sort_all_searches(1);" >Input Criteria</a></td>       <td>&nbsp;</td>
    <td><a href="#" onclick="javascript:sort_all_searches(3);">Activity/Search Form</a></td>  <td>&nbsp;</td>
    <td><a href="#" onclick="javascript:sort_all_searches(5);">Date/Time (EST)</td></a>       <td>&nbsp;</td>
    <td><a href="#" onclick="javascript:sort_all_searches(7);" >Reference Code</a></td> 

</tr>
<tbody>
<tmpl_if rcs_loop>
<tmpl_loop rcs_loop>
   
     <tr <tmpl_if clr>class="<tmpl_var clr>"</tmpl_if> >
     <td><tmpl_var crit></td>   <td>&nbsp;</td>
     
     <td><tmpl_var type><br />
     <tmpl_unless am_report> 
     <tmpl_unless no_link>
     <span class="smallgray"><a href="javascript:rerun_search(<tmpl_var keynum>,0);">Rerun Search</a></span> <tmpl_if dtype><span class="smallgray">|</span> <span class="smallgray"><a href="javascript:rerun_search(<tmpl_var keynum>,'<tmpl_var dtype>');">Other Searches</a></span></tmpl_if>
     </tmpl_unless>
     </tmpl_unless>
     </td>
     <td>&nbsp;</td>


     <td><tmpl_var date></td> <td>&nbsp;</td>

     <td><tmpl_var refcode></td>
     </tr>
     <input type='hidden' name='KEY_VALUES' value="<tmpl_var key>"> 					      
</tmpl_loop>

<tmpl_else>

   <tr><td class="bgBlue" colspan="8" align="center"><br /><br />No Activity in the last <TMPL_IF FCOL>30 days<TMPL_ELSE>24 hours</TMPL_IF>.<br /><br /></td></tr>

</tmpl_if>

</tbody>
</table>

<p>&nbsp;</p>
<p class="smallgray2" style="padding-left:15px; padding-right:20px;">The selection of a recent search  will be subject to your currently selected permissible purposes certified to at login of this session pursuant to the Gramm-Leach-Bliley Act (15 U.S.C. § 6801 et seq.) and its implementing regulations and the Driver’s Privacy Protection Act (18 U.S.C. § 2721 et seq.) and related state laws.</p>
</div>
<p>&nbsp;</p>  
<p align="center"><a href="javascript:window.close();"><img src="<TMPL_VAR NAME=IMGPATH>/btnCloseWin.gif" alt="Close Window" name="submit_close" width="84" height="17" border="0" id="submit_close" /></a></p>
<div id="clear"></div>

<TMPL_INCLUDE NAME="../lexisnexis_footer.tpl">
</form>
<form name="SEARCH"></form>
</body></html>
