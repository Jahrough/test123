<script language="JavaScript">
    var banner = new Array();
    banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/phone_batch_wizard_popup.html',width:'675',height:'400',name:'BatchWizard' }
    banner[1] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/permissible_use.html',width:'675',height:'400',name:'PermissableUse' }

    banner[2] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/phone_feedback_popup.html',width:'675',height:'500',name:'PhoneFeedback' }

    banner[3] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/col/link_id_banner_popup.html',width:'675',height:'500',name:'LexID' }

    banner[4] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}

</script>

