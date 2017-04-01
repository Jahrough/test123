<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info
    var banner = new Array();
    banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/prescription_history_reports_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/prescription_history_reports_popup.html',width:'600',height:'550',name:'PersonAlerts' }
    banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/batch_enhancements1_popup.html',width:'675',height:'400',name:'BatchEnhancements' }
    banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }
    banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/mfa_announcement1_popup.html',width:'625',height:'200',name:'MFA' }
    function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

