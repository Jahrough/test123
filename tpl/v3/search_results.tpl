<TMPL_IF NAME="RESULTS">
<div class="resultWrapper" id="searchResults">
    <div class="resultsCon">
        <form name="SEARCH_RESULTS" method="post">
            <TMPL_VAR NAME="RESULTS">
            <INPUT type=hidden NAME="GMAP_UNIQUE_ID" VALUE="<TMPL_VAR NAME=GMAP_UNIQUE_ID>">
            <INPUT type=hidden NAME="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">
        </form>
    </div>
</div>
</TMPL_IF>
