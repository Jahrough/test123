<TMPL_INCLUDE batch_head.tpl>
<!-- BEGIN append_fields.tpl -->

        <script src="<TMPL_VAR JSPATH>/pricing.js"></script>
        <script src="<TMPL_VAR JSPATH>/overlibmws_iframe.js"></script>

        <input type="hidden" name="EVENT" value="WPL/SAVE_APPEND_FIELDS"/>
        <input type="hidden" name="IS_BATCH_ADMIN" value="<TMPL_VAR BATCH_ADMIN>"/>

        <div align="center">
          <table border="0" width="600">
            <tr>
              <td width="600">
                <br/>
                <table border="0" cellpadding="0" cellspacing="0" width="600">
                  <tr>
                    <td class="wizardcounter" width="30%" align="left" nowrap="nowrap"><TMPL_INCLUDE NAME="title_line.tpl"></td>
              <td class="wizardcounter" width="30%" align="right"><b>Click the&nbsp;<a href="javascript:void(0);" onClick="var layerfgcolor = get_layer_colors('fgcolor');var layerbgcolor = get_layer_colors('bgcolor');return overlib('<br/>Click this button for more detail regarding a particular corresponding item.<br><br>', CAPTIONSIZE, 2, BORDER, 3, FGCOLOR, layerfgcolor, BGCOLOR, layerbgcolor, CGCOLOR, layerbgcolor, WIDTH, 300, BELOW, LEFT, STICKY, CAPTION, 'More Detail', CLOSECLICK, CLOSETEXT, '<img border=\'0\' width=\'16\' height=\'16\' alt=\'Close\' title=\'Close\' src=\'<TMPL_VAR IMGPATH>/closex.gif\'/>');"><img src="<TMPL_VAR IMGPATH>/info.gif" border="0" width="16" height="16"/></a>&nbsp;Button For More Detail&nbsp;</b></td>
                  </tr>
                  <tr>
                    <td class="wizardcounter" width="30%" align="left"><TMPL_INCLUDE NAME="../help_contact_line.tpl"></td>
                  </tr>
                </table>
              </td>
            </tr>
            <tr>
              <td>
                <h1 align="center" class="batchbanner">Append Fields</h1>
<TMPL_IF FREE_TRIAL_CREDITS>
                <div class="batchalert" align="center"><b>This account has <TMPL_VAR FREE_TRIAL_CREDITS> free records to process</b></div>
</TMPL_IF>
                <h4 align="center">WorkPlace Locator</h4>
                <p class="unifont2">LexisNexis WorkPlace Locator provides access to additional data that compliments other skip tracing efforts when trying to determine a debtor's current contact information.</p>
                <p class="unifont2">WorkPlace Locator delivers key contact information such as:</p>
                <ul class="discList">
                  <li>Current WorkPlace Name and Address</li>
                  <li>Up to 2 WorkPlace Phone Numbers</li>
                  <li>
                    Email Addresses (optional: additional charges apply)
                    <ul class="nodisc">
                      <li>
                        <strong>Include Email Addresses* (up to 3)</strong>
                        <ul>
                          <li><input name="EMAIL" id="EMAIL_YES" value="1" type="radio" <TMPL_IF EMAIL_YES>checked="checked" </TMPL_IF>/><label for="EMAIL_YES">Yes</label></li>
                          <li><input name="EMAIL" id="EMAIL_NO" value="0" type="radio"<TMPL_UNLESS EMAIL_YES>checked="checked" </TMPL_UNLESS>/><label for="EMAIL_NO">No</label></li>
                        </ul>
                      </li>
                      <li>* Additional Charges Apply</li>
                    </ul>
                  </li>
                  <TMPL_IF INTERNAL_COMPANY>
                    <li>Include Self-Reported Company Names (optional: no additional charges apply)
                        <ul>
                          <li><input name="INC_SELFCO" id="INC_SELFCO_YES" value="1" type="radio" <TMPL_IF INC_SELFCO_YES>checked="checked" </TMPL_IF>/><label for="INC_SELFCO_YES">Yes</label></li>
                          <li><input name="INC_SELFCO" id="INC_SELFCO_NO" value="0" type="radio"<TMPL_UNLESS INC_SELFCO_YES>checked="checked" </TMPL_UNLESS>/><label for="INC_SELFCO_NO">No</label></li>
                        </ul>
                    </li>
                  </TMPL_IF>
                </ul>
              </td>
            </tr>
          </table>
              <br/>

          <table border="0" cellpadding="0" cellspacing="0" width="608">
            <tr>
              <td width="304" valign="top">
              </td>
              <td width="50"><img src="<TMPL_VAR IMGPATH>/spacer.gif" width="50" height="1" border="0"/></td>

              <td width="250" class="smallfont1" valign="top" align="right"><br/><br/><a href="javascript:send_event('<TMPL_UNLESS SHOW_BATCH_UPDATE>WPL/VALIDATION<TMPL_ELSE>BATCH/SERVICES</TMPL_UNLESS>')"><img src="<TMPL_VAR IMGPATH>/BATCH/back.gif" width="87" height="29" border="0"/></a>&nbsp;&nbsp;&nbsp;<a href="javascript:send_event('WPL/SAVE_APPEND_FIELDS')" onClick="javascript:if(!validate()){return false;}"><img src="<TMPL_VAR IMGPATH>/BATCH/next.gif" width="87" height="29" border="0"/></a></td>
            </tr>
          </table>
          <br/>
        </div>

<TMPL_IF SHOW_BATCH_UPDATE>
<!-- Temporary Pricing Layer - Remove When Not Needed -->

<script>document.BATCH.CONTINUE_BATCH.focus();</script>
<!-- End Temporary Pricing Layer -->
</TMPL_IF>
<TMPL_IF ERROR_MESG>
        <script>alert('Please select an option or enter a count before proceeding.\n\n');</script>
</TMPL_IF>

        <input type="hidden" name="BATCH_PRE_TOTAL" value="0.00"/>

<!-- END append_fields.tpl -->
<TMPL_INCLUDE batch_footer.tpl>