<TMPL_UNLESS NAME="RESULTS">
    <TMPL_IF NAME="SEARCH_ERROR_MESSAGE">

        <div class="errorWrapper">
            <div class="errorCon">
                <ul>
                    <li>
                        <div class="errorExcl">
                            <span><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></span>
                        </div>
                    </li>

                    <TMPL_IF HINTS>
                      <TMPL_LOOP NAME="HINTS">
                        <li>
                            <div class="errorExcl">
                                <span><TMPL_VAR NAME="HINT"></span>
                            </div>
                        </li>
                      </TMPL_LOOP>
                    </TMPL_IF>

                </ul>
            </div>
        </div>

    </TMPL_IF>
</TMPL_UNLESS>


<TMPL_IF NAME="SEARCH_UNAVAILABLE">
    <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
        This search is currently unavailable.  Please try again later.
    </span></div></li></ul></div></div>
<TMPL_ELSE>
    <TMPL_IF NAME="CFG_FORCE_DISABLED">
        <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
            <TMPL_VAR NAME="CFG_FORCE_DISABLED">
        </span></div></li></ul></div></div>
    <TMPL_ELSE>
        <TMPL_IF NAME="SEARCH_DISABLED">                        
            <TMPL_IF NAME="BUS_INSTANT_ID_REPORT">
                <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
                    Our Business InstantID Search has been disabled for all customers. We
                    apologize for any inconvenience. The search will be available shortly.
                </span></div></li></ul></div></div>
            <TMPL_ELSE>
                <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
                    <TMPL_IF NAME="PERSON_DTR_REPORT">
                      The Direct-to-Report feature is currently not available to you. Please contact your administrator if this is in error or if you would like access.
                    <TMPL_ELSE>
                      This search is currently not available to you.  Please contact your administrator if this is in error or if you would like access.
                    </TMPL_IF>
                </span></div></li></ul></div></div>
            </TMPL_IF>            
        <TMPL_ELSE>
            <TMPL_IF NAME="MORE_THAN_MAX_SUBJ_BK">
                <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
                    The search you have requested resulted in too many matches.&nbsp; Try narrowing your search by including additional information about the subject.
                </span></div></li></ul></div></div>
            <TMPL_ELSE>
                <TMPL_IF NAME="MORE_THAN_MAX_SUBJ">
                    <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
                        The search you have requested resulted in over <TMPL_VAR NAME=MAX_RECS> matches.&nbsp; If you did not find the subject you were looking for, try narrowing your search by including additional information about the subject.
                    </span></div></li></ul></div></div>
                <TMPL_ELSE>
                    <TMPL_IF NAME="SEARCH_INFO_MESSAGE">
                      <TMPL_UNLESS NAME="RESULTS">
                           <div class="errorWrapper"><div class="errorCon"><ul><li><div class="errorExcl"><span>
                               <TMPL_VAR NAME="SEARCH_INFO_MESSAGE">
                           </span></div></li></ul></div></div>
                      </TMPL_UNLESS>
                    </TMPL_IF>
                </TMPL_IF>
            </TMPL_IF>
        </TMPL_IF>
    </TMPL_IF>
  </TMPL_IF>
