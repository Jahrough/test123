<!-- begin: $RCSfile: search_terms_echo.tpl,v $ -->
<TMPL_IF NAME="RESULTS">
    <TMPL_IF NAME="SEARCH_TERMS">
            <ul id="search_terms">
                <TMPL_LOOP NAME="SEARCH_TERMS">
                    <li>
                        <div class="termName"><TMPL_VAR NAME="TERM_NAME"></div>
                        <div class="termValue"><TMPL_VAR NAME="TERM_VALUE"></div>
                    </li>
                </TMPL_LOOP>
            </ul>
    </TMPL_IF>
</TMPL_IF>


<TMPL_UNLESS NAME="RESULTS">
    <TMPL_IF NAME="SEARCH_TERMS">
            <ul id="search_terms">
                <TMPL_LOOP NAME="SEARCH_TERMS">
                    <li>
                        <div class="termName"><TMPL_VAR NAME="TERM_NAME"></div>
                        <div class="termValue"><TMPL_VAR NAME="TERM_VALUE"></div>
                    </li>
                </TMPL_LOOP>
            </ul>
    </TMPL_IF>
</TMPL_UNLESS>

<!-- end: $RCSfile: search_terms_echo.tpl,v $ -->
