<!-- begin manage_account_chsecurity_q.tpl -->

<script>
    function check_vals(){
        var df = document.forms[0];
        var taken_questions = new Array();
        var error = 0;
        var error_msg = '';
        var error_focus = '';

        for (var i=0; i < df.elements.length; i++) {
            if(/SECURITY_QUESTION/.test(df.elements[i].name)) {
                if (taken_questions[df.elements[i].options[df.elements[i].options.selectedIndex].value]) {
                    error = 1;
                    error_msg = 'Please select unique question(s).'
                    error_focus = df.elements[i];
                }
                else {
                    taken_questions[df.elements[i].options[df.elements[i].options.selectedIndex].value] = 1;
                }
            }
            else if (/SECURITY_ANSWER/.test(df.elements[i].name)) {
            if (df.elements[i].value.length < <TMPL_VAR NAME=MIN_SEC_A_LENGTH> ||
                !/^[A-Za-z0-9 ]+$/.test(df.elements[i].value)	
                ) {
                    error = 1;
                    error_msg = 'Please enter a valid answer, at least <TMPL_VAR NAME=MIN_SEC_A_LENGTH> characters, alphanumeric only.'
                    error_focus = df.elements[i];
                    break;
                }
            }
        }

        if (error) {
            alert(error_msg);
            error_focus.focus();
            return false;
        }
        else {
            return send_event('MANAGE/UPDATE_SINGLE_USER_SEC_Q');
        }
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<div class="myaccount-section-title">Change Security Questions</div>

<input type="hidden" name="LOGINID" value="<TMPL_VAR NAME='LOGINID'>">

<div class="myaccount-containers" style="padding:0 150px"> 
    <div class="section">
        <TMPL_IF NAME="MESSAGE">
            <div class="section-row child-divs-center">
                <div>
                    <span><TMPL_VAR NAME="MESSAGE"></span>
                </div>
            </div>
        </TMPL_IF>

        <fieldset class="mgt15 pd15">
            <div class="section-row child-divs-center">
                <div style="vertical-align: top;">
                    <table style="width:100%;">
                        <tr>
                            <td align="center" valign="top">
                                <table align=center border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
                                    <TMPL_IF NAME="PASSWORD_CHANGE_DONE">
                                        <tr>
                                            <td colspan="2" height="40" class="unifont1">&nbsp;</td>
                                        </tr>
                                    <TMPL_ELSE>
                                        <tr>
                                            <td width="860" align="center" class="myaccountlabel">
                                                <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">
                                                    <div style="width:500;text-align:left;" class="unifont1">
                                                        <TMPL_VAR NAME="SECURITY_QUESTION_EDIT_DISABLED_MESSAGE">
                                                    </div>
                                                <TMPL_ELSE>
                                                    <p>
                                                        <b>Please select your security question(s) below and enter valid answer(s) (at least <TMPL_VAR NAME=MIN_SEC_A_LENGTH> characters, alphanumeric characters only)</b>
                                                    </p>
                                                </TMPL_IF>
                                                <br>

                                                <table align="center" border="0" cellpadding="2" cellspacing="0" width="600">
                                                    <TMPL_LOOP NAME=SECURITY_QUESTION_ANSWER_LOOP>
                                                        <tr>
                                                            <td class="unifont1" align="right">
                                                                <b><TMPL_VAR NAME=INDEX>. </b>
                                                            </td>
                                                            <td align="left" width="580">
                                                                <label for="q<TMPL_VAR NAME=INDEX>" style="display: none">Security Question</label>
                                                                <SELECT <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> id="q<TMPL_VAR NAME=INDEX>" NAME="SECURITY_QUESTION" SIZE="1" onchange="this.form.elements['a<TMPL_VAR NAME=INDEX>'].value=''">
                                                                    <option value="">--- Select One ---
                                                                    <TMPL_LOOP NAME=SECURITY_QUESTIONS>
                                                                        <option <TMPL_IF NAME=SELECTED>selected="selected" </TMPL_IF>value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
                                                                    </TMPL_LOOP>
                                                                </SELECT>
                                                            </td>
                                                        </tr> 
                                                        <tr>
                                                            <td class="unifont1" align="right">&nbsp;</td>
                                                            <td class="unifont1" align="left">
                                                                <label for="a<TMPL_VAR NAME=INDEX>" style="display: none">Security Answer</label>
                                                                <INPUT id="a<TMPL_VAR NAME=INDEX>" NAME="SECURITY_ANSWER" <TMPL_IF NAME="SECURITY_QUESTION_EDIT_DISABLED">DISABLED</TMPL_IF> SIZE="40" VALUE="<TMPL_VAR NAME="SECURITY_ANSWER">" MAXLENGTH=250>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">&nbsp;</td>
                                                        </tr>
                                                    </TMPL_LOOP>
                                                    <tr>
                                                        <td colspan=2 align="center">
                                                            <script>
                                                                document.forms[0].EVENT.value = 'MANAGE/UPDATE_SINGLE_USER_SEC_Q';
                                                            </script>
                                                            <noscript>Your browser does not support JavaScript!</noscript>
                                                            <table>
                                                                <tr>
                                                                    <td>
                                                                        <input name="back" tabindex="2" class="btn grey-btn" type="button" value="Back" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT');">
                                                                    </td>
                                                                    <td>
                                                                        <TMPL_IF NAME=SECURITY_QUESTION_EDIT_DISABLED>
                                                                            <input name="save" tabindex="1" class="btn red-btn" type="button" value="Reset" onClick="send_event('MANAGE/MANAGE_SINGLE_ACCOUNT_SEC_Q_RESET');"> 
                                                                        <TMPL_ELSE>
                                                                            <input name="save" tabindex="1" class="btn red-btn" type="button" value="Save" onClick="return check_vals()"> 
                                                                        </TMPL_IF>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </TMPL_IF>
                                </table>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </fieldset>

    </div>
</div>

<TMPL_INCLUDE NAME="manage_account_error_mesg.tpl">

<script>
    if (typeof errortext !== "undefined") {
        document.forms[0].SECURITY_ANSWER[0].focus();
    }
    else if (document.forms[0].SECURITY_QUESTION[0]) {
        document.forms[0].SECURITY_QUESTION[0].focus();
    }
</script>
<noscript>Your browser does not support JavaScript!</noscript>

<!-- end manage_account_chsecurity_q.tpl -->
