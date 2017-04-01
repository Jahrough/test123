<!-- BEGIN v3/batch_reporting_dashboard.tpl -->
<!DOCTYPE html>
<html>
    <head>
        <TMPL_INCLUDE NAME="report/includes_search_popup.tpl">
        <script src="<TMPL_VAR NAME='JSPATH'>/prototype.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/batch_reporting_dashboard.js"></script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/jquery.min.js"></script>
        <script>
          var $j = jQuery.noConflict();
        </script>
        <script src="<TMPL_VAR NAME='JSPATH'>/v3/make_table_508.js"></script>
        <style>
            .dashboard_con{
                width:98%;
                margin:5px;
                border-radius: 8px;
                background-color: #f0f0f0 !important;
                min-height:430px;
            }
            .left{
                float:left !important;
            }
            .report_con{
                min-height:870px;
            }

            #content H2{
                padding-left:15px;
            }

            table.batch_tbl{
                width:100%;
                margin:15px;
                font-size: 15px;
                font-weight: bold;
                line-height: 1;
            }
            #content P {
                font-size: 100% !important;
                line-height: 0.7;
            }

            select {
                height: 21px;
                border: 1px solid #8C8C8C;
                margin-left: 6px;
                /*-webkit-appearance: none; */
                /*background: url(<tmpl_var name=IMGPATH>/select.png) no-repeat right;*/
                min-width: 56px;
                /*color:#555;
                padding-right: 25px;
                border-right:none;*/
            }

            .multi{
                min-height:60px;
                border: 1px solid #8C8C8C;
                min-width:200px;
            }
            .batch_tbl td {
                vertical-align: top;
            }
        </style>
    </head>
    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" onLoad="setForm();drawChart(1);drawChart(2);set_initial_states();window.focus();" >
        <TMPL_INCLUDE NAME="batch/batch_reporting_dashboard_header.tpl">

			<div class="reportCon reportResults">			   
				<div class="dataCon" style="padding-right:20px;">

                    <form name="BATCH_REPORTING_DASHBOARD" action="<TMPL_VAR NAME=ACTION_BATCH>" method="post">
                        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                        <INPUT type=hidden NAME="SKIN_TYPE" VALUE="<TMPL_VAR NAME=SKIN_TYPE>">
                        <INPUT type=hidden NAME="APPLICATION_TYPE" VALUE="<TMPL_VAR NAME=APPLICATION_TYPE>">
                        <INPUT type=hidden NAME="EVENT" VALUE="<TMPL_VAR NAME=EVENT>">
                        <INPUT type=hidden NAME="ACTION" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
                        <INPUT type=hidden NAME="ACTION_BATCH" VALUE="<TMPL_VAR NAME=ACTION_BATCH>">
                        <INPUT type=hidden NAME="ACTION_MAIN" VALUE="<TMPL_VAR NAME=ACTION>">
                        <INPUT type=hidden NAME="SELECT_WORK_REQUEST" VALUE="">
                        <INPUT type=hidden NAME="IMGPATH" VALUE="<TMPL_VAR NAME=IMGPATH>">

                          <div class="rightCon" id="content">
                            <div class="rep-title mgr15">
                                <h2>Batch Reporting Dashboard</h2>
                            </div>

                            <TMPL_IF STANDALONE_ACTIONS>
                                <TMPL_INCLUDE NAME="batch/standalone_actions.tpl">
                            </TMPL_IF>

                            <TMPL_IF NAME=ERROR>
                                <div class="message warningmessage"> 
                                      <TMPL_VAR NAME=ERROR_MSG>
                                </div>
                            </TMPL_IF>
                            <br/>
                            <br/>

                            <TMPL_INCLUDE NAME="batch/batch_dashboard_data.tpl">
                            <br/>
                            <br/>
                          <div>
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
<!-- END v3/batch_reporting_dashboard.tpl -->