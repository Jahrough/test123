<!-- BEGIN batch/instantid/new_navigation.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="100%">
	<tr valign="top">
        <td class="wizardcounter" width="70%" align="left">
          <TMPL_IF SHOW_BATCH_SERVICES><a class="mainmenu" href="javascript:show_post_popup('<TMPL_VAR MAJOR>/SERVICES','BatchServices',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Services</a> .:. </TMPL_IF>
            <a class="mainmenu" href="javascript:show_post_popup('<TMPL_VAR MAJOR>/START','BatchRerun',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><TMPL_VAR TITLE></a> .:. <b><TMPL_VAR TITLE_PAGE>
        </td>
        <TMPL_IF SHOW_BATCH_INFO_ALERT><td class="wizardcounter" width="30%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button<br>For More Detail</b></td></TMPL_IF>
	</tr>
</table>
<!-- END batch/instantid/new_navigation.tpl -->
