<!-- begin security_body.tpl -->

<link href="<TMPL_VAR NAME='CSSPATH'>/jquery.dataTables.css" rel="stylesheet" type="text/css">
<script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.dataTables.js"></script>
<noscript>Your browser does not support JavaScript!</noscript>
<script>

$j(function() {
    $j('#dataTables').DataTable({
          paging: false,
          searching: false,
          info: false
     });
});

function refresh_page() {
    if (checkdate()) {
	send_event('SECURITY/SHOW_SECURITY', '<TMPL_VAR NAME=ACTION_ADMIN>')
    }
}

</script>
<noscript>Your browser does not support JavaScript!</noscript>
<style>
table.dataTable.no-footer {
    border-bottom: none;
}
</style>

        <div class="myaccount-section-title">Company Security</div>
        <div class="myaccount-containers">
            <div class="sections">
                <div class="section-row">
                    <fieldset>
                        <table border="0" cellpadding="2" cellspacing="0" width="100%">
                            <tr>
                                <td class="bold" style="text-align:right">
                                    <span id="typ">Type:</span>
                                </td>

                               <td>
                                    <table border="0" width="100%" cellpadding="2">
                                        <tr>
                                            <td class="unifont1">
                                                <input aria-labelledby="typ" id="all" type="radio" value="" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=ALL_CHECKED>><label for="all">All</label>
                                                <input aria-labelledby="typ" id="suc" type="radio" value="SUCCESS" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=SUCCESS_CHECKED>><label for="suc">Success</label>
                                                <input aria-labelledby="typ" id="fail" type="radio" value="FAILED" name="STATUS" class="myaccountbody" <TMPL_VAR NAME=FAILED_CHECKED>><label for="fail">Failed</label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                  <a <TMPL_IF NAME=PREV_ON>class="btn darkgrey-btn" href="javascript:send_event('SECURITY/SHOW_SECURITY_PREV', '<TMPL_VAR NAME=ACTION_ADMIN>')"<TMPL_ELSE>class="btn grey-btn disabled"</TMPL_IF>>< Back</a>
                                  <a class="btn red-btn" href="javascript:refresh_page();">Refresh</a>
                                  <a <TMPL_IF NAME=NEXT_ON>class="btn darkgrey-btn" href="javascript:send_event('SECURITY/SHOW_SECURITY_NEXT', '<TMPL_VAR NAME=ACTION_ADMIN>')"<TMPL_ELSE>class="btn grey-btn disabled"</TMPL_IF>>Next ></a>
                                </td>
                            </tr>

                            <tr>
                                <td class="bold" style="text-align:right" width="15%">
                                    <span class=red-text>*&nbsp;</span>Date Range:
                                </td>
                                <td>
                                    <table border="0" width="100%" cellpadding="2">
                                        <tr>
                                            <td class="unifont1">
                                                <a class="myaccLnk" href="javascript:void(0);" onClick="displayDatePicker('SECURITY_DATE_FROM','below');"><b><label for="SECURITY_DATE_FROM">From</label></a>:</b>&nbsp;                                                
                                                <input onClick="displayDatePicker('SECURITY_DATE_FROM','below');" type=text name=SECURITY_DATE_FROM id="SECURITY_DATE_FROM" value="<TMPL_VAR NAME=SECURITY_DATE_FROM>" size="8" maxlength=10>
                                                &nbsp;&nbsp;<a class="myaccLnk" href="javascript:void(0);" onClick="displayDatePicker('SECURITY_DATE_TO','below');"><b><label for="SECURITY_DATE_TO">To</label></a>:</b>&nbsp;
                                                <input onClick="displayDatePicker('SECURITY_DATE_TO','below');" type=text name=SECURITY_DATE_TO id="SECURITY_DATE_TO" value="<TMPL_VAR NAME=SECURITY_DATE_TO>" size="8" maxlength=10>&nbsp;<spanclass="smallfont1">(MM/DD/YYYY)</span>&nbsp;&nbsp;<b>Total:</b>&nbsp; <TMPL_VAR NAME=PAGE_RECORDS></td>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>

                        <TMPL_IF NAME="DATE_ERROR">
                            <tr>
                                <td colspan="2" align="center">
                                    <span>
                                        <font color="myaccLnk"><b><TMPL_VAR NAME=DATE_ERROR></b>&nbsp;&nbsp;</font>
                                    </span>
                                </td>
                            </tr>
                        </TMPL_IF>

                        <tr>
                            <TMPL_IF NAME=SYSTEMADMINISTRATOR>
                                <td class="bold" style="text-align:right" width="15%">
                                    <span class="unifont1"><b><label for="login_fltr">User:</label></b>&nbsp;&nbsp;</span>
                                </td>
                                <td class="unifont1" align="left">
                                   <table border="0" width="100%" cellpadding="2">
                                        <tr>
                                            <td class="unifont1">
                                                <SELECT id="login_fltr" NAME=SECURITY_LOGIN_FILTER>
                                                    <TMPL_LOOP NAME=USER_SELECT_LOOP>
                                                        <OPTION VALUE="<TMPL_VAR NAME=LOGINID>" <TMPL_IF NAME="LOGIN_SELECT">SELECTED</TMPL_IF>><TMPL_VAR NAME=LOGINID> - <TMPL_VAR NAME=FIRSTNAME> <TMPL_VAR NAME=LASTNAME></OPTION>
                                                    </TMPL_LOOP>
                                                </SELECT>
                                                &nbsp;&nbsp;&nbsp;&nbsp;<b><a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
                                            </td>
                                        </tr>
                                    </table>
                                </td>
								<td>
									<a class="btn red-btn" href="javascript:send_event('SECURITY/SHOW_RESTRICT_IP_HELP')">Restrict Access by IP</a>
								</td>
                            <TMPL_ELSE>
                                <td colspan="2" class="bold" style="text-align:right">
                                    &nbsp;&nbsp;&nbsp;&nbsp;<b><a class="myaccLnk" href="javascript:send_event('MYACCOUNT/SHOW_PREFERENCES')">Time Zone:</a></b> <TMPL_VAR TZNAME> (<TMPL_VAR OFFSET>)
                                </td>
                            </TMPL_IF>

                        </tr>


                        </table>
                    </fieldset>


                    <fieldset>
                        <br/>
                        <table id="dataTables" class="display" cellspacing="0" width="100%">
                            <thead>
                                  <TR class="myaccountbody">
                                    <th id="col_act"><b>Activity</b></th>
                                    <th id="col_stus"><b>Status</b></th>
                                    <th id="col_login"><b>Loginid</b></th>
                                    <th id="col_ip_brw"><b>IP, Browser</b></th>
                                    <th id="col_src"><b>Source</b></th>
                                    <th id="col_dt_tm"><b>Date &amp; Time</b></th>
                                  </TR>
                            </thead>
                            <TMPL_LOOP NAME="SEARCH_RESULTS">
                              <tr>
                                  <td headers="col_act"><TMPL_VAR NAME="activity"></td>
                                  <td headers="col_stus"><TMPL_VAR NAME="status"></td>
                                  <td headers="col_login"><TMPL_VAR NAME="loginid"></td>
                                  <td headers="col_ip_brw"><TMPL_VAR NAME="ip"><br><TMPL_VAR NAME="browser"></td>
                                  <td headers="col_src"><TMPL_VAR NAME="client_type"></td>
                                  <td headers="col_dt_tm"><TMPL_VAR NAME="timestamp"></td>
                              </tr>
                            </TMPL_LOOP>
                        </table>
                     </fieldset>
                </div>
            </div>
        </div>



<br/>
<br/>

<INPUT TYPE="HIDDEN" NAME="NEXT_PAGE_DATE" VALUE="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PREV_PAGE_DATE" VALUE="<TMPL_VAR NAME=PREV_PAGE_DATE>">
<INPUT TYPE="HIDDEN" NAME="PAGE_COUNT" VALUE="<TMPL_VAR NAME=PAGE_COUNT>">
<INPUT TYPE="HIDDEN" NAME="PAGE_TOTAL" VALUE="<TMPL_VAR NAME=PAGE_TOTAL>">
<INPUT TYPE="HIDDEN" NAME="PAGE_RECORDS" VALUE="<TMPL_VAR NAME=PAGE_RECORDS>">
<span class="smallfont1">&nbsp;<br></span>
<!-- end security_body.tpl -->
