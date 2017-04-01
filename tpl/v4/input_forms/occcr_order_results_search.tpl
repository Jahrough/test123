<!-- ========================== OCCCR RESULTS PAGE ========================== -->
<link rel="stylesheet" type="text/css" media="screen" href="<TMPL_VAR NAME='CSSPATH'>/occcr.css">
<link rel="stylesheet" type="text/css" media="print" href="<TMPL_VAR NAME='CSSPATH'>/occcr_print.css" />
<!-- ============= JavaScript ============= -->
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/occcr_order_results.js"></script>
<script type="text/javascript" src="<TMPL_VAR NAME=JSPATH>/v4/jquery.downloadThis.js"></script>

<!-- ============= Top Notice ============= -->
<div id="CloseWindowIconId">
	<p>
        <span>
          <a href="javascript:window.close();">
            <img src="<TMPL_VAR NAME=IMGPATH>/ico_closeWindow.gif" title="Close" width="13" height="13" /> Close
          </a>
        </span>
    </p>
</div>
<div id="PrintDownloadIconId">
	<div class="additional-info">
        <a href="#"><button class="btn-actions btn print-icon svg-icon-tiny" type="button" data-placement="bottom" data-original-title="Print Results" aria-label="Print Results" onclick="show_print_download_dialog('','occcr_print');"></button></a>
        <span class="tooltip tooltip-35 hover">Print</span>
    </div>

    <div class="additional-info">
        <button class="btn-actions btn download-icon svg-icon-tiny" type="button" data-placement="bottom" data-original-title="Download" data-download-active-tab="" aria-label="Download" onclick="show_print_download_dialog('','occcr_download');"></button>
        <span class="tooltip tooltip-35 hover">Download</span>
    </div>
</div>
	
<br />
<div id="loading"> 
   <img src="<TMPL_VAR NAME=IMGPATH>/loader.gif" alt="In Progress Indicator"/> Loading...
</div>


<div id="content_area" style="padding: 3px;">
</div>

<div id="noresults" style="display: hidden;">
    <br /><br /><br /><br />
    <strong>No document found</strong>
</div>


<div id="main_menu_data" class="no-print">
<ul data-sid="myfavlinks" data-li-prefix="myfavs">
<ul data-sid="myfreqlinks" data-li-prefix="myfreqs">
<ul data-sid="mytasklinks" data-li-prefix="mytask"> </ul>
<ul data-sid="peoplelinks" data-li-prefix="people">
<ul data-sid="businesseslinks" data-li-prefix="business">
<ul data-sid="assetslinks" data-li-prefix="assets">
<ul data-sid="courtslinks" data-li-prefix="courts">
<ul data-sid="newslinks" data-li-prefix="news">
<ul data-sid="internationallinks" data-li-prefix="inter">
<ul data-sid="regcompliancelinks" data-li-prefix="regs">
<ul data-sid="directtosource" data-li-prefix="direct">
<ul data-sid="authserviceslinks" data-li-prefix="auth">
</div>

