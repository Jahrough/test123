<!-- begin: register_form.tpl -->
<table border=0 class="unifont2">

<TMPL_IF NAME=SA>
    <tr>
    <td valign=top><label for="ml_adr"><b>Email:</b></label></td>
    <td valign=top><b><TMPL_VAR NAME=EMAIL_ADDR></b></td>
    </tr>

    <tr>
    <td colspan="2">&nbsp; </td>
    </tr>

    <tr>
    <td valign=top><label for="q1">Security question 1:</label></td>
    <td valign=top>
    <select id="q1" name="SECURITY_Q1">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS1>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans1">Answer:</label></td>
    <td valign=top><input id="ans1" name="SECURITY_A1" value="<TMPL_VAR NAME=SECURITY_A1>" size=25 maxlength=50></td>
    </tr>


    <tr>
    <td valign=top><label for="q2">Security question 2:</label></td>
    <td valign=top>
    <select id="q2" name="SECURITY_Q2">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS2>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans2">Answer:</label></td>
    <td valign=top><input id="ans2" name="SECURITY_A2" value="<TMPL_VAR NAME=SECURITY_A2>" size=25 maxlength=50></td>
    </tr>

    <tr>
    <td valign=top><label for="q3">Security question 3:</label></td>
    <td valign=top>
    <select id="q3" name="SECURITY_Q3">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS3>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans3">Answer:</label></td>
    <td valign=top><input id="ans3" name="SECURITY_A3" value="<TMPL_VAR NAME=SECURITY_A3>" size=25 maxlength=50></td>
    </tr>


    <tr>
    <td valign=top><label for="q4">Security question 4:</label></td>
    <td valign=top>
    <select id="q4" name="SECURITY_Q4">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS4>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans4">Answer:</label></td>
    <td valign=top><input id="ans4" name="SECURITY_A4" value="<TMPL_VAR NAME=SECURITY_A4>" size=25 maxlength=50></td>
    </tr>



    <tr>
    <td valign=top><label for="login_id">Login ID:</label></td>
    <td valign=top><input id="login_id" name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20></td>
    </tr>

<TMPL_ELSE>

    <tr>
    <td valign=top><label for="ml_adr"><b>Email:</b></label></td>
    <td valign=top><b><TMPL_VAR NAME=EMAIL_ADDR></b></td>
    </tr>

    <tr>
    <td colspan="2">&nbsp; </td>
    </tr>

    <tr>
    <td valign=top><label for="q1">Security question:</label></td>
    <td valign=top>
    <select id="q1" name="SECURITY_Q1">
    <option value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS1>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans1">Answer:</label></td>
    <td valign=top><input id="ans1" name="SECURITY_A1" value="<TMPL_VAR NAME=SECURITY_A1>" size=25 maxlength=50></td>
    </tr>
    <tr>
    <td valign=top><label for="q2">Security question:</label></td>
    <td valign=top>
    <select id="q2" name="SECURITY_Q2">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS2>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans2">Answer:</label></td>
    <td valign=top><input id="ans2" name="SECURITY_A2" value="<TMPL_VAR NAME=SECURITY_A2>" size=25 maxlength=50></td>
    </tr>
    <tr>
    <td valign=top><label for="q3">Security question:</label></td>
    <td valign=top>
    <select id="q3" name="SECURITY_Q3">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS3>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans3">Answer:</label></td>
    <td valign=top><input id="ans3" name="SECURITY_A3" value="<TMPL_VAR NAME=SECURITY_A3>" size=25 maxlength=50></td>
    </tr>
    <tr>
    <td valign=top><label for="q4">Security question:</label></td>
    <td valign=top>
    <select id="q4" name="SECURITY_Q4">
    <option SELECTED value="">Select one ..
    <TMPL_LOOP NAME=SECURITY_QUESTIONS4>
    <option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION>
    </TMPL_LOOP>
    </select>
    </td>
    </tr>
    <tr>
    <td valign=top><label for="ans4">Answer:</label></td>
    <td valign=top><input id="ans4" name="SECURITY_A4" value="<TMPL_VAR NAME=SECURITY_A4>" size=25 maxlength=50></td>
    </tr>

</TMPL_IF>

</table>
<!-- end: register_form.tpl -->
