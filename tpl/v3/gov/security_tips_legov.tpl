<!-- begin security_tips_legov.tpl -->

<style type="text/css">
#securitytiptitle {
    font-size:8pt;
    font-weight:bold;
    width:147px;
    height:18px;
}
#securitytipcontent {
    font-size:8pt;
    margin-left:1px;
    height:150px;
}
</style>

<TMPL_INCLUDE NAME="security_tips_content.tpl">

<script language="JavaScript">

var maxtips = securetipsMsgArray.length;
var sectipnumber;

function show_security_tip(dir) {
    if (!window.XMLHttpRequest) { // IE6 Delay Needed
    setTimeout(function() { do_show_security_tip(dir); }, 100);
    } else {
    do_show_security_tip(dir);
    }
}

function do_show_security_tip(dir) {

    var randomnumber = Math.floor(Math.random() * maxtips);
    if (dir) {
    if (dir == "next") {
        sectipnumber ++;
        if (sectipnumber > (maxtips - 1)) {
        sectipnumber = 0;
        }
    } else if (dir == "prev") {
        sectipnumber --;
        if (sectipnumber < (0)) {
        sectipnumber = (maxtips - 1);
        }
    }
    } else {
    sectipnumber = randomnumber;
    }

    // Draw tip title
    document.getElementById('securitytiptitle').innerHTML = '<div style="position:relative;float:left;">Security Tip #'+ (sectipnumber + 1) + '</div><div style="position:relative;float:right;"><a href="javascript:void(0);" onClick="show_security_tip(\'prev\')"alt="Previous" title="Previous"><img src="<TMPL_VAR NAME=IMGPATH>/security_tip_prev.png" border="0"></a><a href="javascript:void(0);" onClick="show_security_tip(\'next\')"alt="Next" title="Next"><img src="<TMPL_VAR NAME=IMGPATH>/security_tip_next.png" border="0"></a></div>';

    // Draw tip content w/fade
    setOpacity('securitytipcontent',0);
    document.getElementById('securitytipcontent').innerHTML = securetipsMsgArray[sectipnumber] + '<br><br><a href="javascript:void(0);" onClick="show_all_tips();">Show All Security Tips</a><br>';
    fadeIn('securitytipcontent',100,2);
}

function show_legov_tips() {
    generic_tip('Security Tips','<div id="securitytiptitle"></div><div id="securitytipcontent"></div>',270);
    show_security_tip();
}

function show_all_tips() {
    var all_tip_content = '';
    for (var i=0; i<securetipsMsgArray.length; i++) {
    all_tip_content += (i+1) + ') ' + securetipsMsgArray[i] + '<br><br>';
    }
    generic_tip('Security Tips',all_tip_content,795);
}

</script>

<!-- End security_tips_legov.tpl -->

