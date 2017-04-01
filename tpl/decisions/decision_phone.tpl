<!-- BEGIN decision_phone.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
    <td class="style2" valign="top" NOWRAP width="250">
  <TMPL_UNLESS SSN_ONLY_SEARCH>

    <TMPL_UNLESS IRS>
      <TMPL_UNLESS DISABLE_PERSON>
        <a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><script>write_image('person_pull');</script>&nbsp;PERSON SEARCH</a><br>
      </TMPL_UNLESS>
    </TMPL_UNLESS>

    <TMPL_UNLESS DISABLE_ADV>
      <TMPL_IF NAME="COL">
        <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;DEEP SKIP SEARCH</a><br>
      <TMPL_ELSE>
        <a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();"><script>write_image('adv_person');</script>&nbsp;ADVANCED PEOPLE SEARCH</a><br>
      </TMPL_IF>
    </TMPL_UNLESS>

    <TMPL_IF IRS>
      <TMPL_UNLESS DISABLE_PERSON>
        <a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><script>write_image('person_pull');</script>&nbsp;PERSON SEARCH</a><br>
      </TMPL_UNLESS>
    </TMPL_IF>

  </TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
    <a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();"><script>write_image('people_pull');</script>&nbsp;PEOPLE AT WORK SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
    <a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();"><script>write_image('bus_search_pull');</script>&nbsp;BUSINESS SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
        <a href="javascript:setevent('SEARCH/SEARCH_BUS_CREDIT');submitevent();window.close();"><script>write_image('bus_credit_pull');</script>&nbsp;BUSINESS CREDIT SEARCH</a><br>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_EXPERIAN');submitevent();window.close();"><script>write_image('experian_pull');</script>&nbsp;EXPERIAN BUSINESS SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FICTIOUS>
	 <TMPL_IF NAME="IRS">
        <a href="javascript:setevent('SEARCH/SEARCH_FICTIOUS');submitevent();window.close();"><script>write_image('trademark_pull');</script>&nbsp;FICTITIOUS BUSINESS NAME SEARCH</a><br>
	 </TMPL_IF>
	</TMPL_UNLESS>

        <TMPL_UNLESS IRS>
	<TMPL_UNLESS DISABLE_DA_WIRELESS>
    <a href="javascript:setevent('SEARCH/SEARCH_DA_WIRELESS');submitevent();"><script>write_image('da_wireless_pull');</script>&nbsp;PHONES PLUS</a><br>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DA_REVERSE>
    <a href="javascript:setevent('SEARCH/SEARCH_DA_REVERSE');submitevent();"><script>write_image('da_reverse_pull');</script>&nbsp;DA REVERSE LOOKUP</a><br>
	</TMPL_UNLESS>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
      <a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();"><script>write_image('realtime_phones_pull');</script>&nbsp;REAL-TIME PHONES</a><br>
    </TMPL_UNLESS>
  </TMPL_IF>

    </td>
  </tr>
</table>
<!-- END decision_phone.tpl -->
