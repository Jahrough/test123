User List Report
<TMPL_UNLESS ERROR_MSG>
Group,Account Number,Last Name,First Name,Userid,Status
<TMPL_LOOP RESULT_LOOP><TMPL_IF NAME=GROUP_NAME><TMPL_VAR NAME=GROUP_NAME></TMPL_IF>,<TMPL_IF NAME=ACCOUNTNUMBER><TMPL_VAR NAME=ACCOUNTNUMBER></TMPL_IF>,<TMPL_IF NAME=LAST_NAME><TMPL_VAR LAST_NAME></TMPL_IF>,<TMPL_IF NAME=FIRST_NAME><TMPL_VAR FIRST_NAME></TMPL_IF>,<TMPL_IF NAME=USERID><TMPL_VAR NAME=USERID></TMPL_IF>,<TMPL_IF NAME=STATUS><TMPL_VAR NAME=STATUS></TMPL_IF>
<TMPL_IF ODD></TMPL_IF></TMPL_LOOP>
<TMPL_ELSE>
  <TMPL_VAR ERROR_MSG>
</TMPL_UNLESS>
