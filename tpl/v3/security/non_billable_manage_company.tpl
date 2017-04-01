<!-- BEGIN security/non_billable_manage_company.tpl -->
<script type="text/javascript" src="<TMPL_VAR JSPATH>/company_admin.js"></script>
<script type="text/javascript">
    var img_path = "<TMPL_VAR IMGPATH>";
    var help_path = "<TMPL_VAR HLPPATH>";
    var vertical = "<TMPL_VAR APPLICATION_TYPE>";
    var help_path = 'http://dev.accurint.com/help/bps';
    function open_help_html(help_url, help_win) {
        general_win(help_path + '/' + help_url, 'help_win', 780, 490, 1, 1, 1, 1, 1, 0);
    }
    $j(function() {
        $j('a:contains("Help")').each(function() {
            if ($j(this).text() === 'Help'){$j(this).addClass('myaccLnk');}
        });
    });
</script>
<TMPL_IF NAME="ALERT_MSG">
    <div class="section-row" style="padding:0 15px 15px 15px;">
        <div class="warningmessage"><TMPL_VAR NAME="ALERT_MSG"></div>
    </div>
</TMPL_IF>
<div class="myaccount-section-title">Manage Company</div>
<div class="myaccount-containers">
    <div class="section">
        <div class="section-row">
            <table class="twoColTable">
                <tbody>
                    <tr>
                        <td width="100%" class="unifont1" valign="top">
                            <table border="0" cellpadding="1" cellspacing="0" width="100%" class="myaccountborder">
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="5" cellspacing="0" width="100%" class="myaccountalert">
                                            <tr>
                                                <td>
                                                    <b>Company Security:</b> <i>Changes made within this section will be applied to all users in your company.</i>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <div class="onecolumn" style="width:38%;">
                                <TMPL_INCLUDE ../manage_account_disable_features.tpl>
                                <!-- Case Connect -->
                                <TMPL_INCLUDE ../case_connect/admin_radio_block.tpl>
                            </div>
                        </td>
                        <TMPL_IF ERROR_MSG>
                            <script type="text/javascript">alert("<TMPL_VAR ERROR_MSG>\n");</script>
                        </TMPL_IF>
                        <TMPL_IF ERROR_MSG_LIST>
                            <script type="text/javascript">
                                var errortext = "";
                                <TMPL_LOOP ERROR_MSG_LIST>
                                    errortext += "<TMPL_VAR MSG>\n";
                                </TMPL_LOOP>
                                alert(errortext);
                            </script>
                        </TMPL_IF>
                    </tr>
                </tbody>
            </table>
            <div>
                <a class="btn red-btn" href="javascript:confirm_submit();">
                    Save Changes
                </a>
            </div>
        </div>
    </div>
</div>
<TMPL_INCLUDE NAME=myaccount_footer.tpl>
 <!-- END security/non_billable_manage_company.tpl -->
