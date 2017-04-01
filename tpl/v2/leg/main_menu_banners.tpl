<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info

var banner = new Array();
banner[0] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/leg/rt_phones_gateway_popup.html',width:'675',height:'275',name:'RTPhonesGateway' }
banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/leg/social_network_report_popup.html',width:'675',height:'450',name:'SocialNetworkReport' }
banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/leg/workplace_locator_popup.html',width:'675',height:'350',name:'WorkplaceLocator' }
banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/leg/police_records_popup.html',width:'675',height:'300',name:'PoliceRecords' }
banner[4] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/leg/mrr_records_popup.html',width:'675',height:'300',name:'MrrRecords' }
banner[5] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/social_media_locator_popup.html',width:'600',height:'400',name:'SocMediaLocator' };
banner[6] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/additional_death_records_popup.html',width:'775',height:'550',name:'AddlDeathRecords' };
banner[7] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }
banner[8] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/mfa_announcement1_popup.html',width:'625',height:'200',name:'MFA' }
function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

