<!-- begin security/non_billable_manage_company.tpl -->
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/prototype.js"></script>
    <script type="text/javascript" src="<TMPL_VAR JSPATH>/company_admin.js"></script>
    <script type="text/javascript">//<![CDATA[
      var img_path = "<TMPL_VAR IMGPATH>";
      var help_path = "<TMPL_VAR HLPPATH>";
      var vertical = "<TMPL_VAR APPLICATION_TYPE>";
      var help_path = 'http://dev.accurint.com/help/bps';
      function open_help_html(help_url, help_win) {
        general_win(help_path + '/' + help_url,'help_win',780,490,1,1,1,1,1,0);
      }

    //]]></script>
<table border="0" cellpadding="0" cellspacing="0" class="myaccountborder" width="880">
  <tr>
    <td align="center">
      <table border="0" cellpadding="0" cellspacing="0" width="856">
        <tr height="12">
          <td height="12" class="unifont1">&nbsp;</td>
        </tr>
      </table>
      <table border="0" cellpadding="0" cellspacing="0" width="856" class="myaccountbody">
        <tr>
          <td align="center">
            <table width="90%" cellpadding="0" cellspacing="0" border="0">
              <tr>
                <td align="center" class="myaccounttitle"><br>Manage Company<br><br></td>
              </tr>
<TMPL_IF ALERT_MSG>
              <tr>
                <td align="center" class="myaccounttitle"><TMPL_VAR NAME="ALERT_MSG"><br><br></td>
              </tr>
</TMPL_IF>
              <tr>
                <td>
                  <table border="0" width="50%" cellpadding="10" cellspacing="0">
                    <tr>
                      <td width="100%" class="unifont1" valign="top">
                        <table border="0" cellpadding="1" cellspacing="0" width="100%" class="myaccountborder">
                          <tr>
                            <td>
                              <table border="0" cellpadding="5" cellspacing="0" width="100%" class="myaccountalert">
                                <tr>
                                  <td class="smallfont1">
                                    <b>Company Security:</b><br/><br/>
                                    &nbsp;&nbsp;Changes made within this section will be
                                    <br/>
                                    &nbsp;&nbsp;applied to all users in your company.
                                    <br/>
                                  </td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                        </table>
                        <div class="onecolumn">
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
                  </table>
                </td>
              </tr>
              <tr>
                <td align"center">
                  <div id="BT_ROW" style="text-align:center;padding:10px;padding-bottom:20px">
                    <a href="javascript:confirm_submit();"><img height="29" width="100" alt="save"
                     src="<TMPL_VAR IMGPATH>/save_changes.gif" border="0"/></a>
                  </div>
                </td>
              </tr>              
            </table>
          </td>
        </tr>
      </table>
    </td>
  </tr>
</table>
<!-- end content space -->
<TMPL_INCLUDE myaccount_footer.tpl>
 <!-- end security/non_billable_manage_company.tpl -->
