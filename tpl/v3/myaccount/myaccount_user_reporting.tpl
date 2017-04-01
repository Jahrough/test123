<!-- begin myaccount_user_reporting.tpl -->
<!-- used for user and group activity reports -->

<script>
function refresh_page() {
    if (checkdate()) {
	send_event('MYACCOUNT/SHOW_USER_REPORTING', '<TMPL_VAR NAME=ACTION_ADMIN>');
    }
}
</script>
<noscript>Your browser does not support JavaScript!</noscript>

<div class="myaccount-section-title"><TMPL_VAR TITLE> Reporting</div>
<div class="myaccount-containers">
    <div class="section">
            <div class="section-row">
                <fieldset>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">

                        <TMPL_IF NAME=REPORT_SUBMITTED>
                            <tr>	
                              <td align="center" colspan="2">
                                    <div class="successmessage pd10 bold">
                                        Your report request has been submitted. Once available, you can view it in the Report Manager.
                                    </div>
                              </td>
                            </tr>
                        </TMPL_IF>
                        
                        <TMPL_IF NAME=ERROR_MSG>
                            <tr>	
                              <td align="center" colspan="2">
                                    <div class="errormessage pd10 bold">
                                        There was a problem submitting your report request, please contact your system administrator.
                                    </div>
                              </td>
                            </tr>
                        </TMPL_IF>

                        <tr>
                            <td colspan="2">
                                Choose a User Type below and click "Run" to generate a current User List.
                            </td>
                        </tr>
               
                        <tr>
                            <td class="bold" style="text-align:right">
                                <span class=red-text>*&nbsp;</span><span id="usr_typ">User Type:</span>
                            </td>
                           <td>
                                <table border="0" width="100%" cellpadding="2">
                                    <tr>
                                            <td class="unifont1" nowrap="nowrap" colspan="3">
                                              <input aria-labelledby="usr_typ" id="actv" type="radio" name="user_type" value="Active" <TMPL_IF NAME=SET_ACTIVE>CHECKED</TMPL_IF>/><label for="actv">Active</label>&nbsp;          
                                              <input aria-labelledby="usr_typ" type="radio" name="user_type" id="inactv" value="Inactive" <TMPL_IF NAME=SET_INACTIVE>CHECKED</TMPL_IF>/><label for="inactv">Inactive</label>
                                              <input aria-labelledby="usr_typ" type="radio" name="user_type" id="all" value="All" <TMPL_IF NAME=SET_ALL>CHECKED</TMPL_IF>/><label for="all">All</label></span>
                                            </td>
                                        </tr>
                                    </table>
                           </td>                                                        
                        </tr>

                               <tr>
                                    <td class="bold" style="text-align:right" width="15%">
                                        <span class=red-text>*&nbsp;</span><label for="output_format">Report Format:</label>
                                    </td>
                                    <td>
                                        <table border="0" width="100%" cellpadding="2">
                                            <tr>
                                                <td class="unifont1" nowrap="nowrap">
                                                    <select name="OUTPUT_FORMAT" id="output_format">
                                                        <option value="pdf" <TMPL_IF NAME='PDF'> selected</TMPL_IF>>PDF</option>
                                                        <option value="html" <TMPL_IF NAME='HTML'> selected</TMPL_IF>>HTML</option>
                                                        <option value="csv" <TMPL_IF NAME='Excel'> selected</TMPL_IF>>Excel</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                    </tbody>
                </table>
                <br/>
                <table border="0" cellpadding="2" cellspacing="0" width="100%">
                    <tbody>
                        <tr>
                            <td>&nbsp;<span class=red-text>Run Report:</span></td>
                            <td>
                                <input class="btn red-btn" type="button" name="Run" value=" Run" onClick="document.forms[0].RUN_REPORT.value=1;send_event('MYACCOUNT/SHOW_USER_REPORTING');showpw();">
                                <input class="btn grey-btn" type="button" name="Reset" value=" Reset" onClick="reset_form();">
                            </td>

                        </tr>

                    </tbody>
                </table>

                </fieldset>

        </div>
    </div>
</div>



<TMPL_INCLUDE NAME=myaccount_footer.tpl>
<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<INPUT TYPE="HIDDEN" NAME="RUN_REPORT" VALUE="">
<!--
<TMPL_IF HAS_FCRA_NON_FCRA>
<INPUT TYPE="HIDDEN" NAME="FCRA_NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=FCRA_PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_COUNT" VALUE="<TMPL_VAR NAME=FCRA_PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_TOTAL" VALUE="<TMPL_VAR NAME=FCRA_PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="FCRA_PAGE_RECORDS" VALUE="<TMPL_VAR NAME=FCRA_PAGE_RECORDS>">
</TMPL_IF>
-->
<span class="smallfont1">&nbsp;<br></span>
<!-- end myaccount_user_reporting.tpl -->
