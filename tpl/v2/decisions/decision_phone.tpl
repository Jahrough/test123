<!-- BEGIN decision_phone.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="250">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>

     <TMPL_UNLESS DO_NOT_DISPLAY_PERSON_SEARCH_PLUS>
     <TMPL_UNLESS DISABLE_PERSON_SEARCH_PLUS>
         <TMPL_IF FCOL>
         <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();">Person Search Plus</a></li>
         <TMPL_ELSE>
         <TMPL_IF TCOL>
         <li><a href="javascript:setevent('SEARCH2/SEARCH_PERSON_PLUS_SUBJECT');submitevent();">Person Search Plus</a></li>
         </TMPL_IF>
         </TMPL_IF>
     </TMPL_UNLESS>
     </TMPL_UNLESS>

<TMPL_UNLESS SSN_ONLY_SEARCH>
    <TMPL_UNLESS ENABLE_MYACC_V3>
        <TMPL_UNLESS DISABLE_PERSON>
        <li><a href="javascript:setevent('SEARCH/SEARCH');submitevent();"><TMPL_IF FCOL>Find a Person<TMPL_ELSE>Person Search</TMPL_IF></a></li>
        </TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_ADV>
		<li><a href="javascript:<TMPL_UNLESS IRB>setaction('<TMPL_VAR NAME=ACTION_MISC>');</TMPL_UNLESS>setevent('SEARCH/SEARCH_ADV');submitevent();window.close();"><span id="advanced_person"></span></a></li>
	</TMPL_UNLESS>

  <TMPL_UNLESS DELETE_CONTACT_PLUS>
    <TMPL_UNLESS DISABLE_CONTACT_PLUS>
    <TMPL_UNLESS CONTACTPLUS_CAP_MET>
      <li><a href="javascript:setevent('SEARCH2/SHOW_CONTACT_PLUS');submitevent();">Contact Plus Search</a></li>
    </TMPL_UNLESS>
    </TMPL_UNLESS>
  </TMPL_UNLESS>

</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_PAW>
		<li><a href="javascript:setevent('SEARCH/SEARCH_PAW');submitevent();window.close();"><TMPL_IF FCOL_TCOL>People At Work Locator<TMPL_ELSE>People At Work Search</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_BUS');submitevent();window.close();"><TMPL_IF FCOL>Find a Business<TMPL_ELSE>Business Search</TMPL_IF></a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
        <li><a href="javascript:setevent('SEARCH/SEARCH_BUS_CREDIT');submitevent();window.close();">Business Credit Search</a></li>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_BUS_CREDIT>
	 <TMPL_IF NAME="IRS">
		<li><a href="javascript:setevent('SEARCH/SEARCH_EXPERIAN');submitevent();window.close();">Experian Business Search</a></li>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_FICTIOUS>
	 <TMPL_IF NAME="IRS">
        <li><a href="javascript:setevent('SEARCH/SEARCH_FICTIOUS');submitevent();window.close();">Fictitious Business Name Search</a></li>
	 </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DO_NOT_DISPLAY_PHONE_IDENTIFIER_SEARCH>
	<TMPL_UNLESS DISABLE_PHONE_IDENTIFIER_SEARCH>
            <TMPL_IF FCOL>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_PHONE_IDENTIFIER');submitevent();">Reverse Phone Search Plus</a></li>
            <TMPL_ELSE>
            <TMPL_IF TCOL>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_PHONE_IDENTIFIER');submitevent();">Reverse Phone Search Plus</a></li>
            <TMPL_ELSE>
            <TMPL_IF IRB>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_PHONE_IDENTIFIER');submitevent();">Reverse Phone Search Plus</a></li>
            <TMPL_ELSE>
            <TMPL_IF XBPS>
            <li><a href="javascript:setevent('SEARCH2/SEARCH_PHONE_IDENTIFIER');submitevent();">Reverse Phone Search Plus</a></li>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
            </TMPL_IF>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

        <TMPL_UNLESS IRS>
	<TMPL_UNLESS DISABLE_DA_WIRELESS>
	<TMPL_UNLESS DIRASSTWIRELESS_CAP_MET>
		<li><a href="javascript:setevent('SEARCH/SEARCH_DA_WIRELESS');submitevent();">Phones Plus</a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DA_REVERSE>
		<li><a href="javascript:setevent('SEARCH/SEARCH_DA_REVERSE');submitevent();">Reverse Lookup</a></li>
	</TMPL_UNLESS>

	<TMPL_IF SHOW_PHONE_HISTORY_REPORT>
		<li><a href="javascript:build_dw_report('<TMPL_VAR NAME=ACTION_REPORT>',1);">Phone History Report</a></li>
	</TMPL_IF>

  <TMPL_IF SHOW_RT_PHONE>
    <TMPL_UNLESS DISABLE_RT_PHONE>
            <li><a href="javascript:setevent('SEARCH/SEARCH_RT_PHONE');submitevent();window.close();">Real-Time Phones</a></li>
    </TMPL_UNLESS>
  </TMPL_IF>

        <TMPL_IF SHOW_JAIL_BOOKING_SEARCH>
              <TMPL_UNLESS DISABLE_JAILBOOKING>
                   <li><a href="javascript:setaction('<TMPL_VAR NAME=ACTION_MISC>');setevent('SEARCH/SEARCH_JAILBOOKING');submitevent();window.close();">Jail Bookings</a></li>
              </TMPL_UNLESS>
        </TMPL_IF>

    </td>
  </tr>	  
</table>
<script>get_search_labels();</script>
<!-- END decision_phone.tpl -->
