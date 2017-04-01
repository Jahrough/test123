<table border="0" cellpadding="2" cellspacing="0" class="courttableborder">
<tr>
<td valign="top">

<table border="0" cellpadding="5" cellspacing="0" class="courtalert">
  <tr>
    <td class="smallfont1">
    <b>Subject:</b><br>
<TMPL_IF BUSINESS_CS>
    Name:<b><TMPL_VAR NAME="COMPANY_NAME"></b><BR>
  <TMPL_IF USE_THIS_AKA>
  <BR>
      <TMPL_LOOP USE_THIS_AKA>
  Using AKA: <b><TMPL_VAR NAME="COMPANY_NAME"></b> (This is the name that will be used in this court search)
      </TMPL_LOOP>
  </TMPL_IF>
<TMPL_ELSE>
    
    Name:<b><TMPL_VAR NAME="NAME_FIRST"><TMPL_IF NAME_MIDDLE> <TMPL_VAR NAME_MIDDLE></TMPL_IF> <TMPL_VAR NAME_LAST><TMPL_IF NAME_SUFFIX> <TMPL_VAR NAME_SUFFIX></TMPL_IF></b> DOB: <b><TMPL_VAR DOB></b><BR>
SSN:<b><TMPL_VAR SSN_DSP></b><TMPL_IF SSN_LOCATION> issued in <TMPL_VAR SSN_LOCATION> <TMPL_VAR SSN_DATE_RANGE></TMPL_IF><BR>
Age:<b><TMPL_VAR AGE></b>
<TMPL_IF USE_THIS_AKA>
<BR>
    <TMPL_LOOP USE_THIS_AKA>
Using AKA: <b><TMPL_VAR NAME="FIRST_NAME"><TMPL_IF MIDDLE_NAME> <TMPL_VAR MIDDLE_NAME></TMPL_IF> <TMPL_VAR LAST_NAME><TMPL_IF SUFFIX> <TMPL_VAR SUFFIX></TMPL_IF></b> (This is the name that will be used in this court search)
    </TMPL_LOOP>
</TMPL_IF>
<TMPL_IF USE_THIS_DOB>
<BR>
    <TMPL_LOOP USE_THIS_DOB>
Using DOB: <b><TMPL_VAR NAME="DOB_MONTH"><TMPL_IF DOB_DAY>/<TMPL_VAR DOB_DAY></TMPL_IF>/<TMPL_VAR DOB_YEAR></b> (This is the dob that will be used in this court search)
    </TMPL_LOOP>
</TMPL_IF>
</TMPL_IF>
<TMPL_IF REFERENCE_CODE><BR>Reference Code:<b><TMPL_VAR REFERENCE_CODE></b></TMPL_IF>
    </td>
  </tr>
</table>
</td>
</tr>
</table>
<br>
