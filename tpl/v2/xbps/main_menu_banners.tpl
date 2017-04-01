<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info

var banner = new Array();
banner[0] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/social_media_locator_popup2.html',width:'600',height:'400',name:'SocialMediaLocator' }
banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/peoplewise_popup.html',width:'500',height:'200',name:'PeopleWise' }
banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/learning_resource_center_popup.html',width:'500',height:'300',name:'LearningResource' }
banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }
banner[4] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/mfa_announcement1_popup.html',width:'625',height:'200',name:'MFA' }
banner[5] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/batch_enhancements2.popup.html',width:'650',height:'475',name:'BatchMessage' }
function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

