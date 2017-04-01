<!-- begin manage_account_add_group.tpl -->
<div class="myaccount-section-title">Add Group</div>

    <div class="myaccount-containers">
        <div class="section">
            <div class="section-row">
				<table class="twoColTable">
                    <tbody>
                        <tr>
                            <td>
                                <div class="section-row child-divs-left" style="height: 36px;">
                                    <TMPL_INCLUDE NAME="myaccount/manage_account_add_group_buttons.tpl">
                                </div>
                                <table class="w100pc">
                                    <tr>
                                        <td colspan="2">
                                            <fieldset>
                                                <div>
                                                    <legend>Group Settings</legend>
                                                </div>
                                                <ul class="vertical-inputs">
                                                    <li>
                                                        <INPUT TYPE="text" placeholder="Group Name" NAME="GROUPNAME" SIZE="25" VALUE="<TMPL_VAR NAME=GROUPNAME>" MAXLENGTH=30>
                                                    </li>
                                                    <li>
                                                        <INPUT placeholder="Reference Code (optional)" TYPE="text" NAME="GROUP_REFERENCE_CODE" SIZE="25" VALUE="<TMPL_VAR NAME=GROUP_REFERENCE_CODE>" MAXLENGTH=30>
                                                    </li>
                                                </ul>
                                            </fieldset>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="unifont1" align="center" colspan="2">
                                           <TMPL_IF LOC>
                                                    <TMPL_INCLUDE NAME="loc/manage_account_disable_reports.tpl">
                                            <TMPL_ELSE>
                                           <TMPL_IF TCOL>
                                                    <TMPL_INCLUDE NAME="tcol/manage_account_disable_reports.tpl">
                                            <TMPL_ELSE>
                                           <TMPL_IF FCOL>
                                                    <TMPL_INCLUDE NAME="fcol/manage_account_disable_reports.tpl">
                                            <TMPL_ELSE>
                                                    <TMPL_INCLUDE NAME="manage_account_disable_reports.tpl">
                                            </TMPL_IF>
                                            </TMPL_IF>
                                            </TMPL_IF>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <fieldset>
                                                <div align="left" class="unifont1bold"><legend>Users</legend></div>
                                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">
                                                        <tr>
                                                            <td width="50%" valign="top">
                                                                <p class="medblack"><strong>Available Users:</strong></p>
                                                                <select class="medblack2" name="AvlUsers" size="18" id="AvlUsers" style="width:100%;height:400px;" multiple ondblclick="moveSelectedOptions(this.form['AvlUsers'],this.form['CurUsers'],true)">
                                                                    <tmpl_loop USER_LIST>
                                                                        <option value="<tmpl_var NAME='USERID'>"><TMPL_VAR NAME='LASTNAME'>, <TMPL_VAR NAME='FIRSTNAME'> (<TMPL_VAR NAME='LOGINID'>)</option>
                                                                    </tmpl_loop>
                                                                </select>
                                                            </td>
                                                            <td width="50%"  valign="top">
                                                                <p class="medblack"><strong>Users to Add:</strong></p>
                                                                <select class="medblack2" name="CurUsers" size="18" id="CurUsers" style="width:100%;height:400px;" multiple ondblclick="moveSelectedOptions(this.form['CurUsers'],this.form['AvlUsers'],true)">
                                                                    <tmpl_loop CURRENT_GROUP_USERS>
                                                                        <option value='<tmpl_var NAME='USER_ID'>'><TMPL_VAR NAME='USER_NAME'> (<TMPL_VAR NAME='USER_LOGINID'>)</option>
                                                                    </tmpl_loop>
                                                                </select>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center">
                                                                <span>
                                                                    <input class="medblack" type="button" name="right" value="&gt;&gt;" onclick="moveSelectedOptions(this.form['AvlUsers'],this.form['CurUsers'],true)">
                                                                </span>
                                                            </td>
                                                            <td align="center">
                                                                <span>
                                                                    <input class="medblack" type="button" name="left" value="&lt;&lt;" onclick="moveSelectedOptions(this.form['CurUsers'],this.form['AvlUsers'],true)">
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
                                                                </div
                                                            </td>
                                                        </tr>
                                                    </table>
                                            </fieldset>
                                            <TMPL_IF NAME=ALLOW_SKIP_TRACE>
                        <TMPL_IF COMPANY_DISABLE_SKIP_TRACE>
                        <INPUT TYPE=HIDDEN NAME="DISABLE_SKIP_TRACE" VALUE="1">
                        <TMPL_ELSE>
                                                <fieldset>
                                                    <div align="left" class="unifont1bold"><legend>Skip Wizard</legend></div>
                                                        <table border="0" cellpadding="0" cellspacing="0" width="99%">
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
                                                            <td colspan="2" style="font-size:8pt;">Individual access must be enabled for each user under the Manage Users tab.</td>
                                                        </table>
                                                </fieldset>
                                            </TMPL_IF>
                                            </TMPL_IF>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" align="center">
                                        </td>
                                    </tr>
                                </table>
                                <div class="section-row child-divs-left" style="height: 36px;">
                                    <TMPL_INCLUDE NAME="myaccount/manage_account_add_group_buttons.tpl">
                                </div>
                            </td>
                            <td width="375" align="left" valign="top">
                                <TMPL_IF NAME="IRS">
                                    <TMPL_INCLUDE NAME="irs/manage_account_disable_searches.tpl">
                                <TMPL_ELSE>
                                    <TMPL_IF NAME="HEA">
                                        <TMPL_INCLUDE NAME="hea/manage_account_disable_searches.tpl">
                                    <TMPL_ELSE>
                                        <TMPL_IF NAME="INS">
                                            <TMPL_INCLUDE NAME="ins/manage_account_disable_searches.tpl">
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
                                                            <TMPL_INCLUDE NAME="loc/manage_account_disable_searches.tpl">
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
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

<TMPL_INCLUDE NAME=myaccount_footer.tpl>

<INPUT type=hidden NAME=ADDEDUSERS value="">

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<!-- end manage_account_add_group.tpl -->
