<!-- BEGIN inputs_fields/dyndesktop_search.tpl -->
      <tr>
        <td valign="top" id="col2" class="topbotborder">
            <div id="modules" style="padding: 0pt;">
                <div class="yui-b">
                    <div id="t_1" class="yui-gb" style="margin-top: 14px;">
                        <div id="c_1" class="yui-u first" style="width: 33%; display: block;">
                            <TMPL_LOOP C1_LOOP>
                            <TMPL_INCLUDE NAME="dynamic_desktop/dynamic_desktop_modules.tpl">
                            </TMPL_LOOP>

                            <div class="dm">
                                <br/>
                            </div>
                        </div>
                        <div id="c_2" class="yui-u" style="width: 33%; display: block; margin-left: 0%;">
                            <TMPL_LOOP C2_LOOP>
                            <TMPL_INCLUDE NAME="dynamic_desktop/dynamic_desktop_modules.tpl">
                            </TMPL_LOOP>
                            <div class="dm">
                                <br/>
                            </div>
                        </div>
                        <div id="c_3" class="yui-u" style="width: 33%; display: block; margin-left: 0%;">
                            <TMPL_LOOP C3_LOOP>
                            <TMPL_INCLUDE NAME="dynamic_desktop/dynamic_desktop_modules.tpl">
                            </TMPL_LOOP>
                            <div class="dm">
                                <br/>
                            </div>
                        </div>
                        <div id="c_4" class="yui-u" style="width: 0%; display: none; margin-left: 0%;">
                            <div class="dm c">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        </td>
      </tr>

      <tr>
          <td colspan="2" align="center"><div id="lineVertRedDot"></div></td>
      </tr>
      <tr>
          <td colspan="2" align="center">
            <table cellpadding="0" cellspacing="0" border="0" style="width: 100%; background-color: #b1001d; margin-bottom: 9px; border-style: solid; border-color: #ed1c24; border-left-width: 1px; border-right-width: 0px; border-bottom-width: 1px; border-top-width: 0px;">
                <tr>
                    <td><p style="font-family: Verdana, sans-serif; font-size: 12px; font-weight: bold; color: #fff; white-space: nowrap; margin-left: 10px; margin-right: 12px; padding-top: 5px; padding-bottom: 5px;">Customize Your Layout</p></td>
                    <td style="width: 100%; background-color: #f9f9f9;">&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2"><p style="font-family: Verdana, sans-serif; font-size: 10.4px; font-weight: bold; color: #e6e6e6; white-space: nowrap; margin-left: 10px; text-align: left;">. . . add or remove topics</p></td>

                </tr>
                <tr>
                    <td colspan="2">
                        <table cellpadding="2" cellspacing="8" border="0" style="width: 100%" style="padding: 2px;">
                            <TMPL_IF ROW_1_CHECKS_LOOP>
                            <tr>
                                <TMPL_LOOP ROW_1_CHECKS_LOOP>
                                <td id="<TMPL_VAR MODULE>_cb_checkbox" class="dd_checkbox <TMPL_UNLESS CHECKED>dd_module_disabled</TMPL_UNLESS>" align="left"><input type="checkbox" <TMPL_IF NAME="DISABLED">DISABLED="DISABLED"</TMPL_IF> id="<TMPL_VAR MODULE>_cb" <TMPL_IF NAME="CHECKED">checked="checked"</TMPL_IF> /><span id="<TMPL_VAR MODULE>_cb_title" class="<TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>"><TMPL_VAR NAME="TITLE"> <TMPL_IF NAME="DISABLED">(disabled)</TMPL_IF></span><TMPL_IF NAME="DISCLAIMER">&nbsp;&nbsp;<span class="<TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>">&#171;<a style="" href="javascript:chat_disclaimer(0)">Disclaimer</a>&#187;</span></TMPL_IF></td>
                                </TMPL_LOOP>
                            </tr>
                            </TMPL_IF>
                            <TMPL_IF ROW_2_CHECKS_LOOP>
                            <tr>
                                <TMPL_LOOP ROW_2_CHECKS_LOOP>
                                <td id="<TMPL_VAR MODULE>_cb_checkbox" class="dd_checkbox <TMPL_UNLESS CHECKED>dd_module_disabled</TMPL_UNLESS>" align="left"><input type="checkbox" <TMPL_IF NAME="DISABLED">DISABLED="DISABLED"</TMPL_IF> id="<TMPL_VAR MODULE>_cb" <TMPL_IF NAME="CHECKED">checked="checked"</TMPL_IF> /><span id="<TMPL_VAR MODULE>_cb_title" class="<TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>"><TMPL_VAR NAME="TITLE"> <TMPL_IF NAME="DISABLED">(disabled)</TMPL_IF></span></td>
                                </TMPL_LOOP>
                            </tr>
                            </TMPL_IF>
                        </table>
                    </td>
                </tr>
            </table>
          </td>
      </tr>

<!-- END inputs_fields/dyndesktop_search.tpl -->
