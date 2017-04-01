<!-- begin manage_account_update_group.tpl -->
<div class="myaccount-section-title">Update Group: <span style="color:#464646;"><TMPL_VAR NAME=GROUP_NAME></span></div>

<div class="myaccount-containers">
    <div class="section">
        <div class="section-row" style="display:inline-block;">
            <div class="left-col" style="width:<TMPL_IF NAME=ROW_LOCKED>100<TMPL_ELSE>50</TMPL_IF>%;">
                <div style="margin-bottom:12px;">
                    <TMPL_INCLUDE NAME="myaccount/manage_account_update_group_buttons_new.tpl">
                </div>
                
                <fieldset>
                    <div align="left" class="unifont1bold"><legend>Account Settings</legend></div>
                    <ul class="vertical-inputs">
                        <li>
                            <INPUT placeholder="Group Name" class="nsinputs" TYPE="text" NAME="GROUP_NAME" SIZE="25" VALUE="<TMPL_VAR NAME=GROUP_NAME>" MAXLENGTH=30>
                        </li> 
                        <li>
                            <INPUT placeholder="Reference Code" class="nsinputs" TYPE="text" NAME="GROUP_REFERENCE_CODE" SIZE="25" VALUE="<TMPL_VAR NAME=GROUP_REFERENCE_CODE>" MAXLENGTH=30>
                        </li>
                    </ul>
                </fieldset>
                
                <TMPL_IF LOC>
                    <TMPL_INCLUDE NAME="myaccount/manage/manage_account_disable_reports_loc.tpl">
                <TMPL_ELSE>
                    <TMPL_IF TCOL>
                        <TMPL_INCLUDE NAME="myaccount/manage/manage_account_disable_reports_tcol.tpl">
                    <TMPL_ELSE>
                        <TMPL_IF FCOL>
                            <TMPL_INCLUDE NAME="myaccount/manage/manage_account_disable_reports_fcol.tpl">
                        <TMPL_ELSE>
                            <TMPL_INCLUDE NAME="myaccount/manage/manage_account_disable_reports.tpl">
                        </TMPL_IF>
                    </TMPL_IF>
                </TMPL_IF>
                
                <fieldset>
                    <div><legend>Users</legend></div>
                    <div id="wrapper">
                        <table class="left" style="width:100%;">
                            <tr>
                                <td width="50%" valign="top">
                                    <p class="medblack"><Label for="AvlUsers"><strong>Available Users:</strong></Label></p>
                                    <select class="medblack2" name="AvlUsers" size="18" id="AvlUsers" style="width:100%;height:366px" multiple ondblclick="moveSelectedOptions(this.form['AvlUsers'],this.form['CurUsers'],true)">
                                        <tmpl_loop USER_LIST>
                                            <option value="<tmpl_var NAME='USER_ID'>"><TMPL_VAR NAME='USER_NAME'> (<TMPL_VAR NAME='USER_LOGINID'>)</option>
                                        </tmpl_loop>
                                    </select>
                                </td>
                                <td width="50%"  valign="top">
                                    <p class="medblack"><label for="CurUsers"><strong>Users in Group:</strong></label></p>
                                    <select class="medblack2" name="CurUsers" size="18" id="CurUsers" style="width:100%;height:366px" multiple ondblclick="moveSelectedOptions(this.form['CurUsers'],this.form['AvlUsers'],true)">
                                        <tmpl_loop CURRENT_GROUP_USERS>
                                            <option value='<tmpl_var NAME='USER_ID'>'><TMPL_VAR NAME='USER_NAME'> (<TMPL_VAR NAME='USER_LOGINID'>)</option>
                                        </tmpl_loop>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <span>
                                        <input class="btn darkgrey-btn" type="button" name="right" value="&gt;&gt;" style="padding-left:15px" onclick="moveSelectedOptions(this.form['AvlUsers'],this.form['CurUsers'],true)">
                                    </span>
                                </td>
                                <td align="center">
                                    <span>
                                        <input class="btn darkgrey-btn" type="button" name="left" value="&lt;&lt;" style="padding-left:15px" onclick="moveSelectedOptions(this.form['CurUsers'],this.form['AvlUsers'],true)">
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top">
                                    <div class="unifont1">
                                        <b>TO ADD A USER:</b>&nbsp;  To add users to this group, select a user from the Available Users column and click the  "&gt;&gt;" button to move the user to the Users in Group Column.  When you have finished selecting all of your users click the "Update Group" button which can be found at both the top and bottom of this page.
                                        <br><br>
                                        <b>TO REMOVE A USER:</b>&nbsp;  To remove a user from this group, select a user from the Users in Group column and click the "&lt;&lt;" button to move the user back to the Available Users column.  When you are finished removing users click the "Update Group" button which can be found at both the top and bottom of this page.
                                        <br><br>
                                        <b>TO ENABLE/DISABLE SEARCH/REPORT PERMISSIONS:</b>&nbsp; Click the Yes or No radio buttons for the searches and reports you wish to enable or disable.  When you are finished selecting the permissions click the "Update Group" button which can be found at both the top and bottom of this page.
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </fieldset>
                
                <TMPL_IF NAME=ALLOW_SKIP_TRACE>
                    <TMPL_IF COMPANY_DISABLE_SKIP_TRACE>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_SKIP_TRACE" VALUE="1">
                    <TMPL_ELSE>
                        <fieldset>
                            <div><legend>Skip Wizard</legend></div>
                            <table>
                                <tr>
                                    <td class="unifont1" nowrap align="left" width="200">Enable Skip Wizard:	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                    <td class="unifont1" align="left" width="220">
                                        <table border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td><INPUT TYPE=RADIO NAME=DISABLE_SKIP_TRACE VALUE='0' <TMPL_UNLESS NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_UNLESS> ></td>
                                                <td class="unifont1">Yes&nbsp;&nbsp;&nbsp;</td>
                                                <td><INPUT TYPE=RADIO NAME=DISABLE_SKIP_TRACE VALUE='1' <TMPL_IF NAME=DISABLE_SKIP_TRACE>CHECKED</TMPL_IF> ></td>
                                                <td class="unifont1">No</td>
                                            </tr>
                                        <tr>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" style="font-size:8pt;">Individual access must be enabled for each user under the Manage Users tab.</td>
                                <tr>
                            </table>
                        </fieldset>
                    </TMPL_IF>
                </TMPL_IF>
                
                <div style="margin-bottom:12px;">
                    <TMPL_INCLUDE NAME="myaccount/manage_account_update_group_buttons_new.tpl">
                </div>
            </div>
            <TMPL_UNLESS NAME=ROW_LOCKED>
                <style>
                    #SM_MONITOR_ROLES{width:100%}
                    #SM_MONITOR_ROLES>span{display:block}
                    #SM_MONITOR_ROLES>span:first-child{float: left}
                    #SM_MONITOR_ROLES>span:first-child+span{float: right}
                </style>
                <script>
                    $j(function(){
                        if($j('#SM_MONITOR_ROLES').length > 0){
                            var html = $j('#SM_MONITOR_ROLES').html().replace('&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Role:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;','');
                            html = html.replace('Read Only&nbsp;','Read Only');
                            $j('#SM_MONITOR_ROLES').html('<span>&nbsp;User Role:</span>'+$j.trim(html));
                        }
                    });
                </script>
                <noscript>Your browser does not support JavaScript!</noscript>
                <div class="right-col">
                    <TMPL_UNLESS HIDE_SEARCHES_REPORTS>
                        <TMPL_IF NAME="IRS">
                            <TMPL_INCLUDE NAME="irs/manage_account_disable_searches.tpl">
                        <TMPL_ELSE>
                            <TMPL_IF NAME="HEA">
                                <TMPL_INCLUDE NAME="hea/manage_account_disable_searches.tpl">
                            <TMPL_ELSE>
                                <TMPL_IF NAME="INS">
                                    <TMPL_INCLUDE NAME="ins/manage_account_disable_searches.tpl">
                                <TMPL_ELSE>
                                    <TMPL_IF NAME="LEG">
                                        <TMPL_INCLUDE NAME="leg/manage_account_disable_searches.tpl">
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="XBPS">
                                            <TMPL_INCLUDE NAME="xbps/manage_account_disable_searches.tpl">
                                        <TMPL_ELSE>
                                            <TMPL_IF NAME="GOV">
                                                <TMPL_INCLUDE NAME="gov/manage_account_disable_searches.tpl">
                                            <TMPL_ELSE>
                                                <TMPL_IF NAME="LE">
                                                    <TMPL_INCLUDE NAME="le/manage_account_disable_searches.tpl">
                                                <TMPL_ELSE>
                                                    <TMPL_IF NAME="COL">
                                                        <TMPL_INCLUDE NAME="col/manage_account_disable_searches.tpl">
                                                    <TMPL_ELSE>
                                                        <TMPL_IF NAME="TCOL">
                                                            <TMPL_INCLUDE NAME="tcol/manage_account_disable_searches.tpl">
                                                        <TMPL_ELSE>
                                                            <TMPL_IF NAME="FCOL">
                                                                <TMPL_INCLUDE NAME="fcol/manage_account_disable_searches.tpl">
                                                            <TMPL_ELSE>
                                                                <TMPL_IF NAME="LOC">
                                                                    <TMPL_INCLUDE NAME="../loc/manage_account_disable_searches.tpl">
                                                                <TMPL_ELSE>
                                                                    <TMPL_INCLUDE NAME="manage_account_disable_searches.tpl">
                                                                </TMPL_IF>
                                                            </TMPL_IF>
                                                        </TMPL_IF>
                                                    </TMPL_IF>
                                                </TMPL_IF>
                                            </TMPL_IF>
                                        </TMPL_IF>
                                    </TMPL_IF>
                                </TMPL_IF>
                            </TMPL_IF>
                        </TMPL_IF>
                    <TMPL_ELSE>
                        <TMPL_IF NAME="LE">
                            <!-- Case Connect -->
                            <TMPL_INCLUDE NAME=case_connect/admin_radio_block.tpl>
                        <TMPL_ELSE>
                            <TMPL_IF NAME="GOV">
                                <!-- Case Connect -->
                                <TMPL_INCLUDE NAME=case_connect/admin_radio_block.tpl>
                            </TMPL_IF>
                        </TMPL_IF>
                    </TMPL_UNLESS>
                </div>
            </TMPL_UNLESS>
        </div>
    </div>
</div>

<INPUT type=hidden NAME=ORIG_SYSTEMADMINISTRATOR value="<TMPL_VAR ORIG_SYSTEMADMINISTRATOR>">
<INPUT type=hidden NAME=ORIG_DA_ONLY value="<TMPL_VAR ORIG_DA_ONLY>">
<INPUT type=hidden NAME=ORIG_ALLOW_BATCH_JOBS value="<TMPL_VAR ORIG_ALLOW_BATCH_JOBS>">
<INPUT type=hidden NAME=ORIG_ALLOW_PHONE_BATCH_JOBS value="<TMPL_VAR ORIG_ALLOW_PHONE_BATCH_JOBS>">
<INPUT type=hidden NAME=GROUP_ID value="<TMPL_VAR GROUP_ID>">
<INPUT type=hidden NAME=ADDEDUSERS value="">

<TMPL_IF NAME=ROW_LOCKED>
<script>disable_form(document.forms[0]);</script>
<noscript>Your browser does not support JavaScript!</noscript>
</TMPL_IF>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_update_group.tpl -->
