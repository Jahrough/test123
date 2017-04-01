<!DOCTYPE html>
<html lang="en">
    <head>
        <TMPL_INCLUDE NAME="includes.tpl">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/messages.css">
<script type="text/javascript">
	$( document ).ready(function() {
	   $(".announce-btn").focus();
	});
</script>
    </head>
    <body>
        <div id="main" class="clear">
        <form id="LOGIN" name="LOGIN" action="<TMPL_VAR NAME=ACTION>" method="post">
        <TMPL_INCLUDE NAME="header.tpl">            
        
            <div id="announcements" class="clear">
                <div id="announce_head">
                    <h2>Announcement</h2>
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
                                <a href="javascript:send_event('MESSAGE/SHOW_ANNOUNCEMENT_PREVIOUS');">&lt; Previous</a>
                            </TMPL_IF>
                            <TMPL_IF NAME="NEXT">
                                <a href="javascript:this.disabled=true;send_event('MESSAGE/SHOW_ANNOUNCEMENT_NEXT')">Next &gt;</a>
                            </TMPL_IF>
                            &nbsp;
                        </p>
                    </TMPL_IF>
                </div>
            </div>
            <script src="<TMPL_VAR NAME='JSPATH'>/v4/messages.js"></script>
            <div>

