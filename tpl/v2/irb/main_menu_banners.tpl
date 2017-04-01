<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info

var banner = new Array();
banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/irb/terms_and_conditions_popup.html',width:'650',height:'300',name:'TermsConditions' }
banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/bus_we_also_found_popup.html',width:'782',height:'275',name:'BUSWeAlsoFound' }
banner[2] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/irb/security_message1.html',width:'625',height:'400',name:'SecurityMessage' }
banner[3] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/irb/mfa_login_popup.html',width:'650',height:'350',name:'SecurityMessage' }

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

