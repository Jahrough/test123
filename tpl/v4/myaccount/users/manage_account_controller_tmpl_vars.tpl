
              /* begin manage_account_controller_tmpl_vars.tpl */


                // test condions
                var tmplDisabled                = "<!-- <TMPL_VAR NAME='DISABLED'> -->";
                var tmplDepartments             = "<!-- <TMPL_VAR NAME='DEPARTMENTS'> -->";
                var tmplOtherDepartments         ="<!-- <TMPL_VAR NAME='OTHER_DEPT'> -->";
                var tmplDivisionId              = "<!-- <TMPL_VAR NAME='DIVISION_ID'> -->";
                var tmplActivityCampus          = "<!-- <TMPL_VAR NAME='ACTIVITY_CAMPUS'> -->";
                var tmplFunctionArea            = "<!-- <TMPL_VAR NAME='FUNCTION_AREA'> -->";
                var tmplPositionSerries         = "<!-- <TMPL_VAR NAME='POSITION_SERIES'> -->";
                var tmplStateDropDown           = "<!-- <TMPL_VAR NAME='STATE_DROP_DOWN_LIST'> -->";
                var tmplAllFunctionAreas        = "<!-- <TMPL_VAR NAME='ALL_FUNCTION_AREA'> -->";
                var tmplSha2Password            = "<!-- <TMPL_VAR NAME='SHA2_PASSWORD'> -->";
                var tmplMinimumPasswordLength   = "<!-- <TMPL_VAR NAME='MINIMUM_PASSWORD_LENGTH'> -->";
                var tmplInternalCompany         = "<!-- <TMPL_VAR NAME='INTERNAL_COMPANY'> -->";
                var tmplEctPiiData              = "<!-- <TMPL_VAR NAME='ECT_COLLECT_PII_DATA'> -->";
                var tmplShowRenamedUsers        = "<!-- <TMPL_VAR name='SHOWING_RENAMED_USERS'> -->";
                var tmplSuspendedDisplay        = "<!-- <TMPL_VAR NAME='SUSPENDED_DISPLAY'> -->";
                var tmplMultipleGroups          = "<!-- TMPL_VAR MULTIPLE_BILLGROUPS-->";


                // error 
                var tmplErrorMsg                = "<!-- <TMPL_VAR NAME='ERROR_MSG'> -->";
                var tmplErrorMessage            = "<!-- <TMPL_VAR NAME='ERROR_MESSAGE'> -->";
                var tmplErrorGeneral            = "<!-- <TMPL_VAR NAME='ERROR_GENERAL'> -->";
                var tmplErrorUnknownUser        = "<!-- <TMPL_VAR NAME='ERROR_UNKNOWN_USER'> -->";
                var tmplErrorNoSelect           = "<!-- <TMPL_VAR NAME='ERROR_NOSELECT'> -->";
                var tmplErrorSecuritySelect     = "<!-- <TMPL_VAR NAME='ERROR_SECURITY_SELECT'> -->";

                var tmplShowFutureDeactivationDate = "<!-- <TMPL_VAR NAME='SHOW_FUTURE_DEACTIVATION_DATE'> -->";
                var tmplFutureDeactivationDate     = "<!-- <TMPL_VAR NAME='FUTURE_DEACTIVATION_DATE'> -->";

                // user
                var tmplAdminLoginId            = "<!-- <TMPL_VAR name='USER_ADDED'> -->";
                var tmplFirstname               = "<!-- <TMPL_VAR name='_FIRSTNAME'> -->";
                var tmplLastname                = "<!-- <TMPL_VAR name='_LASTNAME'> -->";
                var tmplLoginId                 = "<!-- <TMPL_VAR name='_LOGINID'> -->";
                var tmplNewLoginId              = "<!-- <TMPL_VAR name='_NEW_LOGINID'> -->";
                var tmplOldLoginId              = "<!-- <TMPL_VAR name='_OLD_LOGINID'> -->";
                var tmplShowingRenamedUsers     = "<!-- <TMPL_VAR name='_SHOWING_RENAMED_USERS'> -->"; // test
                var tmplRenamedDate             = "<!-- <TMPL_VAR name='_RENAMED_DATE'> -->";
                var tmplUserId                  = "<!-- <TMPL_VAR name='_USERID'> -->";
                var tmplEmployeeId              = "<!-- <TMPL_VAR NAME='_EMPLOYEEID'> -->";
                var tmplPhoneNumber             = "<!-- <TMPL_VAR NAME='_PHONE_VOICE1'> -->";
                var tmplBillgroup               = "<!-- <TMPL_VAR NAME='_COMPANYID'> -->";
                var tmplMultipleBillgroups      = "<!-- <TMPL_VAR NAME='_MULTIPLE_BILLGROUPS'> -->";
                var tmplEncryptedPassword       = "<!-- <TMPL_VAR NAME='encrypted_password'> -->";
                var tmplEmailAddress            = "<!-- <TMPL_VAR NAME='EMAIL_ADDR'> -->";
                var tmplPendingAdmins           = "<!-- <TMPL_VAR NAME='PENDING_ADMINS'> -->";
                var tmplPendingAdminStr         = "See instructions on adding System Administrators to your account";

                // functions
                var tmplPersonStatus            = get_person_status();
                var tmplAccessLevel             = get_access_level();

                function get_person_status () 
                {
                    var tmplPersonStatus_a  = "<!-- <TMPL_VAR NAME='PERSON_STATUS_A'> -->";
                    var tmplPersonStatus_i  = "<!-- <TMPL_VAR NAME='PERSON_STATUS_I'> -->";
                    var tmplPersonStatus_p  = "<!-- <TMPL_VAR NAME='PERSON_STATUS_P'> -->";
                    var tmplPersonStatus_d  = "<!-- <TMPL_VAR NAME='PERSON_STATUS_D'> -->";

                    if (tmplPersonStatus_a === '1' ) { return "Active"; }
                    if (tmplPersonStatus_i === '1' ) { return "Inactive"; }
                    if (tmplPersonStatus_p === '1' ) { return "Pending"; }
                    if (tmplPersonStatus_d === '1' ) { return "Declined"; }
                    return "Undefined";
                }

                function get_access_level (adminBool) {

                    if ( adminBool  ) { 

/*
                        $(".switch-input2").attr("checked", true);
                        $("#admin_actions").slideDown();
                        $("#access1").prop("checked", true);
                        $("#admin_actions").show();
                        $(".clone_option").hide();
*/
                        return "Admin";
                    } else {

/*
                        $(".switch-input2").attr("checked", false);
                        $("#admin_actions").slideUp();
                        $("#access2").prop("checked", true);
                        $("#admin_actions").hide();
*/
                        return  "User";
                   }
               }


              /* TMPL LOOPS */

                // start buildUuserList 
                function buildUserListHashArray () {

                    var loopContents = new Array();

                    <!-- TMPL_LOOP NAME=USER_LIST -->

                        var tmplVariables = {}; // declare hash

                        tmplVariables ['hide_entry']                    = "<!-- TMPL_VAR name='HIDE_ENTRY' -->";
                        tmplVariables ['hide_entry']                    = "<!-- TMPL_VAR name='HIDE_ENTRY' -->";
                        tmplVariables ['admin_access']                  = "<!-- TMPL_VAR name='SYSTEMADMINISTRATOR' -->"; 
                        tmplVariables ['lastname']                      = "<!-- TMPL_VAR name='LASTNAME' -->"; 
                        tmplVariables ['firstname']                     = "<!-- TMPL_VAR name='FIRSTNAME' -->";
                        tmplVariables ['show_renamed_users']            = "<!-- TMPL_VAR name='SHOWING_RENAMED_USERS' -->";
                        tmplVariables ['new_loginid']                   = "<!-- TMPL_VAR name='NEW_LOGINID' -->";
                        tmplVariables ['old_loginid']                   = "<!-- TMPL_VAR name='OLD_LOGINID' -->";
                        tmplVariables ['renamed_date']                  = "<!-- TMPL_VAR name='RENAMED_DATE' -->";
                        tmplVariables ['loginid']                       = "<!-- TMPL_VAR name='LOGINID' -->";
                        tmplVariables ['future_deactivation_date']      = "<!-- TMPL_VAR name='FUTURE_DEACTIVATION_DATE' -->";
                        tmplVariables ['show_future_deactivation_date'] = "<!-- TMPL_VAR name='SHOW_FUTURE_DEACTIVATION_DATE' -->";
                        tmplVariables ['xml_user']                      = "<!-- TMPL_VAR name='XML_USER' -->";
                        tmplVariables ['security_locked']               = "<!-- TMPL_VAR name='SECURITY_LOCKED' -->";
                        tmplVariables ['suspended']                     = "<!-- TMPL_VAR name='SUSPENDED' -->";
                        tmplVariables ['companyid']                     = "<!-- TMPL_VAR name='COMPANYID' -->";
                        tmplVariables ['employeeid']                    = "<!-- TMPL_VAR name='EMPLOYEEID' -->";

                         loopContents.push(tmplVariables); // push hash to return array

                    <!-- /TMPL_LOOP -->

                    return loopContents; 
                }
                // end buildUuserListHashArray 

