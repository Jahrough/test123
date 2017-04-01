<!-- begin admin_header.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
  <tr valign="top">
    <!-- Stretching Begins Here -->
    <td width="100%" valign="bottom" align="right" class="unifont1">
    <table border="0" cellpadding="0" cellspacing="0" width="100%" background="<TMPL_VAR NAME=IMGPATH>/stretchbar2.gif">
      <tr>
        <td><img width="1" height="18" border="0" src="<TMPL_VAR NAME=IMGPATH>/spacer.gif"></td>
	<td class="smallfont1" nowrap style="color:yellow"><font size="-1">[ </font><TMPL_IF NAME="BATCHMANAGE_SHOW_ACTIVE_FTPJOBS"><b>Active FTP Jobs</b><TMPL_ELSE><a href="javascript:send_event('BATCHMANAGE/SHOW_ACTIVE_FTPJOBS')" style="color:yellow">Active FTP Jobs</a></TMPL_IF> <font size="-1">|</font>
	<TMPL_IF NAME="BATCHMANAGE_SHOW_ACTIVE_ONLINEJOBS"><b>Active Online Jobs</b><TMPL_ELSE><a href="javascript:send_event('BATCHMANAGE/SHOW_ACTIVE_ONLINEJOBS')" style="color:yellow">Active Online Jobs</a> </TMPL_IF><font size="-1"> | </font>
	<TMPL_IF NAME="BATCHMANAGE_SEARCH_FTPJOBS"><b>Search FTP Jobs</b><TMPL_ELSE><a href="javascript:send_event('BATCHMANAGE/SEARCH_FTPJOBS')" style="color:yellow">Search FTP Jobs</a> </TMPL_IF><font size="-1"> | </font>
	<TMPL_IF NAME="BATCHMANAGE_SEARCH_ONLINEJOBS"><b>Search Online Jobs</b><TMPL_ELSE><a href="javascript:send_event('BATCHMANAGE/SEARCH_ONLINEJOBS')" style="color:yellow">Search Online Jobs</a> </TMPL_IF><font size="-1"> ]</font></td>
      </tr>
    </table>
    </td>
    <!-- End Stretching -->
    <td valign="bottom"><a href="javascript:void(0);" onClick="self.onerror = function() {window.close(); return true;}; if (opener) {if (!opener.closed){opener.focus()}}; window.close();" onMouseOver="close.src='<TMPL_VAR NAME=IMGPATH>/search_corner_close_over.gif';" onMouseOut="close.src='<TMPL_VAR NAME=IMGPATH>/search_corner_close.gif';"><img border="0" width="60" height="30" name="close" src="<TMPL_VAR NAME=IMGPATH>/search_corner_close.gif"></a></td>
  </tr>
</table>

<!-- end admin_header.tpl -->
