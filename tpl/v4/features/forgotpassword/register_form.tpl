<!-- begin: register_form.tpl -->

<TMPL_IF NAME=SA>
	<TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">
		<TMPL_IF NAME="EMAIL_ADDR_NOMATCH">
			<p class="text12">
				<h3><TMPL_VAR NAME="EMAIL_ADDR"> needs to be updated below</h3>
			</p>
		</TMPL_IF>

                        <p class="text12">
                        Email Prefix:&nbsp;  <INPUT NAME="EMAIL_ADDR_PREFIX" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>"> @ <select name="EMAIL_DOMAIN"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
                        <br><br>

                        Confirm Email Prefix:&nbsp; <INPUT NAME="EMAIL_ADDR_PREFIX2" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX2></TMPL_UNLESS>"> @ <select name="EMAIL_DOMAIN2"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN2'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
                        <br><br>
                        </p>

                        <input name="EMAIL_ADDR" type="hidden" value=""/>

	<TMPL_ELSE>

	<p class="text12">

	Email:&nbsp; <input name="EMAIL_ADDR" value="<TMPL_VAR NAME=EMAIL_ADDR>" size=25 maxlength=50>
	
	<br><br>

	Email (re-enter):&nbsp; <input name="EMAIL_ADDR2" value="<TMPL_VAR NAME=EMAIL_ADDR2>" size=25 maxlength=50>

	<br><br>
	</p>

	</TMPL_IF>

	<p class="text12">

	Security question 1:&nbsp; <select name="SECURITY_Q1"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS1><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>
	Answer:&nbsp; <input name="SECURITY_A1" value="<TMPL_VAR NAME=SECURITY_A1>" size=25 maxlength=50>
	<br><br>

	Security question 2:&nbsp; <select name="SECURITY_Q2"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS2><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>
	Answer:&nbsp; <input name="SECURITY_A2" value="<TMPL_VAR NAME=SECURITY_A2>" size=25 maxlength=50>
	<br><br>

	Security question 3:&nbsp; <select name="SECURITY_Q3"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS3><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>
	Answer:&nbsp; <input name="SECURITY_A3" value="<TMPL_VAR NAME=SECURITY_A3>" size=25 maxlength=50>
	<br><br>

	Security question 4:&nbsp; <select name="SECURITY_Q4"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS4><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>
	Answer:&nbsp; <input name="SECURITY_A4" value="<TMPL_VAR NAME=SECURITY_A4>" size=25 maxlength=50>
	<br><br>

	Login ID:&nbsp; <input name="LOGINID" value="<TMPL_VAR NAME=LOGINID>" size=15 maxlength=20>
	<br><br>

	</p>


  <TMPL_ELSE>

  <TMPL_IF NAME="ENABLE_EMAIL_DOMAIN">

	<TMPL_IF NAME="EMAIL_ADDR_NOMATCH">

	<p class="text12">

	<h3><TMPL_VAR NAME="EMAIL_ADDR"> needs to be updated below</h3>

	<br><br>

	</p>

	</TMPL_IF>

	<p class="text12">

	Email Prefix:&nbsp; <INPUT NAME="EMAIL_ADDR_PREFIX" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX></TMPL_UNLESS>"> @ <select name="EMAIL_DOMAIN"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
	<br><br>

	Confirm Email Prefix:&nbsp; <INPUT NAME="EMAIL_ADDR_PREFIX2" VALUE="<TMPL_UNLESS NAME="EMAIL_ADDR_NOMATCH"><TMPL_VAR NAME=EMAIL_ADDR_PREFIX2></TMPL_UNLESS>"> @ <select name="EMAIL_DOMAIN2"><option value="" selected>Select One</option><TMPL_LOOP NAME="EMAIL_DOMAIN_LIST"><option<TMPL_IF NAME='EMAIL_CURR_DOMAIN2'> selected</TMPL_IF> value="<TMPL_VAR NAME='EMAIL_DOMAIN'>"><TMPL_VAR NAME='EMAIL_DOMAIN'></option></TMPL_LOOP></select>
	<br><br>

	<input name="EMAIL_ADDR" type="hidden" value=""/>

	</p>

	<TMPL_ELSE>

	<p class="text12">

	Email:&nbsp; <input name="EMAIL_ADDR" value="<TMPL_VAR NAME=EMAIL_ADDR>" size=25 maxlength=50>
	<br><br>

	Email (re-enter):&nbsp; <input name="EMAIL_ADDR2" value="<TMPL_VAR NAME=EMAIL_ADDR2>" size=25 maxlength=50>
	<br><br>

	</p>

	</TMPL_IF>

	<p class="text12">

	Security question:&nbsp; <select name="SECURITY_Q1"><option value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS1><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>

	Answer:&nbsp; <input name="SECURITY_A1" value="<TMPL_VAR NAME=SECURITY_A1>" size=25 maxlength=50>
	<br><br>

	Security question:&nbsp; <select name="SECURITY_Q2"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS2><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>

	Answer:&nbsp; <input name="SECURITY_A2" value="<TMPL_VAR NAME=SECURITY_A2>" size=25 maxlength=50>
	<br><br>

	Security question:&nbsp; <select name="SECURITY_Q3"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS3><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>

	Answer:&nbsp; <input name="SECURITY_A3" value="<TMPL_VAR NAME=SECURITY_A3>" size=25 maxlength=50>
	<br><br>

	Security question:&nbsp; <select name="SECURITY_Q4"><option SELECTED value="">Select one ..<TMPL_LOOP NAME=SECURITY_QUESTIONS4><option <TMPL_VAR NAME=SELECTED> value="<TMPL_VAR NAME=VALUE>"><TMPL_VAR NAME=DESCRIPTION></TMPL_LOOP></select>
	<br><br>

	Answer:&nbsp; <input name="SECURITY_A4" value="<TMPL_VAR NAME=SECURITY_A4>" size=25 maxlength=50>
	<br><br>



</TMPL_IF>

<!-- end: register_form.tpl -->
