<script language="JavaScript">
//0 : Left Banner Info
//1 : Right Banner Info

var banner = new Array();
banner[0] = 
    { image:'<TMPL_VAR NAME=IMGPATH>/main/bus_we_also_found_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/bus_we_also_found_popup.html',width:'782',height:'275',name:'BUSWeAlsoFound' }
banner[1] =
    { image:'<TMPL_VAR NAME=IMGPATH>/main/link_id_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/link_id_banner_popup.html',width:'675',height:'350',name:'LinkID' }

function open_banner(n){
    general_win( banner[n].url, banner[n].name ,banner[n].width, banner[n].height,0,0,0,1,1,0 );
}
</script>

