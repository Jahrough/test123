</div>
<div id="announce_foot">
    <TMPL_IF NAME="FROM_LIST">
        <button type="button" class="btn btn-danger pull-right announce-btn" onclick="send_event('MESSAGE/SHOW_ANNOUNCEMENT_LIST');">All Announcements</button>
        <p class="msg-nav">
            <TMPL_IF NAME="PREVIOUS">
                <a href="#" onClick="javascript:send_event('MESSAGE/SHOW_ANNOUNCEMENT_LIST_PREVIOUS'); return false;">&lt; Previous</a>
            </TMPL_IF>
            <TMPL_IF NAME="NEXT">
                <a href="#" onClick="javascript:this.disabled=true;send_event('MESSAGE/SHOW_ANNOUNCEMENT_LIST_NEXT'); return false;">Next &gt;</a>
            </TMPL_IF>
            &nbsp;
        </p>
    <TMPL_ELSE>
        <button type="button" class="btn btn-danger pull-right announce-btn" onclick="send_event('MESSAGE/SKIP_ANNOUNCEMENTS');">Continue</button>
        <p class="msg-nav">
            <TMPL_IF NAME="PREVIOUS">
                <a href="#" onClick="javascript:send_event('MESSAGE/SHOW_ANNOUNCEMENT_PREVIOUS'); return false;">&lt; Previous</a>
            </TMPL_IF>
            <TMPL_IF NAME="NEXT">
                <a href="#" onClick="javascript:this.disabled=true;send_event('MESSAGE/SHOW_ANNOUNCEMENT_NEXT'); return false;">Next &gt;</a>
            </TMPL_IF>
            &nbsp;
        </p>
    </TMPL_IF>
</div>
<TMPL_INCLUDE NAME="footer.tpl">
</form>
</div>
</body>
</html>
