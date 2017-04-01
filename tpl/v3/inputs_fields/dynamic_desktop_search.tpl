<!-- BEGIN inputs_fields/dynamic_desktop_search.tpl -->
<style>
.formBox.searchFormConWidth{
    background: none;
}
</style>
<table class="ddtable">
  <thead class="nodisplay">
    <tr>
      <th aria-label="Main">&nbsp;</th>
    </tr>
  </thead>
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
            <table id="dd_customize">
                <tr>
                    <th id="col_customize" colspan="2">
                        <div class="dd_customizeLabel">Customize Your Layout</div>
                    </th>
                </tr>
                <tr>
                    <td headers="col_customize" colspan="2">
                        <div class="dd_customizeText">...add or remove topics</div>
                    </td>
                </tr>
                <tr>
                    <td headers="col_customize" colspan="2">
                        <table cellpadding="2" cellspacing="8" border="0" style="width: 100%" style="padding: 2px;">
                            <thead class="nodisplay">
                              <tr>
                                <th aria-label="Options">&nbsp;</th>
                              </tr>
                            </thead>
                            <TMPL_IF ROW_1_CHECKS_LOOP>
                            <tr>
                                <TMPL_LOOP ROW_1_CHECKS_LOOP>
                                <td id="<TMPL_VAR MODULE>_cb_checkbox" class="dd_checkbox <TMPL_UNLESS CHECKED>dd_module_disabled</TMPL_UNLESS>" align="left">
                                    <div class="dd_checkboxCon">
                                        <input aria-labelledby="<TMPL_VAR MODULE>_cb_title" type="checkbox" <TMPL_IF NAME="DISABLED">DISABLED="DISABLED"</TMPL_IF> id="<TMPL_VAR MODULE>_cb" <TMPL_IF NAME="CHECKED">checked="checked"</TMPL_IF> />
                                        <span id="<TMPL_VAR MODULE>_cb_title" class="<TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>"><TMPL_VAR NAME="TITLE"> <TMPL_IF NAME="DISABLED">(disabled)</TMPL_IF></span>
                                        <TMPL_IF NAME="DISCLAIMER">
                                            <span class="dd-customize-disc <TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>">
                                                <a style="" href="javascript:chat_disclaimer(0)">Disclaimer</a>
                                            </span>
                                        </TMPL_IF>
                                    </div>
                                </td>
                                </TMPL_LOOP>
                            </tr>
                            </TMPL_IF>
                            <TMPL_IF ROW_2_CHECKS_LOOP>
                            <tr>
                                <TMPL_LOOP ROW_2_CHECKS_LOOP>
                                <td id="<TMPL_VAR MODULE>_cb_checkbox" class="dd_checkbox <TMPL_UNLESS CHECKED>dd_module_disabled</TMPL_UNLESS>" align="left">
                                    <div class="dd_checkboxCon">
                                        <input aria-labelledby="<TMPL_VAR MODULE>_cb_title" type="checkbox" <TMPL_IF NAME="DISABLED">DISABLED="DISABLED"</TMPL_IF> id="<TMPL_VAR MODULE>_cb" <TMPL_IF NAME="CHECKED">checked="checked"</TMPL_IF> />
                                        <span id="<TMPL_VAR MODULE>_cb_title" class="<TMPL_IF CHECKED>font-customize<TMPL_ELSE>font-customize-disabled</TMPL_IF>">
                                            <TMPL_VAR NAME="TITLE"> <TMPL_IF NAME="DISABLED">(disabled)</TMPL_IF>
                                        </span>
                                    </div>
                                </td>
                                </TMPL_LOOP>
                            </tr>
                            </TMPL_IF>
                        </table>
                    </td>
                </tr>
            </table>
          </td>
      </tr>

</table>
<!-- END inputs_fields/dynamic_desktop_search.tpl -->
