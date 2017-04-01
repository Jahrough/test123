<TMPL_IF NAME="RESULTS">
	<TMPL_IF NAME="RECORD_COUNT">
        <div class="resHeader">
            <div class="resCountCon">
                <span class="resCount">Results <TMPL_VAR NAME="START_RECORD"> to <TMPL_VAR NAME="END_RECORD"> of <TMPL_IF NAME="SHOW_ALL"><TMPL_VAR NAME="RECORD_COUNT"><TMPL_ELSE><TMPL_IF NAME="MORE_THAN_MAX_GEN">first </TMPL_IF><TMPL_VAR NAME="END_RECORD"></TMPL_IF></span>
            </div>
            <div class="resultsHeaderOptions fontResultsOptionsLabel">
                <div><div class="edit_sprite"></div><div><a href="#">Edit Search</a></div></div>
                <div><div class="newSearch_sprite"></div><div><a href="#">New Search</a></div></div>
                <div><div class="print_sprite"></div><div><a href="#">Print Results</a></div></div>
                <div><div class="export_sprite"></div><div><a href="#">Export to Excel</a></div></div>
            </div>
        </div>

</TMPL_IF>
</TMPL_IF>