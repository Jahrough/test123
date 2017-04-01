<div id="occcrtoptabsarea" class="hidden">
    <ul>
        <TMPL_UNLESS DELETE_BUSINESS_ASSURANCE>
        <TMPL_UNLESS DISABLE_BUSINESS_ASSURANCE>
        <li id="tab_ba"<TMPL_IF BUSINESS_ASSURANCE_SEARCH> class="selected"</TMPL_IF>>
            <button type="button" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_ASSURANCE');">Business Assurance</button>
        </li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <TMPL_UNLESS DELETE_OFFLINE_CIV_CRIM>
        <TMPL_UNLESS DISABLE_OFFLINE_CIV_CRIM>
        <li id="tab_oc"<TMPL_IF OCCCR_SEARCH> class="selected"</TMPL_IF>>
            <button type="button" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR');">Offline Civil & Criminal Court Records (OCCCR)</button>
        </li>
        </TMPL_UNLESS>
        </TMPL_UNLESS>
        <li id="tab_rt"<TMPL_IF OCCCR_RESULTS_SEARCH> class="selected"</TMPL_IF>>
            <button type="button" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');">Direct-to-Source Results</button>
        </li>
        
        <li class="right">
            <TMPL_IF NAME="DIRECT_TO_SOURCE_RETURN_TO_HOME">
                <button type="button" class="btn btn-link" onclick="javascript:send_portal_event('SEARCH/SHOW_MENU');">
            <TMPL_ELSE>
                <button type="button" class="btn btn-link" id="gohome" onclick="javascript:undo_occcr_navbar();return_to_tab_view();">                
            </TMPL_IF>    
                <strong>Return to searches &#62;&#62;</strong>
            </button>
        </li>
    </ul>
</div>