/*
                // billgroup dropdown menu
                function buildBillgroupHashArray() {

                    var loopContents = new Array();

                    <!-- TMPL_LOOP NAME=BILLGROUPLOOP -->

                        var tmplVariables = {}; // declare hash

                        tmplVariables ['company_name']  = "<!-- TMPL_VAR name='CompanyName' -->";
                        tmplVariables ['company_id']    = "<!-- TMPL_VAR name='CompanyId' -->";

                        loopContents.push(tmplVariables); // push hash to return array

                    <!-- /TMPL_LOOP -->

                    return loopContents;
                }
                // end billgroup dropdown menu
*/



                // billgroup dropdown menu
                function createBillgroupDropdown() {

                    var htmlBuffer = [];

                    if ( ! tmplMultipleGroups ) { 

                        <!-- TMPL_LOOP NAME=BILLGROUPLOOP -->

                            var tmplCompanyName = "<!-- TMPL_VAR CompanyName -->";
                            var tmplCompanyId = "<!-- TMPL_VAR CompanyId -->";

                            var htmlStr = tmplCompanyName;
                            htmlBuffer.push( htmlStr );

                            htmlStr = "<input type='hidden' name='SELECT_BILLGROUP' value='" + tmplCompanyId + "'>";
                            htmlBuffer.push( htmlStr );

                        <!-- /TMPL_LOOP -->

                        var bufStr = htmlBuffer.join('\n');
                        //$(".billgroup_dropdown").html(bufStr);

                        return bufStr;
                    }

                    htmlBuffer.push( "<select name='SELECT_BILLGROUP' id='billgroup' title='Billgroup'>" );
                    htmlBuffer.push( "<option value='all'>Search All Billgroups</option>");

                    <!-- TMPL_LOOP NAME=BILLGROUPLOOP -->

                        var tmplSelected       = "<!-- TMPL_VAR COMPANY_SELECTED -->";
                        var tmplCompanyName    = "<!-- TMPL_VAR CompanyName -->";
                        var tmplCompanyId      = "<!-- TMPL_VAR CompanyId -->";

                        var htmlStr     = "<option value='"+tmplCompanyId+"'>";

                        if ( tmplSelected ) { htmlStr += "'selected'"; }

                        htmlStr += tmplCompanyName+"</option>";
                        htmlBuffer.push( htmlStr );

                    <!-- /TMPL_LOOP -->

                    htmlBuffer.push( "</select>");
                    var bufStr = htmlBuffer.join('\n');

                    //$(".billgroup_dropdown").html(bufStr);
                    return bufStr;
                }
                // end billgroup dropdown menu



              /*end manage_account_controller_tmpl_vars.tpl */
