<script language="JavaScript">
// Left Banner Info
var b0 = new Array (
    { image:'<TMPL_VAR NAME=IMGPATH>/main/gov_learning_resources.gif',url:'https://learn.lexisnexis.com/gov',width:'650',height:'425',name:'ComingSoon' }
    );
// Right Banner Info
var b1 = new Array (
    <TMPL_UNLESS DISABLE_LN_INV_NETWORK>
    { image:'<TMPL_VAR NAME=IMGPATH>/main/le_investigators_network_banner_3.gif',url:'',width:'725',height:'450',name:'InvestigatorNetwork' }
    <TMPL_ELSE>
    { image:'<TMPL_VAR NAME=IMGPATH>/main/real_time_phones_banner.gif',url:'<TMPL_VAR NAME=HTMLPATH>/real_time_phones_popup.html',width:'725',height:'450',name:'RealTimePhones' }
    </TMPL_UNLESS>
    );
</script>

