<div id="search-form-fields" style="border-right: 0px;">
    <!-- ========================== OCCCR RESULTS PAGE ========================== -->
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME=CSSPATH>/occcr.css">
    <link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME=CSSPATH>/search_report.css">
    <!-- ============= JavaScript ============= -->
    <script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_results.js"></script>

    <!-- ============= Results section ============= -->
    <div class="pagebar lbal">
        <ul class="pagination center hidden">
            <li><button type="button" data-action="first">&lt;&lt;</button></li>
            <li><button type="button" data-action="prev">&lt;</button></li>
            <li class="pages"></li>
            <li><button type="button" data-action="next">&gt;</button></li>
            <li><button type="button" data-action="last">&gt;&gt;</button></li>
        </ul>
        <div class="right">
            <button type="button" class="btn btn-link btn-tight" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR_RESULTS');">Refresh</button>
        </div>
    </div>
    <table id="occcrorderslist" class="occcrresultsmaintbl maintblborders paged">
        <caption class="sr-only">Result list</caption>
        <thead>
            <tr id="tbsrchhdr">
                <th class="sortable sort_icon caret_down has-click-event" data-event="sort" style="width: 18%">Subject<br /><span style="color: rgb(0, 0, 0);" class="descripG">(Person/Company)</span></th> 
                <th class="sortable sort_icon caret_down has-click-event" nowrap="nowrap" data-event="sort" style="align: center; width: 7%">Status</td>
                <th style="width: 25%">Request Type</th>
                <th class="sortable sort_icon caret_down has-click-event" data-event="sort" style="width: 12%">Order Number</th>
                <th class="sortable sort_icon caret_down has-click-event" data-event="sort" style="width: 12%">Date Submitted</th>
                <th class="sortable sort_icon caret_down has-click-event" data-event="sort" style="width: 12%">Date Completed</th>
                <th>Results</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    <div id="loading"> 
        <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt=""/> Loading...
    </div>
    <div id="noresults"> 
        There are currently no results to display.
    </div>
    <div id="fetcherror"> 
        An error occured while retrieving the results. Please refresh the page to try again.
    </div>
    <div class="pagebar lbal">
        <ul class="pagination center hidden">
            <li><button type="button" data-action="first">&lt;&lt;</button></li>
            <li><button type="button" data-action="prev">&lt;</button></li>
            <li class="pages"></li>
            <li><button type="button" data-action="next">&gt;</button></li>
            <li><button type="button" data-action="last">&gt;&gt;</button></li>
        </ul>        
        <div class="right">Your use of this service is subject to: <a href="http://www.lexisnexis.com/risk/terms/" target="_blank">Terms &amp; Conditions</a></div>
    </div>
    <div class="footer">
        <ul class="actions">
            <TMPL_UNLESS DISABLE_BUSINESS_ASSURANCE>
            <li><img src="<TMPL_VAR NAME=IMGPATH>/ico_newsearch.gif" alt="" width="16px" height="16px"/> <button type="button" class="btn btn-link btn-tight" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_BUSINESS_ASSURANCE');">New Business Assurance Search</button></li>
            </TMPL_UNLESS>
            <TMPL_UNLESS DISABLE_OFFLINE_CIV_CRIM>
            <li><img src="<TMPL_VAR NAME=IMGPATH>/ico_newsearch.gif" alt="" width="16px" height="16px"/> <button type="button" class="btn btn-link btn-tight" onclick="javascript:pm_tab_v3('SEARCH2/SHOW_OCCCR');">New OCCCR Search</button></li>
            </TMPL_UNLESS>
        </ul>        
        <h3>Key for Statuses</h3>
        <ul>
            <li class="order-queued-01 svg-icon-small">
                Order has been queued.
            </li>
            <li class="order-in-process-01 svg-icon-small">
                Order is being processed.
            </li>
            <li class="order-completed-01 svg-icon-small">
                Order has completed.
            </li>
            <li class="action-required-01 svg-icon-small">
                Action is required - Please call Customer Support at 1-800-543-6862.
            </li>
            <li class="order-deleted svg-icon-small">
                Order was deleted as a duplicate.
            </li>
        </ul>
    </div>
</div>
