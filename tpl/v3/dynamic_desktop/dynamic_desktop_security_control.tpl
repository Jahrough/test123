<!-- Dynamic Desktop security control -->
<!-- BEGIN: dynamic_desktop/dynamic_desktop_security_control.tpl -->
<script type="text/javascript">
    function _chat_disclaimer(options) {
        var chat_disabled = document.forms[0].ENABLE_CHAT_ACCESS[1].checked;
        if (chat_disabled || 1 !== options) {
            var chat_disclaimer_html = 'By enabling the Chat feature, you are choosing to allow certain information that users have submitted to be shared with other parties.';
            if (options) {
                chat_disclaimer_html += '<br><br><br><div style="text-align:center;"><a style="color: #666666" href="javascript:_set_chat_accepted(1)"><strong>Agree</strong></a>&nbsp;&nbsp;&nbsp;&nbsp;<a style="color: #666666" href="javascript:_set_chat_accepted(0)"><strong>Disagree</strong></div><br>';
            }
            new_modal('Chat Disclaimer',chat_disclaimer_html);
        }
    }

    function _set_chat_accepted(flag) {
        document.forms[0].ENABLE_CHAT_ACCESS[ flag ? 0 : 1 ].checked = true;
        toggle_modal();
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<TMPL_IF ENABLE_V2>
    <TMPL_IF ALLOW_DYNAMIC_DESKTOP>
        <TMPL_IF MYACCOUNT_COMPANY_SECURITY>
        <fieldset>
            <span class="unifont1bold"><legend>Dynamic Desktop</legend></span>
            <table border="0" cellpadding="0" cellspacing="0" width="95%">
            <TMPL_IF COMPANY_DISABLE_DYNAMIC_DESKTOP>
                <INPUT TYPE=HIDDEN NAME="DISABLE_DYNAMIC_DESKTOP" VALUE="<TMPL_IF DISABLE_DYNAMIC_DESKTOP>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
                <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Dynamic Desktop:</TD>
                    <td width="25%" align="left">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><INPUT TYPE=RADIO NAME="DISABLE_DYNAMIC_DESKTOP" VALUE='0' <TMPL_UNLESS NAME=DISABLE_DYNAMIC_DESKTOP>CHECKED</TMPL_UNLESS>></td>
                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                <td><INPUT TYPE=RADIO NAME="DISABLE_DYNAMIC_DESKTOP" VALUE='1' <TMPL_IF NAME=DISABLE_DYNAMIC_DESKTOP>CHECKED</TMPL_IF>></td>
                                <td class="unifont1">No</td>
                            </tr>
                        </table>
                    </td>
                </TR>
                <TMPL_IF COMPANY_ALLOW_CHAT>
                <TR>
                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chat Feature: &nbsp;&nbsp;&nbsp;&nbsp;<span style="cursor:pointer;font-weight:bold;color:#0066CC;">&#171;<a href="javascript:_chat_disclaimer()">Disclaimer</a>&#187;</span></TD>
                    <td width="25%" align="left">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_CHAT_ACCESS" onmousedown="javascript:_chat_disclaimer(1);" VALUE='1' <TMPL_IF NAME=ENABLE_CHAT_ACCESS>CHECKED</TMPL_IF>></td>
                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                <td><INPUT TYPE=RADIO NAME="ENABLE_CHAT_ACCESS" VALUE='0' <TMPL_UNLESS NAME=ENABLE_CHAT_ACCESS>CHECKED</TMPL_UNLESS>></td>
                                <td class="unifont1">No</td>
                            </tr>
                        </table>
                    </td>
                </TR>
                </TMPL_IF>
            </TMPL_IF>
            </table>
        </fieldset>
        <TMPL_ELSE>
            <TMPL_IF COMPANY_DISABLE_DYNAMIC_DESKTOP>
                <INPUT TYPE=HIDDEN NAME="DISABLE_DYNAMIC_DESKTOP" VALUE="<TMPL_IF DISABLE_DYNAMIC_DESKTOP>1<TMPL_ELSE>0</TMPL_IF>">
            <TMPL_ELSE>
            <fieldset>
                <span class="unifont1bold"><legend>Dynamic Desktop</legend></span>
                <table border="0" cellpadding="0" cellspacing="0" width="95%">
                    <TR>
                        <td width="75%" nowrap class="unifont1" align="left">&nbsp;Dynamic Desktop:</TD>
                        <td width="25%" align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_DYNAMIC_DESKTOP" VALUE='0' onClick="document.getElementById('dd_modules_perms').style.display = 'block';" <TMPL_UNLESS NAME=DISABLE_DYNAMIC_DESKTOP>CHECKED</TMPL_UNLESS>></td>
                                    <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                    <td><INPUT TYPE=RADIO NAME="DISABLE_DYNAMIC_DESKTOP" VALUE='1' onClick="document.getElementById('dd_modules_perms').style.display = 'none';" <TMPL_IF NAME=DISABLE_DYNAMIC_DESKTOP>CHECKED</TMPL_IF>></td>
                                    <td class="unifont1">No</td>
                                </tr>
                            </table>
                        </td>
                    </TR>
                    <TR>
                        <td colspan="2" width="100%" nowrap class="unifont1">
                            <div id="dd_modules_perms" style="display:<TMPL_IF NAME="DISABLE_DYNAMIC_DESKTOP">none<TMPL_ELSE>block</TMPL_IF>;">
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <TMPL_IF NAME="PERMITTED_Chat_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Chat Feature:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_Chat_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_Chat_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_Chat_Module" VALUE='1' <TMPL_IF NAME=DISABLE_Chat_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_LNIN_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Investigators Network:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_LNIN_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_LNIN_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_LNIN_Module" VALUE='1' <TMPL_IF NAME=DISABLE_LNIN_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_PSBR_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Public Safety Briefing Room:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_PSBR_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PSBR_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_PSBR_Module" VALUE='1' <TMPL_IF NAME=DISABLE_PSBR_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_UNLESS DELETE_ALERTING>
                                <TMPL_UNLESS COMPANY_DISABLE_ENTITY_ALERTING>
                                <TMPL_UNLESS DISABLE_ENTITY_ALERTING>
                                <TMPL_IF NAME="PERMITTED_PersonAlerts_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Person Alerts:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_PersonAlerts_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_PersonAlerts_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_PersonAlerts_Module" VALUE='1' <TMPL_IF NAME=DISABLE_PersonAlerts_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                </TMPL_UNLESS>
                                </TMPL_UNLESS>
                                </TMPL_UNLESS>
                                <TMPL_IF NAME="PERMITTED_AreaCode_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Area Code Lookup:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_AreaCode_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_AreaCode_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_AreaCode_Module" VALUE='1' <TMPL_IF NAME=DISABLE_AreaCode_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_ZipCode_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Zip Code Lookup:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_ZipCode_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_ZipCode_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_ZipCode_Module" VALUE='1' <TMPL_IF NAME=DISABLE_ZipCode_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_LexisNexisUniversity_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;LexisNexis University:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_LexisNexisUniversity_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_LexisNexisUniversity_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_LexisNexisUniversity_Module" VALUE='1' <TMPL_IF NAME=DISABLE_LexisNexisUniversity_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_YouTube_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;You Tube:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_YouTube_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_YouTube_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_YouTube_Module" VALUE='1' <TMPL_IF NAME=DISABLE_YouTube_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                                <TMPL_IF NAME="PERMITTED_MostWanted_Module_CHANGE">
                                <TR>
                                    <td width="75%" nowrap class="unifont1" align="left">&nbsp;Most Wanted:</TD>
                                    <td width="25%" align="left">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_MostWanted_Module" VALUE='0' <TMPL_UNLESS NAME=DISABLE_MostWanted_Module>CHECKED</TMPL_UNLESS>></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME="DISABLE_MostWanted_Module" VALUE='1' <TMPL_IF NAME=DISABLE_MostWanted_Module>CHECKED</TMPL_IF>></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        </table>
                                    </td>
                                </TR>
                                </TMPL_IF>
                            </table>
                            </div>
                        </td>
                    </TR>
                </table>
            </fieldset>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_IF>
</TMPL_IF>
<!-- END: dynamic_desktop/dynamic_desktop_security_control.tpl -->
