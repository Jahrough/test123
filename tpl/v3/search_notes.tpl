<TMPL_UNLESS HIDE_DISCLAIMER>
    <div class="searchNotesCon">
        <TMPL_IF NAME="EMAIL_SEARCH">
            <span class="textWithHover notes">
                <span class="baseText">
                    Information available through the Email Search feature may not be used for...
                </span>
                <span class="hoverText">
                    ...marketing, solicitation, or similar purposes.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF DELCO_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: This information is real time data and...
                </span>
                <span class="hoverText">
                    ...is subject to change at any moment. This information is also
                    <br>for informational purposes only. Certification may only be 
                    <br>obtained through the Division of Corporations, or from a
                    <br>Delaware Registered Agent's office located within the State of Delaware.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF DL_REG_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: Not all of the information contained in these search results...
                </span>
                <span class="hoverText">
                    ...is derived from governmental agencies. Some information 
                    <br>may have been enhanced by additional sources.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF LICENSE_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: Not all of the information contained in these search results...
                </span>
                <span class="hoverText">
                    ...is derived from governmental agencies. Some information 
                    <br>may have been enhanced by additional sources.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF CRIM_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: Not all of the information contained in these search results...
                </span>
                <span class="hoverText">
                    ...is derived from governmental agencies. Some information 
                    <br>may have been enhanced by additional sources.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF FED_CRIM_COURT_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: Not all of the information contained in these search results...
                </span>
                <span class="hoverText">
                    ...is derived from governmental agencies. Some information 
                    <br>may have been enhanced by additional sources.
                </span>
            </span>
        </TMPL_IF>


        <TMPL_IF SEXPREDATOR_SEARCH>
            <span class="textWithHover notes">
                <span class="baseText">
                    Note: Not all of the information contained in these search results...
                </span>
                <span class="hoverText">
                    ...is derived from governmental agencies. Some information 
                    <br>may have been enhanced by additional sources.
                </span>
            </span>
        </TMPL_IF>

        <TMPL_IF NAME=D_AND_B_SEARCH>
            <strong>By clicking Search, I understand and agree to the <a href="javascript:show_post_popup('LOGIN/SHOW_POPUP','DNB','420','350',1,0,1,1,1,0,'','searches/dnb_terms');">Terms and Conditions</a> of usage.</strong>
        </TMPL_IF>
    </div>
</TMPL_UNLESS>
