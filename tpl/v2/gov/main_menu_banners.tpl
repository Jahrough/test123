<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info

var banner = new Array();
banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/gov/accurint_mobile_popup.html',width:'600',height:'450',name:'MOBILE' }
banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/gov/ln_university_banner.html',width:'800',height:'525',name:'LNUniversity' }
banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' };
banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/mfa_announcement_gov_le_popup.html',width:'625',height:'200',name:'MFA' };

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

