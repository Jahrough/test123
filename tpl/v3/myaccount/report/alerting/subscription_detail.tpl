<!-- begin:  $RCSfile: subscription_detail.tpl,v $ -->
<script>
    $j(function(){
        var headW = $j('td.headW');
        $j('legend').first().html(headW.text());
        headW.parent().next('tr').remove();
        headW.parent().remove();
        
        $j('.searchresultslink').addClass('bold myaccLnk');
        
        var last_row = $j('table.alert_detail > tbody > tr:last-child');
        if(last_row.children('td').length === 1){
            last_row.remove();
        }
        
        //TODO: Determine why I needed to add this...
        if(opener === null){
            opener = window;
        }
    });
</script>
<noscript>Your browser does not support JavaScript!</noscript>
<div><legend>&nbsp;</legend></div>
<table style="width:100%;">
    <TMPL_IF NAME="INFO_MSG">
        <tr>
            <td align="center">
                <div class="infonote">
                    <b><TMPL_VAR NAME="INFO_MSG"></b>
                </div>
            </td>
        </tr>
    </TMPL_IF>
    <tr>
        <td align="center">
            <TMPL_VAR NAME="SUBSCRIPTION">
            <br />
            <TMPL_IF NAME="READ_NOTICES">
                <a class="btn darkgrey-btn" href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
                   View Unread Notices
                </a>
            <TMPL_ELSE>
                <a class="btn darkgrey-btn" href="javascript:view_alert_detail('<TMPL_VAR NAME="SUBSCRIPTION_ID">', 1)">
                   View Read Notices
                </a>
            </TMPL_IF>
            <a class="btn darkgrey-btn" href="javascript:delete_alerts('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
               Delete Alert
            </a>

            <TMPL_UNLESS NAME="READ_NOTICES">
                <TMPL_IF NAME="SUBSCRIPTION_OWNER">
                    <a class="btn darkgrey-btn" href="javascript:edit_alert('<TMPL_VAR NAME="SUBSCRIPTION_ID">')">
                       Edit Alert
                    </a>
                </TMPL_IF>
            </TMPL_UNLESS>
            <br />
            <br />
        </td>
    </tr>
</table>
<!-- end:  $RCSfile: subscription_detail.tpl,v $ -->
