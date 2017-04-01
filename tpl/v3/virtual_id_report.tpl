<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="report/includes_search_popup.tpl">
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

        <TMPL_INCLUDE NAME="accurint_header.tpl">
 
			<div role="dailog" class="reportCon reportResults lh4">			   
				<div class="dataCon">

                <form name="REPORT">
                    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                    <INPUT type=hidden NAME="IM_A_REPORT" VALUE="1">
                    <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
                    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                    <INPUT type=hidden NAME="EVENT">

                   <div class="rightCon" id="content">
                        <TMPL_INCLUDE NAME="report/virtual_id_report_body.tpl">
                    </div>

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
