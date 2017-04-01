<!DOCTYPE html>
<html>
    <head>
        <TMPL_IF ALLOW_CHAT>
        <link type="text/css" href="<tmpl_var CCSS>" rel="stylesheet" charset="utf-8">
        <script type="text/javascript" src="<tmpl_var CJS>" charset="utf-8"></script>
        </TMPL_IF>

        <TMPL_INCLUDE NAME="report/includes_search_popup.tpl">
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">
        <div id="skiptocontent" role="dialog"><a href="#content" title="skip navigation">Skip Navigation</a></div> 
        <TMPL_INCLUDE NAME="accurint_header.tpl">


          
			<div class="reportCon reportResults lh4">			   
				<div class="dataCon">

                <form name="<TMPL_IF NAME="SEARCH_NAME"><TMPL_VAR NAME='SEARCH_NAME'><TMPL_ELSE>RNA_SEARCH</TMPL_IF>" action="<TMPL_VAR NAME=ACTION>" method="post">
                    <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                    <INPUT type=hidden NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
                    <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                    <TMPL_IF NAME="SEARCH_EVENT">
                      <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME='SEARCH_EVENT'>">
                    <TMPL_ELSE>
                      <INPUT type=hidden NAME="EVENT" VALUE="SEARCH/SEARCH">
                    </TMPL_IF>
               </form>

                <form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">

                    <TMPL_IF NAME="PAW_POP_SEARCH">
                        <div align="left" class="unifont1">
                            &nbsp;<b>People at Work <TMPL_IF WATER_DOWN_NON_FCRA>Locator </TMPL_IF>For:</b> <TMPL_VAR NAME="FIRST_NAME"> <TMPL_VAR NAME="MIDDLE_NAME"> <TMPL_VAR NAME="LAST_NAME">&nbsp;&nbsp;<TMPL_VAR NAME="SSN">
                            <br><br>
                        </div>
                    </TMPL_IF>

                   <div class="rightCon" id="content">
                        <TMPL_IF NAME="RESULTS">
                            <TMPL_VAR NAME="RESULTS">
                        <TMPL_ELSE>
                        <span class="unifont1"><TMPL_VAR NAME="SEARCH_ERROR_MESSAGE"></span>
                        </TMPL_IF>
                    </div>

                </form>

 
                <TMPL_INCLUDE NAME="search_hidden_form.tpl">
                <TMPL_INCLUDE NAME="map/hidden_form.tpl">


            </div>
        </div>
        <div id="modalDiv">
            <img src="<TMPL_VAR IMGPATH>/loading.gif" alt="Running Search" height="40" width="67"/>
            <span>Running Search... Please Wait.</span>
        </div>
        <div id="modalBlur"></div>
    </body>
</html>
