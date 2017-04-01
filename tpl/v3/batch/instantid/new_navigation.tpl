<!-- BEGIN v3/batch/instantid/new_navigation.tpl -->
<div class="xmlLinkstopBarCon">
    <div class="xmlLinkstopBarConMiddle" style="margin-left:2px;">
        <div class="left">
            <ul id="xml-links">
                <TMPL_IF SHOW_BATCH_SERVICES>
                    <li><a class="mainmenu" href="javascript:show_post_popup('<TMPL_VAR MAJOR>/SERVICES','BatchServices',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');">Batch Services</a></li>
                </TMPL_IF>
                <li><a class="mainmenu" href="javascript:show_post_popup('<TMPL_VAR MAJOR>/START','BatchRerun',800,650,0,0,0,1,1,0,'<TMPL_VAR NAME=ACTION_BATCH>');"><TMPL_VAR TITLE></a></li>
                <li><a href="javascript:open_xml('session');">XML View</a></li>
                <TMPL_IF SHOW_BATCH_INFO_ALERT><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=0 width=16 height=16 alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR NAME=IMGPATH>/closex.gif\'>');"><img src="<TMPL_VAR NAME=IMGPATH>/info.gif" border="0" width="16" height="16"></a>&nbsp;Button For More Detail</b></TMPL_IF>
            </ul>
        </div>
    </div>
</div>
<!-- END v3/batch/instantid/new_navigation.tpl -->
