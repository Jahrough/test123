<!-- BEGIN dynamic_desktop/youtube_module.tpl -->
    <div id="videoSearchBarDiv">
        <table cellspacing="3" border="0" width="100%">
          <thead class="nodisplay">
            <tr>
              <th aria-label="Youtube">&nbsp;</th>
            </tr>
          </thead>        
            <tr>
                <td valign="top" align="left">
                    <table width="100%" border="0" cellpadding="2" cellspacing="0">
                      <thead class="nodisplay">
                        <tr>
                          <th aria-label="Youtube">&nbsp;</th>
                          <th aria-label="Search Input">&nbsp;</th>
                          <th aria-label="Search youtube">&nbsp;</th>
                        </tr>
                      </thead>        
                    
                        <tr>
                            <td>
                                <div>
                                    <img border="0" src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_youtube_light.png" border="0" width="45" title="YouTube Search" alt="YouTube Search"></img>
                                    &nbsp;
                                </div>
                            </td>
                            <td class="nsinputs">
                                <input aria-label="Youtube search" type="text" name="YOUTUBE_SEARCH_STR" id="YOUTUBE_SEARCH_STR" value="" maxlength="255" style="width: 230px;">
                            </td>
                            <td>
                                &nbsp;
                                <div style="margin-top: -13px;" onClick="javascript:perform_youtube_search();">
                                    <img src="<TMPL_VAR NAME=IMGPATH>/dynamic_desktop/dd_magnifier_light.png" border="0" width="20" style="cursor: pointer;" placeholder="YouTube Search" title="YouTube Search" alt="YouTube Search"></img>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
<!-- END dynamic_desktop/youtube_module.tpl -->
