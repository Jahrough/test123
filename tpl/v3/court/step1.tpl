<TMPL_INCLUDE NAME="court_header.tpl">
<TMPL_IF NAME="DISABLED">
    <table align=center>
        <tr>
            <td class="unifont1">
                This section is currently unavailable.
            </td>
        </tr>
    </table>
<TMPL_ELSE>

    <script src="<TMPL_VAR NAME='JSPATH'>/court/step1.js"></script>
    <script>
        $j(function(){
            setTimeout(function(){
                $j('[name=ALTERNATE_IDENTITY]').first().prop('checked','checked');
            },100);
        });
    </script>
    <div class="wizard-content" style="border-radius: 8px;">
        <div>
            <div class="myaccount-section-title">Court Search</div>
            <div class="myaccount-containers">
                <div class="sections">
                    <div class="section-row" style="height:40px;">
                        <a class="btn darkblue-btn right" href="javascript:show_post_popup('LOGIN/SHOW_POPUP','Court_Coverage',675,660,0,0,0,1,1,0,'','coverage/court_coverage');">
                            Coverage Area
                        </a>
                    </div>
                    <div class="section-row pdt10">
                        <div class="wizard-font-14px">
                            <TMPL_IF IRB>IRBsearch<TMPL_ELSE>Accurint</TMPL_IF> nationwide Court Search enables you to obtain civil and criminal histories for the subject you selected without ever having to leave your office.&nbsp;&nbsp;We dispatch trained court researchers to over 3,000 courts across the country to retrieve the most current information and deliver it electronically to your desktop.
                        </div>
                    </div>
                    <div class="section-row">
                        <div class="wizard-font-14px">
                            <b>Data Sources:</b>&nbsp;&nbsp;The information obtained from <TMPL_IF IRB>IRBsearch's<TMPL_ELSE>Accurint's</TMPL_IF> Court Search product is public record information.<br><br>
                            <b>Important:</b>&nbsp;&nbsp;The public records used in this system have errors.&nbsp;&nbsp;Data, as entered by the agent network, is sometimes entered poorly, processed incorrectly and is generally not free from defect.&nbsp;&nbsp;Court Search results should not be relied upon as definitively accurate.&nbsp;&nbsp;Before relying on any data this system supplies, it should be independently verified.<br>
                        </div>
                    </div>
                    <div class="section-row">
                        <div class="wizard-font-16px bold">Subject Information</div>
                    </div>
                    <TMPL_IF IDENTITY_LOOP>
                        <TMPL_LOOP IDENTITY_LOOP>
                            <div class="section-row">
                                <TMPL_INCLUDE NAME="identity.tpl">
                            </div>
                            <div class="section-row">
                                <table style="width:70%;margin: auto;">
                                    <tr>
                                        <td class="wizard-font-14px bold"><b>&mdash; Choose or enter the name, or the AKA, you wish to use for this Court Search.&nbsp;&nbsp;Separate orders are required for each requested name or AKA.</b></td>
                                    </tr>
                                </table>
                                <table style="width:62%;margin: auto;">
                                    <tbody class="td-font-11px">
                                        <tr>
                                            <td><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE=""<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_IF BUSINESS_CS><TMPL_VAR NAME="COMPANY_NAME"><TMPL_ELSE><TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF></TMPL_IF></b>&nbsp;(Default)</td>
                                        </tr>
                                        <TMPL_IF AKAS>
                                            <TMPL_LOOP AKAS>
                                                <tr>
                                                    <TMPL_IF BUSINESS_CS>
                                                        <td><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="<TMPL_VAR NAME_COMPANY>__<TMPL_VAR INDEX>"<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_VAR NAME="NAME_COMPANY"></b></td>
                                                    <TMPL_ELSE>
                                                        <td><b><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="<TMPL_VAR NAME_FIRST>__<TMPL_VAR NAME_MIDDLE>__<TMPL_VAR NAME_LAST>__<TMPL_VAR NAME_SUFFIX>__<TMPL_VAR INDEX>"<TMPL_IF ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;<TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF></b></td>
                                                    </TMPL_IF>
                                                </tr>
                                            </TMPL_LOOP>
                                        </TMPL_IF>
                                        <tr>
                                            <td>
                                                <TMPL_IF BUSINESS_CS>
                                                    <table border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;Company Name:</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="nsinputs"><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="CUSTOM"<TMPL_IF CUSTOM_ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;</td>
                                                            <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_COMPANY_NAME" VALUE="<TMPL_VAR NAME=AKA_COMPANY_NAME>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
                                                        </tr>
                                                    </table>
                                                <TMPL_ELSE>
                                                    <table>
                                                        <tr>
                                                            <td class="nsinputs"><INPUT TYPE="RADIO" NAME="ALTERNATE_IDENTITY" VALUE="CUSTOM"<TMPL_IF CUSTOM_ALIAS_CHECKED> CHECKED</TMPL_IF>>&nbsp;</td>
                                                            <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_FIRST" placeholder="First Name" VALUE="<TMPL_VAR NAME=AKA_NAME_FIRST>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
                                                            <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_MIDDLE" placeholder="Middle Name" VALUE="<TMPL_VAR AKA_NAME_MIDDLE>" SIZE="10" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
                                                            <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_LAST" placeholder="Last Name" VALUE="<TMPL_VAR AKA_NAME_LAST>" SIZE="15" onBlur="this.value=this.value.toUpperCase(); setid();">&nbsp;</td>
                                                            <td class="nsinputs"><INPUT TYPE=TEXT NAME="AKA_NAME_SUFFIX" placeholder="Suffix" VALUE="<TMPL_VAR AKA_NAME_SUFFIX>" SIZE="3" onBlur="this.value=this.value.toUpperCase(); setid();"><INPUT TYPE="HIDDEN" NAME="AKA_INDEX" VALUE="-1"></td>
                                                        </tr>
                                                    </table>
                                                </TMPL_IF>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="section-row">
                                <TMPL_UNLESS BUSINESS_CS>
                                    <table style="width:70%;margin: auto;">
                                        <tr>
                                            <td class="wizard-font-14px bold"><b>&mdash; Enter the Date of Birth you wish to use for this individual.</b></td>
                                        </tr>
                                    </table>
                                    <table style="width:62%;margin: auto;">
                                        <tr>
                                            <td>
                                                <table>
                                                    <tr>
                                                        <td class="nsinputs" style="padding-left:28px;">
                                                            <INPUT class="w100px" placeholder="Month (MM)" TYPE=TEXT NAME="DOB_MONTH" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR NAME=DOB_MONTH></TMPL_IF>" SIZE="2" MAXLENGTH="2">
                                                        </td>
                                                        <td class="nsinputs">
                                                            <INPUT class="w100px" placeholder="Day (DD)" TYPE=TEXT NAME="DOB_DAY" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR DOB_DAY></TMPL_IF>" SIZE="2" MAXLENGTH="2">
                                                        </td>
                                                        <td class="nsinputs">
                                                            <INPUT class="w100px" placeholder="Year (YYYY)" TYPE=TEXT NAME="DOB_YEAR" VALUE="<TMPL_IF POPULATE_DOB_INPUTS><TMPL_VAR DOB_YEAR></TMPL_IF>" SIZE="4" MAXLENGTH="4">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </TMPL_UNLESS>
                            </div>
                        </TMPL_LOOP>
                    </TMPL_IF>
                    <div class="section-row">
                        <div class="wizard-font-14px bold">
                            Below is a list of possible addresses for your subject.  Select any for which you want to conduct a Court Search.  For counties or states not listed, select CUSTOMIZE on the next screen.
                        </div>
                    </div>
                    <div class="section-row">
                        <TMPL_IF ADDRESS_LOOP>
                            <table class="wizard-grey-table">
                                <thead>
                                    <tr class="courttableheader">
                                        <th><input type="checkbox" class="check-bold-all" name="toggleAll"></th>
                                        <th>DATES</th>
                                        <th>STATE</th>
                                        <th>COUNTY</th>
                                        <th>ADDRESS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <TMPL_LOOP ADDRESS_LOOP>
                                        <tr class="ct">
                                            <td><input type="checkbox" class="check-bold-row" name="ADDRESS_CODE" value="<TMPL_VAR INDEX>"<TMPL_IF CHECKED> CHECKED</TMPL_IF>></td>
                                            <td><TMPL_VAR DATE_RANGE>&nbsp;</td>
                                            <td><TMPL_VAR STATE>&nbsp;</td>
                                            <td><TMPL_VAR COUNTY>&nbsp;</td>
                                            <td><TMPL_VAR STREET>,&nbsp;<TMPL_VAR CITY>,&nbsp;<TMPL_VAR STATE>&nbsp;&nbsp;<TMPL_VAR ZIP5><TMPL_IF ZIP4>-<TMPL_VAR ZIP4></TMPL_IF>&nbsp;</td>
                                        </tr>
                                    </TMPL_LOOP>
                                </tbody>
                            </table>
                            <INPUT TYPE="HIDDEN" NAME="STEP_ONE" VALUE="1">
                        </TMPL_IF>
                    </div>
                    <div class="section-row">
                        <table style="width:100%;">
                            <tr>
                                <td style="text-align:right;">
                                    <input type="button" class="btn red-btn" name="SUBMIT" value="Next" onClick="clearPlaceholders();if(!validatestep1()) {placeholders_reset(); return false;};showpw_v3();send_event('COURT/SHOW_SEARCH_SELECT_INIT');this.disabled=true">
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</TMPL_IF>
<!-- End v3/court/step1.tpl -->
    </body>
</html>
