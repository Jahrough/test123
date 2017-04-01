<!-- begin manage_account_error_mesg.tpl -->

	<script>
	var errortext = "";
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
	    <TMPL_IF NAME="ERROR_PASSWORD_INCORRECT">
		errortext += "Current password is incorrect.  Please re-enter.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_BADPASSWORDS">
		errortext += "For security purposes this password is not valid.\nPlease enter a different password.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_BAD_ENCPASSWORDS">
	      <TMPL_UNLESS NAME="ERROR_PASSWORD_BADPASSWORDS">
		errortext += "For security purposes this password is not valid.\nPlease enter a different password.\n";
	      </TMPL_UNLESS>
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_UNCHANGED">
	        errortext += "New password must be different from your current password.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_EXISTS_IN_HISTORY">
		errortext += "New password cannot be the same as any of the last <TMPL_VAR NAME=PASSWORD_HISTORY_LIMIT> previous passwords.\nPlease choose a different password.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_RECENTLY_USED">
		errortext += "New password cannot be the same as a password used in the past <TMPL_VAR NAME=PASSWORD_AGE_LIMIT> days.\nPlease choose a different password.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_CURRENT_PASSWORD_MISSING">
		errortext += "Current Password is required.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_NEW_PASSWORD_MISSING">
		errortext += "New Password is required.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_MISMATCH">
		errortext += "These passwords do not match.  Please re-enter.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_LENGTH">
		errortext += "Password must be at least " + "<TMPL_VAR NAME='MIN_PASSWORD_LENGTH'>" + " characters long.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_LOGINID">
		errortext += "Password cannot be the same as users login id.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_CONTAINS_LOGINID">
		errortext += "Login id cannot be part of the password.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_HAS_SPACES">
		errortext += "Password cannot include spaces.\n";
	    </TMPL_IF>
	    <TMPL_IF NAME="ERROR_PASSWORD_ELEMENTS">
		  <TMPL_IF SHA2_PASSWORD>
		errortext += "Password must contain any three of the following:\n - Uppercase characters\n - Lowercase characters\n - Numeric characters\n - Symbol characters\n";
		  <TMPL_ELSE>
                  <TMPL_IF PW_COMPLEXITY_FOUR>
                     errortext += "Password must contain all of the following:\n - Uppercase characters\n - Lowercase characters\n - Numeric characters\n - Symbol characters\n";
                  <TMPL_ELSE>
		errortext += "Password must contain any two of the following:\n - Alphabetic characters\n - Numeric characters\n - Symbol characters\n";
		  </TMPL_IF>
                  </TMPL_IF>
	    </TMPL_IF>
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_SYSTEMADMINISTRATOR_MISSING_EMAIL">
	    errortext += "No email address on file for your user account.\nPlease update your profile.\n";
	</TMPL_IF>
	<TMPL_IF NAME="ERROR_GENERAL">
	    errortext += "<TMPL_VAR NAME=ERROR_GENERAL>";
	</TMPL_IF>
	if (errortext !="") {
	    alert(errortext);
	}
	</script>
    <noscript>Your browser does not support JavaScript!</noscript>
<!-- end manage_account_error_mesg.tpl -->
