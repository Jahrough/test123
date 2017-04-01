<!-- begin manage_account_add_update_user_irs_options.tpl -->
              <script src="<TMPL_VAR NAME='JSPATH'>/user_admin_irs.js"></script>
              <INPUT TYPE="hidden" NAME="DIVISION_ID" VALUE="<TMPL_VAR DIVISION_ID>">
              <TMPL_LOOP NAME=ALL_FUNCTION_AREA>
              <INPUT TYPE="hidden" NAME="FUNCTION_AREA_NAME_<TMPL_VAR DIVISION_ID>_<TMPL_VAR ACTIVITY_CAMPUS_ID>" VALUE="<TMPL_VAR NAME>">
              <INPUT TYPE="hidden" NAME="FUNCTION_AREA_VALUE_<TMPL_VAR DIVISION_ID>_<TMPL_VAR ACTIVITY_CAMPUS_ID>" VALUE="<TMPL_VAR VALUE>">
              </TMPL_LOOP>
              <TR>
                <td class="unifont1" align="left" width="200">Activity/Campus:</TD>
                <td align="left" width="200" class="nsinputs"><SELECT NAME="ACTIVITY_CAMPUS" onchange="activity_campus_change();">
                <TMPL_IF NAME=ACTIVITY_CAMPUS>
                <OPTION VALUE="-1">Other</OPTION>
                <TMPL_LOOP ACTIVITY_CAMPUS>
                <OPTION VALUE="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR NAME></OPTION>
                </TMPL_LOOP>
                <TMPL_ELSE>
                <OPTION VALUE="0">No Selection Available</OPTION>
                </TMPL_IF>
                </TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="200">Function/Area:</TD>
                <td align="left" width="200" class="nsinputs"><SELECT NAME="FUNCTION_AREA">
                <TMPL_IF NAME=FUNCTION_AREA>
                <OPTION VALUE="-1">Other</OPTION>
                <TMPL_LOOP FUNCTION_AREA>
                <OPTION VALUE="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR NAME></OPTION>
                </TMPL_LOOP>
                <TMPL_ELSE>
                <OPTION VALUE="0">No Selection Available</OPTION>
                </TMPL_IF>
                </TD>
              </TR>
              <TR>
                <td class="unifont1" align="left" width="200">Position Series:</TD>
                <td align="left" width="200" class="nsinputs"><SELECT NAME="POSITION_SERIES">
                <TMPL_IF NAME=POSITION_SERIES>
                <OPTION VALUE="-1">Other</OPTION>
                <TMPL_LOOP POSITION_SERIES>
                <OPTION VALUE="<TMPL_VAR VALUE>"<TMPL_IF SELECTED> SELECTED</TMPL_IF>><TMPL_VAR NAME></OPTION>
                </TMPL_LOOP>
                <TMPL_ELSE>
                <OPTION VALUE="0">No Selection Available</OPTION>
                </TMPL_IF>
                </TD>
              </TR>
<!-- end manage_account_add_update_user_irs_options.tpl -->

