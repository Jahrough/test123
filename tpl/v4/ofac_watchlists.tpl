<div class="col col-1 hidden">
    <strong>Watchlists</strong>
</div>

<div class="input col col-1 hidden">
    <label class="radio">
	<input name="watch_list_opt" type="radio" id="WATCH_LIST_OFAC" onclick="toggle_watchlist(1)" value="1" />
	 <span>OFAC</span>
    </label>
</div>
<div class="input col col-2_5 hidden">
    <label class="radio">
	<input name="watch_list_opt" type="radio" id="WATCH_LIST_OFAC_GLOB" <TMPL_UNLESS NAME=SHOW_INTL_INSTANTID>checked="checked"</TMPL_UNLESS> onclick="toggle_watchlist(2)" value="2" />
	<span>OFAC &amp; Global Sanctions Lists</span>
    </label>
</div>
<div class="input col col-1_5 hidden">
    <label class="radio">
	<input name="watch_list_opt" type="radio" id="WATCH_LIST_FARA" onclick="toggle_watchlist(3)" value="3" />
	<span>FARA &amp; PEP</span>
    </label>
</div>
<div class="input col col-1 hidden">
    <label class="radio">
	<input name="watch_list_opt" <TMPL_IF NAME=SHOW_INTL_INSTANTID>checked="checked"</TMPL_IF> type="radio" id="WATCH_LIST_NONE" onclick="toggle_watchlist(4)" value="4" />
	<span>None</span>
    </label>
</div>
