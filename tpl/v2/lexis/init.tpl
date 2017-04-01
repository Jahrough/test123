  <table id="searchResultsIcons" cellpadding="0" cellspacing="0">
  <tbody><tr>
	<TMPL_IF NAME=SHOW_RATE_THIS_PAGE>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_rate_page.gif" alt="" width="20" height="20" /></td>
    <td id="red"><a href="javascript:show_rate_this_page();"><font color="#CC3300">RATE THIS PAGE</font></a></td>
	</TMPL_IF>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_edit_search.gif" alt="" height="20" width="20" /></td>
    <td><a href="javascript: edit_search();">Edit Search</a></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_new_search.gif" alt="" height="20" width="20" /></td>
    <td><a href="javascript: new_search();">New Search</a></td>
  </tr>
</tbody>
</table>
<div id="clear"></div>

<TMPL_UNLESS NAME="TEXT_RESULT">
    <table id="searchResultsTblHeader" border="0" cellpadding="0" cellspacing="0" width="100%">
      <tr>
        <td id="HdrResultL" width="4%"></td>
         <td id="tblHdr" width="95%" colspan="2" align="left"><b><TMPL_VAR NAME="TITLE"></b></td>
        <td id="HdrResultR" width="1%">&nbsp;</td>
      </tr>
    </table>
</TMPL_UNLESS>
<table id="searchResultsTblAlt" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-bottom:15px">
     <TMPL_VAR NAME=RESULTS> 
</table>

<div id="clear"></div>
  <table id="searchResultsIcons" cellpadding="0" cellspacing="0"  style="margin-right:14px;">
  <tbody><tr>
	<TMPL_IF NAME=SHOW_RATE_THIS_PAGE>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_rate_page.gif" alt="" width="20" height="20" /></td>
    <td id="red"><a href="javascript:show_rate_this_page();"><font color="#CC3300">RATE THIS PAGE</font></a></td>
	</TMPL_IF>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_edit_search.gif" alt="" height="20" width="20" /></td>
    <td><a href="javascript: edit_search();">Edit Search</a></td>
    <td><img src="<TMPL_VAR NAME=IMGPATH>/ico_new_search.gif" alt="" height="20" width="20" /></td>
    <td><a href="javascript: new_search();">New Search</a></td>
  </tr>
</tbody>
</table>
<div id="clear"></div>

<div id="searchResults" style="margin-right:14px;">
   <span class="grey">Records: <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span>
</div>


