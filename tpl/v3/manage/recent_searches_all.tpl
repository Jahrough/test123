<!DOCTYPE html>
<html>
    <head>
        <script src="<tmpl_var name='jspath'>/v2/manage_acc.js"></script>
        <script src="<tmpl_var name='JSPATH'>/prototype.js"></script>
        <script src="<tmpl_var name='JSPATH'>/decision.js"></script>
        <TMPL_INCLUDE NAME="report/includes_search_popup.tpl">
        <script>
          var glb_dp = <tmpl_var glbdp> || 0;
        function submit_evt(evt,dir)
        {
            document.forms[0].EVENT.value = evt;
            if (document.forms[0].DIRECTION) {
                if (dir === "next" || dir === "prev") {
                    document.forms[0].DIRECTION.value = dir;
                }
            }
            document.forms[0].submit();   
        }

        $j(function() {
            $j('#li_print').remove();
            var opener2 = pickwinV3();
            RP_obj = opener2.RP_obj;
        });
        </script>
        <script src="<tmpl_var name='jspath'>/v2/tablesort.js"></script>
        <style>
            #footer a, a.linkw{
                color:white;
            }
        </style>
    </head>

    <body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0">

        <TMPL_INCLUDE NAME="../header_info.tpl">


 
			<div class="reportCon reportResults lh4">			   
				<div class="dataCon" style="margin-bottom:40px;">
                    <form name="SEARCH_RESULTS" action="<TMPL_VAR NAME=ACTION>" method="post">
                        <TMPL_INCLUDE NAME=common_hidden_input.tpl>
                        <input type="hidden" NAME="CURRENT_EVENT" VALUE="<TMPL_VAR NAME=CURRENT_EVENT>">
                        <input type="hidden" NAME="IM_A_REPORT" VALUE="1">
                        <input type="hidden" name="EVENT" value="">
                        <input type="hidden" name="APPLICATION_TYPE" value="<tmpl_var application>">
                        <TMPL_IF FCOL>
                        <input type="hidden" name="PAGE_TOTAL" value="<TMPL_VAR NAME=PAGE_TOTAL>">
                        <input type="hidden" name="PAGE_COUNT" value="<TMPL_VAR NAME=PAGE_COUNT>">
                        <input type="hidden" name="PAGE_RECORDS" value="<TMPL_VAR NAME=PAGE_RECORDS>">
                        <input type="hidden" name="NEXT_PAGE_DATE" value="<TMPL_VAR NAME=NEXT_PAGE_DATE>">
                        <input type="hidden" name="PREV_PAGE_DATE" value="<TMPL_VAR NAME=PREV_PAGE_DATE>">
                        <input type="hidden" name="date_select" value="date_recent">
                        <input type="hidden" name="DATE_RECENT" value="prev_month">
                        <input type="hidden" name="DIRECTION" value="">
                        </TMPL_IF>

                   <div class="rightCon" id="content">
                        <div class="rep-title mgr15">
                            <h2>Recent Searches</h2>
                        </div>
                        <div>
                            <span class="mgr15 bold" style="float:right;"><a href="javascript:submit_evt('<TMPL_IF FCRA_MODE>MYACCOUNT/SHOW_ALL_RECENT_FCRA<TMPL_ELSE>MYACCOUNT/SHOW_ALL_RECENT</TMPL_IF>');">Refresh this Page</a> | <a href="javascript:window.print();">Print</a> </span>
                            Click column header to sort history - Last <TMPL_IF FCOL>30 Days.<TMPL_ELSE>24 Hours.</TMPL_IF></div>
                        <br/>

                        <tmpl_if rcs_loop>
                          <table class="" style="clear:both;width:98%;" id="searchPop" class="sortable">
                              <tr class="searchresultstop2">
                                    <td><a href="#" class="linkw" onclick="javascript:sort_all_searches(1);" >Input Criteria</a></td>
                                    <td><a href="#" class="linkw" onclick="javascript:sort_all_searches(2);">Activity/Search Form</a></td>
                                    <td><a href="#" class="linkw" onclick="javascript:sort_all_searches(3);">Date/Time (EST)</a></td>
                                    <td><a href="#" class="linkw" onclick="javascript:sort_all_searches(4);" >Reference Code</a></td> 
                              </tr>
                                <tmpl_loop rcs_loop>                                   
                                   <tr class="<tmpl_if clr>searchresultsrowodd<tmpl_else>searchresultsroweven</tmpl_if>">
                                     <td><tmpl_var crit></td>   
                                     <td>
                                        <tmpl_var type><br />
                                         <tmpl_unless am_report> 
                                             <tmpl_unless no_link>
                                                 <span class="smallgray"><a href="javascript:rerun_search(<tmpl_var keynum>,0);">Rerun Search</a></span> <tmpl_if dtype><span class="smallgray">|</span> <span class="smallgray"><a href="javascript:rerun_search(<tmpl_var keynum>,'<tmpl_var dtype>');">Other Searches</a></span></tmpl_if>
                                             </tmpl_unless>
                                         </tmpl_unless>
                                     </td>
                                     <td><tmpl_var date></td>
                                     <td><tmpl_var refcode></td>
                                    </tr>
                                    <input type='hidden' name='KEY_VALUES' value="<tmpl_var key>"> 					      
                                </tmpl_loop>
                           </table>
                        <tmpl_else>
                            <div class="message warningmessage">No Activity in the last <TMPL_IF FCOL>30 days<TMPL_ELSE>24 hours</TMPL_IF>.<br /><br /></div>
                        </tmpl_if>

                        <br/><br/>
                         <div style="margin-bottom:10px;">
                            The selection of a recent search  will be subject to your currently selected permissible purposes certified to at login of this session pursuant to the Gramm-Leach-Bliley Act (15 U.S.C. &#167; 6801 et seq.) and its implementing regulations and the Driver's Privacy Protection Act (18 U.S.C. &#167; 2721 et seq.) and related state laws.
                        </div>
                    </div>

                </form>

            </div>
        </div>
  <br/><br/>
        <TMPL_INCLUDE NAME="classic_footer.tpl">

    </body>
</html>
