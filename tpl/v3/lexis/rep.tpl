<!DOCTYPE html>
<html>
    <head>
        <title><TMPL_VAR NAME="TITLE"></title>
        <TMPL_IF ALLOW_CHAT>
        <link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
        <script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
        </TMPL_IF>

        <TMPL_INCLUDE NAME="../report/includes_search_popup.tpl">

        <script>
            $j(function() {
                $j('#li_print').remove();
            });
        </script>
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <div role="dialog"></div>
        <TMPL_INCLUDE NAME="../accurint_header.tpl">

			<div class="reportCon reportResults lh4">			   
				<div class="dataCon">

                    <TMPL_VAR NAME=RESULTS>

                    <form name=articleForm method=post>
                     <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                     <input type=hidden name=CURRENT_EVENT VALUE=<TMPL_VAR NAME=CURRENT_EVENT>>
                     <input type=hidden name=REFERENCE_CODE VALUE=<TMPL_VAR NAME=REFERENCE_CODE>>
                     <input type=hidden name=IM_A_REPORT VALUE="1">
                    </form>
                </div>
            </div>

        <div id="modalDiv">
            <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>
    </body>
</html>
