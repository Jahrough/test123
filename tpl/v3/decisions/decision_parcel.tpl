<!-- BEGIN decision_parcel.tpl -->
<table border="0" cellpadding="0" cellspacing="0" width="450">
  <tr>
     <td valign="top" id="searchPop">
     <TMPL_IF FCOL_TCOL>
     <div style="margin-left: 20px;"><strong>NON-FCRA Searches</strong></div>
     </TMPL_IF>
     <ul>
	<TMPL_UNLESS NAME="PROPERTYSEARCH_CAP_MET">
	<TMPL_UNLESS DISABLE_ASSESSMENT>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_A');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_PROP');submitevent()"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments)<TMPL_ELSE>Property Assessment</TMPL_IF></a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_DEEDS>
	    <TMPL_IF NAME="HYBRID_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY_D');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
	    <TMPL_ELSE>
	    <TMPL_UNLESS NAME="COMBINED_REAL_PROPERTY">
	    <li><a href="javascript:setevent('SEARCH/SEARCH_PROP_DEED');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Deeds)<TMPL_ELSE>Property Deeds</TMPL_IF></a></li>
	    </TMPL_UNLESS>
	    </TMPL_IF>
	</TMPL_UNLESS>

	<TMPL_UNLESS DISABLE_REAL_PROPERTY>
	    <li><a href="javascript:setevent('SEARCH/SEARCH_REAL_PROPERTY');submitevent();window.close();"><TMPL_IF FCOL_TCOL>Real Property Locator (Property Assessments, Deeds &amp; Mortgages)<TMPL_ELSE><TMPL_UNLESS IRS>Real </TMPL_UNLESS>Property (Property Assessments, Deeds &amp; Mortgages)</TMPL_IF></a></li>
	</TMPL_UNLESS>
	</TMPL_UNLESS>

        <TMPL_IF SHOW_AVM>
        <TMPL_UNLESS DISABLE_AVM>
            <li><a href="javascript:setevent('SEARCH/SHOW_AVM');submitevent();window.close();">Automated Valuation Models</a></li>
        </TMPL_UNLESS>
        </TMPL_IF>
	<TMPL_IF PROPERTYSEARCH_CAP_MET>
    		<li><a href="javascript:window.close();"><b>No Searches Available</b></a></li>
  <TMPL_ELSE>
	<TMPL_IF DISABLE_DEEDS>
	  <TMPL_IF DISABLE_ASSESSMENT>
	    <TMPL_IF DISABLE_REAL_PROPERTY>
    		<li><a href="javascript:window.close();"><b>No Searches Available</b></a></li>
	    </TMPL_IF>
	  </TMPL_IF>
	</TMPL_IF>
	</TMPL_IF>
    </ul>
    </td>
  </tr>	  
</table>
<!-- END decision_parcel.tpl -->
