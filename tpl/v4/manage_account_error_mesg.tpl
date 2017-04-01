<!-- begin manage_account_error_mesg.tpl -->

	<script>
	var errortext = "";
	var errorModalIdx = "";
	<TMPL_IF NAME="ERROR_BADEMAIL">
	    errortext += "The email is invalid.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_FIRSTNAME">
	    errortext += "First Name is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_LASTNAME">
	    errortext += "Last Name is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_EMPLOYEEID">
	    errortext += "Employee ID is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_INVALID_EMPLOYEEID">
	    errortext += "Employee ID is not valid.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_LOGINID">
	    errortext += "Valid Login ID is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_ACTIVITY_CAMPUS">
	    errortext += "Activity/Campus is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_FUNCTION_AREA">
	    errortext += "Function/Area is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_POSITION_SERIES">
	    errortext += "Position Series is required.\n";
	</TMPL_IF>
	<TMPL_IF NAME="SITEKEY_ERROR">
	    errortext += "Your image phrase should be between 1 and 16 characters and not contain your password or userid.\n";
	</TMPL_IF>
    <TMPL_IF NAME="ERROR_INVALID_PASSWORD">
      errorModalIdx =  "INVALID_PASSWORD";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_BADPASSWORDS">
      errorModalIdx =  "PASSWORD_BADPASSWORDS";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_BAD_ENCPASSWORDS">
      errorModalIdx =  "PASSWORD_BAD_ENCPASSWORDS";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_CURRENT_PASSWORD_MISSING">
      errorModalIdx =  "CURRENT_PASSWORD_MISSING";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_INCORRECT">
      errorModalIdx =  "PASSWORD_INCORRECT";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_NEW_PASSWORD_MISSING">
      errorModalIdx =  "NEW_PASSWORD_MISSING";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_MISMATCH">
      errorModalIdx =  "PASSWORD_MISMATCH";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_LENGTH">
      errorModalIdx =  "PASSWORD_LENGTH";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_LOGINID">
      errorModalIdx =  "PASSWORD_LOGINID";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_CONTAINS_LOGINID">
      errorModalIdx =  "PASSWORD_CONTAINS_LOGINID";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_HAS_SPACES">
      errorModalIdx =  "PASSWORD_HAS_SPACES";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_ELEMENTS_3">
      errorModalIdx =  "PASSWORD_ELEMENTS_3";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_ELEMENTS">
      errorModalIdx =  "PASSWORD_ELEMENTS";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_UNCHANGED">
      errorModalIdx =  "PASSWORD_UNCHANGED";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_CONFIRM_PASSWORD">
      errorModalIdx =  "CONFIRM_PASSWORD";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_EXISTS_IN_HISTORY">
      errorModalIdx =  "PASSWORD_EXISTS_IN_HISTORY";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_PASSWORD_RECENTLY_USED">
      errorModalIdx =  "PASSWORD_RECENTLY_USED";
    </TMPL_IF>
    <TMPL_IF NAME="ERROR_COULDNT_SAVE_PREFS">
      errorModalIdx =  "COULDNT_SAVE_PREFS";
    </TMPL_IF>
	<TMPL_IF NAME="ERROR_SYSTEMADMINISTRATOR_MISSING_EMAIL">
	    errortext += "No email address on file for your user account.\nPlease update your profile.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_GENERAL">
	    errortext += "<TMPL_VAR NAME=ERROR_GENERAL>";
	</TMPL_IF>
            $(function(){
                if (errorModalIdx != "") {
                    show_err_msg_modal("Unable to Change Password", errorModalIdx);
                } else {
                    if (errortext != "") {
                        alert(errortext);
                    }
                }
            });
	</script>
    <noscript>Your browser does not support JavaScript!</noscript>
<!-- end manage_account_error_mesg.tpl -->
