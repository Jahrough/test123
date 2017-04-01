<!-- END decision_did.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
	
  <TMPL_UNLESS DISABLE_PERSON>
<!--    <a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><script>write_image('person_pull');</script>&nbsp;PERSON SEARCH</a><br> -->
	</TMPL_UNLESS>
	<TMPL_UNLESS DISABLE_ADV>
	    <TMPL_IF NAME="COL">
		<a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;DEEP SKIP SEARCH</a><br>
	    <TMPL_ELSE>
		<a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;ADVANCED PEOPLE SEARCH</a><br>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
	    <a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();"><script>write_image('people_pull');</script>&nbsp;PEOPLE AT WORK SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DA_WIRELESS>
	    <a href="javascript:setevent('SEARCH/SEARCH_DA_WIRELESS');submitevent();"><script>write_image('da_wireless_pull');</script>&nbsp;PHONES PLUS</a><br>
	</TMPL_UNLESS>

       <TMPL_UNLESS LE>
       <TMPL_UNLESS GOV>
        <TMPL_UNLESS DISABLE_EMAIL>
    <a href="javascript:setevent('SEARCH/SEARCH_EMAIL');submitevent();window.close();"><script>write_image('email_pull');</script>&nbsp;EMAIL SEARCH</a><br>
        </TMPL_UNLESS>
       </TMPL_UNLESS>
       </TMPL_UNLESS>

        <TMPL_UNLESS DISABLE_DEATH>
	    <a href="javascript:setevent('WS_SEARCH/SEARCH_DEATH');submitevent();window.close();"><script>write_image('deathcert_pull');</script>&nbsp;DEATH RECORDS SEARCH</a><br>
        </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_MARRIAGE>
	    <a href="javascript:setevent('SEARCH/SEARCH_MARRIAGE');submitevent();window.close();"><script>write_image('marriage_pull');</script>&nbsp;MARRIAGES / DIVORCES</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DL>
	    <a href="javascript:setevent('SEARCH/SEARCH_LICENSE');submitevent();window.close();"><script>write_image('drivers_licenses_pull');</script>&nbsp;DRIVER LICENSES SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BANKRUPTCY>
    <a href="javascript:setevent('SEARCH/SEARCH_BANKRUPTCY');submitevent();window.close();"><script>write_image('bankruptcy_pull');</script>&nbsp;BANKRUPTCY SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_LIEN>
	  <a href="javascript:setevent('SEARCH/SEARCH_LIENS');submitevent();window.close();"><script>write_image('liens_judge_pull');</script>&nbsp;LIENS AND JUDGMENTS SEARCH</a><br>
	</TMPL_UNLESS>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
      <a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();"><script>write_image('realtime_phones_pull');</script>&nbsp;REAL-TIME PHONES</a><br>
    </TMPL_UNLESS>
  </TMPL_IF>

    </td>
  </tr>	  
</table>
<!-- END decision_did.tpl -->
