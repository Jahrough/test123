<!-- begin myaccount_disabled.tpl -->
    <table border="0" cellpadding="0" cellspacing="0" width="98%">
    <tr>
      <td align="center" class="pd15">
        <span class="message">
            <table>
              <tr>
                <TMPL_IF MFA_DISABLED>
                    <td nowrap align="center" valign="middle"><b><TMPL_VAR NAME=MFA_MESSAGE></b></td>
                <TMPL_ELSE>
                    <TMPL_IF DISABLED_MSG>
                      <TMPL_IF IRB>
                        <td valign="middle"><br><br>
                    The best way to access your billing information is by visiting the IRBsearch <a href="https://secure.irbsearch.com/mybilling" target="_blank"><b><u>Billing Login</u></b></a> page.  To set up your billing login information, please call customer service at 800-447-2112.
                    <br><br>
                    Once you have set up your billing username and password, you will be able to access your billing information 24 hours a day, 7 days a week. You can subscribe to receive daily, weekly, or monthly usage reports via email in an Adobe (PDF) or Excel format.
                    <br><br><br>
                    </td>
                      <TMPL_ELSE>
                    <td nowrap align="center" valign="middle"><b><TMPL_VAR NAME=DISABLED_MSG></b></td>
                      </TMPL_IF>
                    <TMPL_ELSE>
                    <td nowrap align="center" valign="middle"><b>Currently Not Available</b></td>
                    </TMPL_IF>
                </TMPL_IF>
              </tr>
            </table>
        </span>
      </td>
    </tr>
    </table>
<!-- end myaccount_disabled.tpl -->
