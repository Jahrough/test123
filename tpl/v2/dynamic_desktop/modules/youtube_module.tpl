<!-- BEGIN dynamic_desktop/youtube_module.tpl -->
    <div id="videoSearchBarDiv">
        <table cellspacing="3" border="0" width="100%">
            <tr>
                <td valign="top" align="left">
                    <table width="100%" border="0" cellpadding="2" cellspacing="0">
                        <tr>
                            <TMPL_IF NAME="DDESKTOP_SEARCH">
                            <td><div style=""><img border="0" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_youtube_light.png" border="0" width="45"></img>&nbsp;</div></td>
                            <td class="nsinputs"><input type="text" name="YOUTUBE_SEARCH_STR" id="YOUTUBE_SEARCH_STR" tabindex="501" value="" maxlength="255" style="width: 230px;"></td>
                            <td>&nbsp;<div style="margin-top: -13px;" onClick="javascript:perform_youtube_search();"><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_magnifier_light.png" border="0" width="20" style="cursor: pointer;"></img></div></td>
                            <TMPL_ELSE>
                            <td><div style=""><img border="0" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_youtube_dark.png" border="0" width="45"></img>&nbsp;</div></td>
                            <td class="nsinputs"><input type="text" name="YOUTUBE_SEARCH_STR" id="YOUTUBE_SEARCH_STR" tabindex="501" value="" maxlength="255" style="width: 230px;"></td>
                            <td>&nbsp;<div style="margin-top: -13px;" onClick="javascript:perform_youtube_search();"><img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_magnifier_dark.png" border="0" width="20" style="cursor: pointer;"></img></div></td>
                            </TMPL_IF>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
<!-- END dynamic_desktop/youtube_module.tpl -->
