<!-- begin billing_activity.tpl -->
<fieldset>
    <div class="section-row child-divs-left">
        <TMPL_IF HAS_FCRA_NON_FCRA>
            <div class="mgr6">
                <b>NON-FCRA Results</b>
            </div>
        </TMPL_IF>
        <div>
            <a class="btn darkgrey-btn" href="javascript:send_event('BILLING/SUMMARY')">
                &lt; Back
            </a>
        </div>
        <div class="mgl15">
            <b>User:</b>
        </div>
        <div>
            <SELECT NAME=BILLING_LOGIN_FILTER>
                <TMPL_LOOP NAME=USER_SELECT_LOOP>
                    <OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
                </TMPL_LOOP>
            </SELECT>
        </div>
        <div class="mgl15">
            <TMPL_IF NAME=PREV_ON>
                <a class="btn darkgrey-btn" href="javascript:send_billing_event('BILLING/ACTIVITY_PREV')">
                    &lt; Back
                </a>
            <TMPL_ELSE>
                <div class="btn grey-btn" style="cursor:default;">
                    &lt; Back
                </div>
            </TMPL_IF>
        </div>
        <div class="mgl6">
            <a class="btn red-btn" href="javascript:send_billing_event('BILLING/ACTIVITY')">
                Refresh
            </a>
        </div>
        <div class="mgl6">
            <TMPL_IF NAME=NEXT_ON>
                <a class="btn darkgrey-btn" href="javascript:send_billing_event('BILLING/ACTIVITY_NEXT')">
                Next &gt;
                </a>
            <TMPL_ELSE>
                <div class="btn grey-btn" style="cursor:default;">
                    Next &gt;
                </div>
            </TMPL_IF>
        </div>
    </div>
    <div class="section-row child-divs-center">
        <div class="mgb15">
            <b><a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
        </div>
    </div>
    <div class="section-row">
        <table class="display">
            <thead>
                <tr>
                    <td>
                        <b>Login ID</b>
                    </td>
                    <td>
                        <b>Activity</b>
                    </td>
                    <td>
                        <b>Search Criteria</b>
                    </td>
                    <td>
                        <b>Reference Code</b>
                    </td>
                    <td>
                        <b>Date &amp; Time</b> 
                    </td>
                    <td>
                        <b>Price</b>
                    </td>
                </tr>
            </thead>
            <tbody>
                <TMPL_LOOP NAME="SEARCH_RESULTS">
                    <TMPL_IF NAME=SUB_SUM>
                    <tr>
                    <td class="smallfont1" nowrap valign="top" align="right" colspan="6"><b>Sub Total:&nbsp;$<TMPL_VAR NAME="SUB_SUM">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="smallfont1" nowrap valign="top" align="right" colspan="6">&nbsp;</td>
                    </tr>
                    <TMPL_ELSE>
                        <tr>
                            <TMPL_IF NAME="BILLING_CODE">
                                <td>
                                    <TMPL_VAR NAME="BILLING_CODE">
                                </td>
                            <TMPL_ELSE>
                                <td>&nbsp;</td> 
                            </TMPL_IF>
                            <TMPL_IF NAME="TRANSACTION_TYPE">
                                <td>
                                    &nbsp;<TMPL_VAR NAME="TRANSACTION_TYPE">
                                </td>
                            <TMPL_ELSE>
                                <td>&nbsp;</td> 
                            </TMPL_IF>
                            <td>
                                <TMPL_IF POWERSEARCH_REPORT>
                                    <TMPL_VAR NAME="REPORT_OPTIONS">
                                <TMPL_ELSE>
                                    <TMPL_VAR NAME="FNAME">
                                    <TMPL_VAR NAME="MNAME">
                                    <TMPL_VAR NAME="LNAME">
                                    <TMPL_VAR NAME="FULL_NAME">
                                    <TMPL_VAR NAME="ADDRESS">
                                    <TMPL_VAR NAME="CITY">
                                    <TMPL_VAR NAME="STATE">
                                    <TMPL_VAR NAME="ZIP">
                                    <TMPL_VAR NAME="ZIP4">
                                    <TMPL_VAR NAME="PHONE">
                                    <TMPL_VAR NAME="SSN">
                                    <TMPL_VAR NAME="UNIQUE_ID">
                                    <TMPL_VAR NAME="dob">
                                    <TMPL_VAR NAME="business_name">
                                </TMPL_IF>
                            </td>

                            <TMPL_IF NAME="REFERENCE_CODE">
                                <td>&nbsp;<TMPL_VAR NAME="REFERENCE_CODE"></td>
                            <TMPL_ELSE>
                                <td>&nbsp;</td>
                            </TMPL_IF>

                            <TMPL_IF NAME="DATEADDED">
                                <td<TMPL_UNLESS IGNORE_NO_WRAP> nowrap</TMPL_UNLESS>>
                                    &nbsp;<TMPL_VAR NAME="DATEADDED">
                                </td>
                            <TMPL_ELSE>
                                <td>&nbsp;</td>
                            </TMPL_IF>

                            <TMPL_IF NAME="PRICE">
                                <td>
                                    &nbsp;$<TMPL_VAR NAME="PRICE">
                                </td>
                            <TMPL_ELSE>
                                <td>&nbsp;</td>
                            </TMPL_IF>
                        </tr>
                    </TMPL_IF> <!-- end if sub-sum -->
                </TMPL_LOOP>
            </tbody>
        </table>
    </div>
</fieldset>
<TMPL_IF NAME="HAS_FCRA_NON_FCRA">
<TMPL_INCLUDE NAME="myaccount/billing_activity_fcra.tpl">
</TMPL_IF>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<span class="smallfont1">&nbsp;<br></span>
<!-- end billing_activity.tpl -->
