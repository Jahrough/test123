<script language="JavaScript">
    var banner = new Array();
    banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/phone_batch_wizard_popup.html',width:'675',height:'400',name:'BatchWizard' }
    banner[1] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/permissible_use.html',width:'675',height:'400',name:'PermissableUse' }

    banner[2] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/phone_feedback_popup.html',width:'675',height:'500',name:'PhoneFeedback' }

    banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/batch_enhancements1_popup.html',width:'675',height:'400',name:'BatchEnhancements' }

    banner[4] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }

    banner[5] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/mfa_announcement1_popup.html',width:'625',height:'200',name:'MFA' }

    banner[6] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/social_media_locator_popup2.html',width:'600',height:'400',name:'SocialMediaLocator' }

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}

</script>

