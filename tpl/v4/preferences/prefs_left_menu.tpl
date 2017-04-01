<ul id="prefs-left-nav">
    <li <TMPL_IF NAME="ACCOUNT_PREF">class="active"</TMPL_IF>>
        <a href="#tab-account-settings" class="gear svg-icon-tiny" labelledby="pref_header">Account Settings</a>
    </li>
    <li <TMPL_IF NAME="CHANGE_PASSWD">class="active"</TMPL_IF>>
        <a href="#tab-change-password" class="key-icon svg-icon-tiny" labelledby="pref_header">Change Password</a>
    </li>
    <li <TMPL_IF NAME="SEC_QUESTIONS">class="active"</TMPL_IF>>
        <a href="#tab-sec-questions" class="grey_lock_icon svg-icon-tiny" labelledby="pref_header">Security Questions</a>
    </li>
    <li <TMPL_IF NAME="SEARCH_AND_RESULT">class="active"</TMPL_IF>>
        <a href="#tab-search-settings" class="svg-icon-tiny search-within-icon" labelledby="pref_header">Search &amp; Results Settings</a>
    </li>
    <li <TMPL_IF NAME="FAVORITES">class="active"</TMPL_IF>>
        <a href="#tab-fav-settings" class="favorites-star-grey svg-icon-tiny" labelledby="pref_header">Favorites Settings</a>
    </li>
</ul>
