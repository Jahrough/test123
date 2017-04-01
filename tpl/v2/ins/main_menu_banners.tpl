<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info
    var banner = new Array();
    banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'600',height:'450',name:'SecurityMessage' };
    banner[1] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/ins/wash_vehicle_regs_popup.html',width:'600',height:'400',name:'WashVehicle' };
    banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/ins/next_steps_popup.html',width:'800',height:'550',name:'NextStepsPopup' };
    banner[3] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message3.html',width:'820',height:'740',name:'SecurityMessage' };
    banner[4] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/ins/social_media_locator_popup.html',width:'725',height:'500',name:'SocialMediaLocator' };
    banner[5] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/fraud_defense_network_popup.html',width:'725',height:'600',name:'FraudDefense' };
    banner[6] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/carrier_discovery_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/vehicle_locator_history_popup.html',width:'725',height:'525',name:'VehicleLocatorHistory' };

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}

</script>

